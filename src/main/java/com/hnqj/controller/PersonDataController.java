package com.hnqj.controller;
import com.hnqj.services.UserinfoServices;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 个人资料控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/persondata")
public class PersonDataController extends BaseController{
    @Autowired
    UserinfoServices userinfoServices;
    //跳转到个人资料页面
    @RequestMapping(value = "/toPersonData.do")
    public String toPersonData(){
        return  "persondata";
    }

}
