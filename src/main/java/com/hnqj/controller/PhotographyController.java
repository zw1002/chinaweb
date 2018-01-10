package com.hnqj.controller;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 摄影图库控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/photography")
public class PhotographyController extends BaseController{
    @Autowired
    WorksServices worksServices;
    //跳转到设计页面
    @RequestMapping(value = "/toPhotography.do")
    public String toPhotography(){
        return  "photography";
    }
    //跳转到设计明细页面
    @RequestMapping(value = "/toPhotographyDel.do")
    public String toPhotographyDel(){
        return  "photo_del";
    }

}
