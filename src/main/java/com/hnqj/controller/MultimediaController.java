package com.hnqj.controller;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 道具控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/multimedia")
public class MultimediaController extends BaseController{
    @Autowired
    WorksServices worksServices;
    //跳转到设计页面
    @RequestMapping(value = "/toMultimedia.do")
    public String toMultimedia(){
        return  "multimedia";
    }
    //跳转到设计明细页面
    @RequestMapping(value = "/toMultimediaDel.do")
    public String toMultimediaDel(){
        return  "media_del";
    }

}
