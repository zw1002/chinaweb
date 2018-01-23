package com.hnqj.controller;

import com.hnqj.core.PageData;
import com.hnqj.core.ResultUtils;
import com.hnqj.model.*;
import com.hnqj.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.util.*;

import static com.hnqj.core.ResultUtils.toDateJson;

/**
 * 通用接口控制层
 * 2018-01-11  niu
 */
@Controller
@RequestMapping("/general")
public class GeneralController extends BaseController{

    @Autowired
    DictServices dictServices;
    @Autowired
    WorksServices worksServices;
    @Autowired
    CollectionServices collectionServices;
    @Autowired
    MerchServices merchServices;
    @Autowired
    IntegralServices integralServices;
    @Autowired
    LeavemsgServices leavemsgServices;
    @Autowired
    DealuidchildServices dealuidchildServices;
    /**
     * 获取分类接口
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getGroupClass.do")
    public String getGroupClass(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getGroupClass");
        try
        {
            String typeName = request.getParameter("type")==null?"":request.getParameter("type");
            if(typeName.equals(""))
                ResultUtils.writeFailed(response);

            List<Map<String, String>> hashMaps=new ArrayList<>();

            List<Dict> relDicts = dictServices.selectFilterDictList(typeName);
            for(Dict dict:relDicts){
                Map<String, String> map = new HashMap<>();
                map.put("uid",dict.getUid());
                map.put("typename",dict.getKeyname());
                hashMaps.add(map);
            }
            ResultUtils.write(response,hashMaps);
        }
        catch(Exception ex){
            logger.error("getGroupClass e="+ex.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }
    /**
     * 获取作品详情接口
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getWorkDetails.do")
    public String getWorkDetails(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getGroupClass");
        try
        {
            String worksID = request.getParameter("uid")==null?"":request.getParameter("uid");
            if(worksID.equals(""))
                ResultUtils.writeFailed(response);
            //System.out.println(worksID);
            Works relWorks = worksServices.getWorksforId(worksID);
            if(relWorks!=null)
            {
                Map<String, Object> map = new HashMap<>();
                map.put("uid",relWorks.getUid());
                map.put("worksurl",relWorks.getWorksurl());
                map.put("worksname",relWorks.getWorksname());
                map.put("favcount",relWorks.getFavcount().toString());
                map.put("downcount",relWorks.getDowncount().toString());
                map.put("price",relWorks.getPrice().toString());
                map.put("uptime",relWorks.getUptime());
                map.put("dpinum",relWorks.getDpinum());
                map.put("imgsize",relWorks.getImgsize().toString());
                map.put("imgformart",relWorks.getImgformart());
                map.put("colrmodel",relWorks.getColrmodel());
                map.put("merchid",relWorks.getMerchid());
                Merch merchModel =merchServices.getMerchforId(relWorks.getMerchid());
                map.put("userid",merchModel.getUserinfouid());
                map.put("merchname",merchModel.getMerchname());
                map.put("workcount",merchModel.getWorksnums().toString());
                map.put("count",merchModel.getDealnums().toString());
                //根据积分查询等级
                Integral integral = integralServices.getIntegralforNum(merchModel.getDealnums());
                if(integral.getGrade() == 1){
                    map.put("grade","初级店铺");
                }else if(integral.getGrade() == 2){
                    map.put("grade","中级店铺");
                }else if(integral.getGrade() == 3){
                    map.put("grade","高级店铺");
                }else{
                    map.put("grade","特级店铺");
                }
                map.put("workremark",relWorks.getWorkremark());
                map.put("worklabel",relWorks.getWorklabel());
                ResultUtils.write(response,toDateJson(map));
            }
            else
                ResultUtils.writeFailed(response);
        }
        catch(Exception ex){
            logger.error("getWorkDetails e="+ex.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }
    /**
     * 添加或取消作品收藏
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/AddCancelWorksCollection.do")
    public String AddCancelWorksCollection(HttpServletRequest request, HttpServletResponse response) {
        logger.info("AddCancelWorksCollection");
        try {
            String userID = request.getParameter("userid");
            String worksID = request.getParameter("worksid");
            String type = request.getParameter("type");
            if (worksID == null || userID == null)
                ResultUtils.writeFailed(response);
            else {
                PageData pageData=new PageData();
                pageData.put("userid", userID);
                pageData.put("worksid", worksID);
                if (type.equals("1")) { //添加收藏
                    pageData.put("collectionuid", UUID.randomUUID().toString());
                    //SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
                    Date today = new Date();

                    pageData.put("collectiontime",new Timestamp(today.getTime()));//df.format()
                    pageData.put("collectionflag", "0");
                    if (collectionServices.addCollections(pageData) > 0)   //需要在作品表收藏数量+1  未做
                        ResultUtils.write(response,"收藏成功!");
                    else
                        ResultUtils.writeFailed(response);
                } else {//取消收藏
                    if (collectionServices.delCollectionsByUseridandWorksID(pageData) > 0)
                        ResultUtils.write(response,"取消收藏成功!"); //需要在作品表收藏数量+1  未做
                    else
                        ResultUtils.writeFailed(response);
                }
            }

        }
        catch(Exception ex){
            logger.error("AddCancelWorksCollection e="+ex.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }
    /**
     * 首页设计、摄影、婚秀、新品推荐接口（获取八个）
     通用于——设计、摄影等详情页面（不限），感兴趣推荐图片（获取四个）
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getRecommendWorks.do")
    public String getRecommendWorks(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getRecommendWorks");
        String type = request.getParameter("type") == null ? "" : request.getParameter("type");
        int offset = request.getParameter("offset") == null ? 0 : Integer.parseInt(request.getParameter("offset"));
        int count = request.getParameter("count") == null ? 0 : Integer.parseInt(request.getParameter("count"));
        List<Map<String, String>> hashMaps=new ArrayList<>();
        try{
            PageData pageData = new PageData();
            pageData.put("type",type);
            pageData.put("offset",offset);
            pageData.put("count",count);
            List<Works> worksList=worksServices.getWorksForTypeAndCount(pageData);
            for(Works works:worksList){
                Map<String, String> map = new HashMap<>();
                map.put("uid",works.getUid());
                map.put("worksname",works.getWorksname());
                map.put("samllurl",works.getSamllurl());
                hashMaps.add(map);
            }
            ResultUtils.write(response,hashMaps);
        }catch (Exception e){
            logger.error("getRecommendWorks e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 会员作品推荐
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getUserInfoWorks.do")
    public String getUserInfoWorks(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getUserInfoWorks");
        String merchId = request.getParameter("merchId") == null ? "" : request.getParameter("merchId");
        int offset = request.getParameter("offset") == null ? 0 : Integer.parseInt(request.getParameter("offset"));
        int count = request.getParameter("count") == null ? 0 : Integer.parseInt(request.getParameter("count"));
        List<Map<String, String>> hashMaps=new ArrayList<>();
        try{
            PageData pageData = new PageData();
            pageData.put("offset",offset);
            pageData.put("count",count);
            pageData.put("merchid",merchId);
            List<Works> worksList=worksServices.getWorksForMerchId(pageData);
            for(Works works:worksList){
                Map<String, String> map = new HashMap<>();
                map.put("uid",works.getUid());
                map.put("worksname",works.getWorksname());
                map.put("samllurl",works.getSamllurl());
                hashMaps.add(map);
            }
            ResultUtils.write(response,hashMaps);
        }catch (Exception e){
            logger.error("getUserInfoWorks e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 举报投诉
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/addComplaint.do")
    public String addComplaint(HttpServletRequest request, HttpServletResponse response) {
        logger.info("addComplaint");
        String merchId = request.getParameter("merchId") == null ? "" : request.getParameter("merchId");
        String workid = request.getParameter("workid") == null ? "" : request.getParameter("workid");
        String userid=getUser().getUid();
        String msgContent = request.getParameter("msgContent") == null ? "" : request.getParameter("msgContent");
        PageData pageData = new PageData();
        pageData.put("workid",workid);
        pageData.put("userid",userid);
        pageData.put("merchid",merchId);
        pageData.put("msgContent",msgContent);
        pageData.put("replycontent",0);
        pageData.put("msgtime",new Date());
        pageData.put("uid",UUID.randomUUID().toString());
        try{
            leavemsgServices.addLeavemsg(pageData);
            ResultUtils.writeSuccess(response);
        }catch (Exception e){
            logger.error("addComplaint e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 投诉受理
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/acceptComplaint.do")
    public String acceptComplaint(HttpServletRequest request, HttpServletResponse response) {
        logger.info("acceptComplaint");
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        try{
            leavemsgServices.updateLeavemsgStatu(uid);
            ResultUtils.writeSuccess(response);
        }catch (Exception e){
            logger.error("acceptComplaint e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 交易、婚秀排行榜
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/tradeRankings.do")
    public String tradeRankings(HttpServletRequest request, HttpServletResponse response) {
        logger.info("tradeRankings");
        String type = request.getParameter("type") == null ? "" : request.getParameter("type");
        int offset = request.getParameter("offset") == null ? 0 : Integer.parseInt(request.getParameter("offset"));
        int count = request.getParameter("count") == null ? 0 : Integer.parseInt(request.getParameter("count"));
        List<Map<String, String>> hashMaps=new ArrayList<>();
        try{
            PageData pageData = new PageData();
            pageData.put("type",type);
            pageData.put("offset",offset);
            pageData.put("count",count);
            List<Dealuidchild> dealuidchildList=dealuidchildServices.getDealuidchildForRankings(pageData);
            for(Dealuidchild dealuidchild:dealuidchildList){
                Map<String, String> map = new HashMap<>();
                hashMaps.add(map);
            }
            ResultUtils.write(response,hashMaps);
        }catch (Exception e){
            logger.error("getRecommendWorks e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }
}
