package com.hnqj.controller;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 设计控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/seachs")
public class SeachsController extends BaseController{
//    @Autowired
//    WorksServices worksServices;
    //跳转到搜索
    @RequestMapping(value = "/toSeachs.do")
    public String toSeachs(HttpServletRequest request, Model model){
        String seachTxt = request.getParameter("seachTxt") == null ? "" : request.getParameter("seachTxt");
        model.addAttribute("seachTxt", seachTxt);//搜索内容
        return  "seachs";
    }

}
