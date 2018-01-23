package com.hnqj.controller;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 提现管理控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/withdrawals")
public class WithdrawalsController extends BaseController{
    //跳转到我的作品页面
    @RequestMapping(value = "/toWithdrawals.do")
    public String toWithdrawals(HttpServletRequest request, Model model){
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        model.addAttribute("uid", uid);//会员Id传到页面
        return  "withdrawals";
    }

}
