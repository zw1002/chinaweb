package com.hnqj.controller;

import com.hnqj.core.PageData;
import com.hnqj.core.ResultUtils;
import com.hnqj.model.Dict;
import com.hnqj.model.Works;
import com.hnqj.services.CollectionServices;
import com.hnqj.services.DictServices;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

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
            String typeName = request.getParameter("type");
            if(typeName==null)
                ResultUtils.writeFailed(response);
            System.out.println(typeName);
            List<Dict> relDicts = dictServices.selectFilterDictList(typeName);
            ResultUtils.write(response,relDicts);
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
            String worksID = request.getParameter("uid");
            if(worksID==null)
                ResultUtils.writeFailed(response);
            System.out.println(worksID);
            Works relWorks = worksServices.getWorksforId(worksID);
            ResultUtils.write(response,relWorks);
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
                    if (collectionServices.addCollection(pageData) > 0)
                        ResultUtils.writeSuccess(response);
                    else
                        ResultUtils.writeFailed(response);
                } else {//取消收藏
                    if (collectionServices.delCollectionByUseridandWorksID(pageData) > 0)
                        ResultUtils.writeSuccess(response);
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
     * 设计等推荐接口
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getRecommendWorks.do")
    public String getRecommendWorks(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getRecommendWorks");
        String type = request.getParameter("type") == null ? "" : request.getParameter("type");
        String count = request.getParameter("count") == null ? "" : request.getParameter("count");
        List<Map<String, String>> hashMaps=new ArrayList<>();
        try{
            PageData pageData = new PageData();
            pageData.put("type",type);
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
}
