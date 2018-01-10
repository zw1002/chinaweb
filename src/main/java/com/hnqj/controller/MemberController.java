package com.hnqj.controller;
import com.hnqj.services.UserinfoServices;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 会员中心控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/member")
public class MemberController extends BaseController{
    @Autowired
    UserinfoServices userinfoServices;
    //跳转到会员中心页面
    @RequestMapping(value = "/toMember.do")
    public String toMember(){
        return  "member";
    }

}
