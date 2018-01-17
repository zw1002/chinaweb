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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.hnqj.core.ResultUtils.toDateJson;

/**
 *个人中心控制层
 * 2018-01-15  张威
 */
@Controller
@RequestMapping("/personalcenter")
public class PersonalCenterController extends  BaseController{
    @Autowired
    CollectionServices collectionServices;
    @Autowired
    WorksServices worksServices;
    @Autowired
    DealuidchildServices dealuidchildServices;
    @Autowired
    UserinfoServices userinfoServices;
    @Autowired
    MerchServices merchServices;
    //跳转到开店页面
    @RequestMapping(value = "/toShop.do")
    public String toShop(){
        return  "shop";
    }
    //跳转到收藏页面
    @RequestMapping(value = "/toCollection.do")
    public String toCollection(){
        return  "collection_2";
    }
    //跳转到交易页面
    @RequestMapping(value = "/toTransaction.do")
    public String toTransaction(){
        return  "transaction";
    }
    //跳转到提现页面
    @RequestMapping(value = "/toWithdrawals.do")
    public String toWithdrawals(){
        return  "transaction";
    }

    /**
     * 完善个人信息
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/improveInformation.do")
    public String improveInformation(HttpServletRequest request, HttpServletResponse response) {
        logger.info("improveInformation");
        String merchname = request.getParameter("merchname") == null ? "" : request.getParameter("merchname");
        String userinfouid = request.getParameter("userinfouid") == null ? "" : request.getParameter("userinfouid");
        String bondvalue = request.getParameter("bondvalue") == null ? "" : request.getParameter("bondvalue");
        String remark = request.getParameter("remark") == null ? "" : request.getParameter("remark");
        return null;
    }
    /**
     * 开店申请
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/shop.do")
    public String shop(HttpServletRequest request, HttpServletResponse response) {
        logger.info("shop");
        String merchname = request.getParameter("merchname") == null ? "" : request.getParameter("merchname");
        String userinfouid = request.getParameter("userinfouid") == null ? "" : request.getParameter("userinfouid");
        String bondvalue = request.getParameter("bondvalue") == null ? "" : request.getParameter("bondvalue");
        String remark = request.getParameter("remark") == null ? "" : request.getParameter("remark");
        return null;
    }

    /**
     * 获取个人收藏作品
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getCollectionData.do")
    public String getCollectionData(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getCollectionData");
        try{
            //当前页面
            int pagenumber = request.getParameter("pagenumber") == null ? 0 : Integer.parseInt(request.getParameter("pagenumber"));
            String userid=getUser().getUid();
            List<Collections> list=collectionServices.selectCollectionsByUserId(userid);
            List<Map<String, Object>> hashMaps=new ArrayList<>();
            for(Collections collection:list){
                Map<String, Object> map = new HashMap<>();
                map.put("worksid",collection.getWorksid());
                Works works=worksServices.getWorksforId(collection.getWorksid());
                map.put("worksname",works.getWorksname());
                map.put("worksurl",works.getSamllurl());
                map.put("price",works.getPrice());
                map.put("worklabel",works.getWorklabel());
                map.put("collectiontime",collection.getCollectiontime());
                hashMaps.add(map);
            }
            ResultUtils.write(response,hashMaps);
        }catch (Exception e){
            logger.error("getCollectionData e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 取消收藏
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/delCollection.do")
    public String delCollection(HttpServletRequest request, HttpServletResponse response) {
        logger.info("delCollection");
        String workid = request.getParameter("workid") == null ? "" : request.getParameter("workid");
        String userid=getUser().getUid();
        PageData pageData=new PageData();
        pageData.put("workid",workid);
        pageData.put("userid",userid);
        try{
            collectionServices.delCollections(pageData);
            ResultUtils.writeSuccess(response);
        }catch(Exception e){
            logger.error("delCollection e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 获取个人已出售作品
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getAlreadySoldWorks.do")
    public String getAlreadySoldWorks(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getAlreadySoldWorks");
        try{
            String userid=getUser().getUid();
            List<Dealuidchild> dealuidchildList=dealuidchildServices.getDealuidchildForWorksId(userid);
            List<Map<String, Object>> hashMaps=new ArrayList<>();
            for(Dealuidchild dealuidchild:dealuidchildList){
                Map<String, Object> map = new HashMap<>();
                map.put("worksid",dealuidchild.getWorksid());
                Works works=worksServices.getWorksforId(dealuidchild.getWorksid());
                map.put("worksname",works.getWorksname());
                map.put("worksurl",works.getSamllurl());
                map.put("price",works.getPrice());
                map.put("worklabel",works.getWorklabel());
                map.put("addtime",dealuidchild.getAddtime());
                Userinfo userinfo=userinfoServices.getUserinfoforId(dealuidchild.getPayuserid());
                map.put("payUserPic",userinfo.getUsrpicurl());
                map.put("payUsername",userinfo.getFristname());
                hashMaps.add(map);
            }
            ResultUtils.write(response,toDateJson(hashMaps));
        }catch(Exception e){
            logger.error("getAlreadySoldWorks e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 获取个人已购买作品
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getAlreadyPurchasedWorks.do")
    public String getAlreadyPurchasedWorks(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getAlreadyPurchasedWorks");
        try{
            String userid=getUser().getUid();
            List<Dealuidchild> dealuidchildList=dealuidchildServices.getDealuidchildForPayUserId(userid);
            List<Map<String, Object>> hashMaps=new ArrayList<>();
            for(Dealuidchild dealuidchild:dealuidchildList){
                Map<String, Object> map = new HashMap<>();
                map.put("worksid",dealuidchild.getWorksid());
                Works works=worksServices.getWorksforId(dealuidchild.getWorksid());
                map.put("worksname",works.getWorksname());
                map.put("worksurl",works.getSamllurl());
                map.put("price",works.getPrice());
                map.put("worklabel",works.getWorklabel());
                map.put("addtime",dealuidchild.getAddtime());
                Merch merch=merchServices.getMerchforId(works.getMerchid());
                Userinfo userinfo=userinfoServices.getUserinfoforId(merch.getUserinfouid());
                map.put("payUserPic",userinfo.getUsrpicurl());
                map.put("payUsername",userinfo.getFristname());
                hashMaps.add(map);
            }
            ResultUtils.write(response,toDateJson(hashMaps));
        }catch(Exception e){
            logger.error("getAlreadyPurchasedWorks e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }
}
