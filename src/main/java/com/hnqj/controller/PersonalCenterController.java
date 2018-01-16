package com.hnqj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *个人中心控制层
 * 2018-01-15  张威
 */
@Controller
@RequestMapping("/personalcenter")
public class PersonalCenterController extends  BaseController{
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
}
