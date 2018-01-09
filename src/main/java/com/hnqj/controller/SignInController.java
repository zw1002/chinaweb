package com.hnqj.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 注册登录控制层
 * 2018-01-09  张威
 */
@Controller
@RequestMapping("/signin")
public class SignInController extends BaseController{

    //跳转到注册页面
    @RequestMapping(value = "/index.do")
    public String index(){
        return  "index";
    }

    //跳转到注册页面
    @RequestMapping(value = "/register.do")
    public String register(){
        logger.debug("wwwwwwwwwwwwwwwwwwwww");
        return  "regist";
    }
    //跳转到登录页面
    @RequestMapping(value = "/login.do")
    public String login(){
        return  "login";
    }

}
