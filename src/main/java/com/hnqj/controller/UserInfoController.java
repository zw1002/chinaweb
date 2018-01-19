package com.hnqj.controller;
import com.hnqj.core.PageData;
import com.hnqj.core.ResultUtils;
import com.hnqj.model.FocusOther;
import com.hnqj.model.Userinfo;
import com.hnqj.services.FocusOtherServices;
import com.hnqj.services.UserinfoServices;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 会员信息控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/userinfo")
public class UserInfoController extends BaseController{
    @Autowired
    UserinfoServices userinfoServices;
    @Autowired
    FocusOtherServices focusOtherServices;

    /**
     * 根据ID获取会员信息
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getUserInfo.do")
    public String getUserInfo(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getUserInfo");
        try{
            String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
            Userinfo userinfo=userinfoServices.getUserinfoforId(uid);
            ResultUtils.write(response,userinfo);
        }catch (Exception e){
            logger.error("getUserInfo e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 获取用户被关注量
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getUserFocus.do")
    public String getUserFocus(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getUserFocus");
        try{
            String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
            List<FocusOther> focusOtherList=focusOtherServices.getFocusOtherForFocusId(uid);
            Map<String, Object> map = new HashMap<>();
            map.put("count",focusOtherList.size());
            ResultUtils.write(response,map);
        }catch (Exception e){
            logger.error("getUserFocus e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }

    /**
     * 获取用户关注信息
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getUserFocusOthers.do")
    public String getUserFocusOthers(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getUserFocusOthers");
        try{
            int offset = request.getParameter("offset") == null ? 0 : Integer.parseInt(request.getParameter("offset"));
            int count = request.getParameter("count") == null ? 0 : Integer.parseInt(request.getParameter("count"));
            String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
            PageData pageData = new PageData();
            pageData.put("userid",uid);
            pageData.put("offset",offset);
            pageData.put("count",count);
            List<FocusOther> focusOtherList=focusOtherServices.getFocusOtherForUserId(pageData);
            List<Map<String, Object>> hashMaps=new ArrayList<>();
            for(FocusOther focusOther:focusOtherList){
                Map<String, Object> map = new HashMap<>();
                Userinfo userinfo=userinfoServices.getUserinfoforId(focusOther.getFocusUserid());
                map.put("userpic",userinfo.getUsrpicurl());
                map.put("username",userinfo.getFristname());
                hashMaps.add(map);
            }
            ResultUtils.write(response,hashMaps);
        }catch (Exception e){
            logger.error("getUserFocusOthers e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }
}
