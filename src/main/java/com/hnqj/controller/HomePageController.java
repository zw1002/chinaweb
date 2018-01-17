package com.hnqj.controller;
import com.hnqj.core.PageData;
import com.hnqj.core.ResultUtils;
import com.hnqj.model.Works;
import com.hnqj.services.UserinfoServices;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 会员空间控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/homepage")
public class HomePageController extends BaseController{
    @Autowired
    UserinfoServices userinfoServices;
    @Autowired
    WorksServices worksServices;
    //跳转到会员中心页面
    @RequestMapping(value = "/toHomepage.do")
    public String toHomepage(HttpServletRequest request, Model model){
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        model.addAttribute("uid", uid);//会员Id传到页面
        return  "homepage";
    }

    /**
     * 获取会员作品
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getMerchData.do")
    public String getMerchData(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getMerchData");
        try{
            int offset = request.getParameter("offset") == null ? 0 : Integer.parseInt(request.getParameter("offset"));
            int count = request.getParameter("count") == null ? 0 : Integer.parseInt(request.getParameter("count"));
            String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
            PageData pageData = new PageData();
            pageData.put("userid",uid);
            pageData.put("offset",offset);
            pageData.put("count",count);
            List<Works> worksList=worksServices.getWorksForUserId(pageData);
            ResultUtils.write(response,worksList);
        }catch (Exception e){
            logger.error("getMerchData e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

}
