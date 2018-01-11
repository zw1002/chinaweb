package com.hnqj.controller;
import com.hnqj.core.ResultUtils;
import com.hnqj.model.Dealuidchild;
import com.hnqj.model.Playimg;
import com.hnqj.services.DealuidchildServices;
import com.hnqj.services.PlayimgServices;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 首页控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/index")
public class IndexController extends BaseController{
    @Autowired
    PlayimgServices playimgServices;
    @Autowired
    DealuidchildServices dealuidchildServices;

    /**
     * 获取首页轮播图
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getPlayImg.do")
    public String getPlayImg(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getPlayImg");
        try{
            List<Playimg> playimgList=playimgServices.selectPlayimgList();
            ResultUtils.write(response,playimgList);
        }catch (Exception e){
            logger.error("getPlayImg e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 交易动态
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getTransaction.do")
    public String getTransaction(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getTransaction");
        try{
            List<Dealuidchild> dealuidchildList=dealuidchildServices.selectDealuidchildList();
            ResultUtils.write(response,dealuidchildList);
        }catch (Exception e){
            logger.error("getTransaction e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }


}
