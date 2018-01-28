package com.hnqj.controller;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 客服中心控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/helpd")
public class HelpController extends BaseController{
    //跳转到客服中心页面
    @RequestMapping(value = "/toHelpd.do")
    public String toHelpd(){
        return  "helpd_del";
    }
    //跳转到关于我们页面
    @RequestMapping(value = "/toAboutUs.do")
    public String toAboutUs(){
        return  "helpd_del2";
    }
}
