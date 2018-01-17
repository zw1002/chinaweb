package com.hnqj.controller;
import com.hnqj.core.ResultUtils;
import com.hnqj.model.Merch;
import com.hnqj.model.Userinfo;
import com.hnqj.services.MerchServices;
import com.hnqj.services.UserinfoServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 店铺信息控制层
 * 2018-01-10  张威
 */
@Controller
@RequestMapping("/merch")
public class MerchController extends BaseController{
    @Autowired
    UserinfoServices userinfoServices;
    @Autowired
    MerchServices merchServices;

    /**
     * 根据ID获取店铺信息
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/getMerchData.do")
    public String getMerchData(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getMerchData");
        try{
            String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
            Merch merch=merchServices.getMerchForUserId(uid);
            ResultUtils.write(response,merch);
        }catch (Exception e){
            logger.error("getUserInfo e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }
}
