package com.hnqj.controller;
import com.hnqj.services.UserinfoServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 会员空间控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/homepage")
public class HomePageController extends BaseController{
    @Autowired
    UserinfoServices userinfoServices;
    //跳转到会员中心页面
    @RequestMapping(value = "/toHomepage.do")
    public String toHomepage(){
        return  "homepage";
    }

}
