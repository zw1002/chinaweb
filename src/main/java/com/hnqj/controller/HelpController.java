package com.hnqj.controller;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 求图控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/help")
public class HelpController extends BaseController{
    @Autowired
    WorksServices worksServices;
    //跳转到设计页面
    @RequestMapping(value = "/toHelp.do")
    public String toHelp(){
        return  "help";
    }
    //跳转到设计明细页面
    @RequestMapping(value = "/toHelpDel.do")
    public String toHelpDel(){
        return  "helpd_del";
    }

}
