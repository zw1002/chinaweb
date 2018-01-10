package com.hnqj.controller;
import com.hnqj.core.PageData;
import com.hnqj.core.ResultUtils;
import com.hnqj.model.Account;
import com.hnqj.model.Userinfo;
import com.hnqj.services.AccountServices;
import com.hnqj.services.UserinfoServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import static com.hnqj.core.EncodeUtil.encodeMD5;

/**
 * 注册登录控制层
 * 2018-01-09  张威
 */
@Controller
@RequestMapping("/signin")
public class SignInController extends BaseController{
    @Autowired
    AccountServices accountServices;
    @Autowired
    UserinfoServices userinfoServices;
    //跳转到首页
    @RequestMapping(value = "/index.do")
    public String index(){
        return  "index";
    }

    //跳转到注册页面
    @RequestMapping(value = "/register.do")
    public String register(){
        return  "regist";
    }
    //跳转到登录页面
    @RequestMapping(value = "/login.do")
    public String login(){
        return  "login";
    }

    /**
     * 注册提交
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/registerSubmit.do")
    public String registerSubmit(HttpServletRequest request, HttpServletResponse response) {
        logger.info("registerSubmit");
        String fristname = request.getParameter("fristname") == null ? "" : request.getParameter("fristname");
        String account = request.getParameter("account") == null ? "" : request.getParameter("account");
        String password = request.getParameter("password") == null ? "" : request.getParameter("password");
        String userid=UUID.randomUUID().toString();
        //账户表插入信息
        PageData accountPageData = new PageData();
        accountPageData.put("account",account);
        accountPageData.put("passwd",encodeMD5(password));
        accountPageData.put("uid",UUID.randomUUID().toString());
        accountPageData.put("userid",userid);
        accountPageData.put("state",1);
        accountPageData.put("usemobile",1);
        accountPageData.put("usertype",0);//关联用户类型 0会员 1后台用户
        //插入会员信息
        PageData userpageData=new PageData();
        userpageData.put("uid",userid);
        userpageData.put("fristname",fristname);
        try{
            accountServices.addAccount(accountPageData);
            userinfoServices.addUserinfo(userpageData);
            ResultUtils.writeSuccess(response);
        }catch(Exception e){
            logger.error("registerSubmit e="+e.getMessage());
            ResultUtils.writeFailed(response);
        }
        return null;
    }
    /**
     * 登录
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/loginSubmit.do")
    public String loginSubmit(HttpServletRequest request, HttpServletResponse response) {
        logger.info("registerSubmit");
        String account = request.getParameter("account") == null ? "" : request.getParameter("account");
        String password = request.getParameter("password") == null ? "" : request.getParameter("password");
        String passwd=encodeMD5(password);
        PageData pageData = new PageData();
        pageData.put("account",account);
        pageData.put("passwd",passwd);
        Userinfo userinfo=userinfoServices.getUserInfo(pageData);
        Map<String, String> map = new HashMap<>();
        if (userinfo!=null) {
            request.getSession().setAttribute("userinfo",userinfo);
            map.put("state", "true");
            map.put("msg", "登录成功");
        }else{
            map.put("state", "false");
            map.put("msg", "账号或密码错误!登录失败!");
        }
        ResultUtils.write(response,map);
        return null;
    }
    /**
     * 校验账号唯一性
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/checkAccount.do")
    public String checkAccount(HttpServletRequest request, HttpServletResponse response) {
        logger.info("checkAccount");
        String acount = request.getParameter("account") == null ? "" : request.getParameter("account");
        Account account=accountServices.getAccountforAccount(acount);
        if(account != null){
            ResultUtils.write(response,false);
        }else{
            ResultUtils.write(response,true);
        }
        return null;
    }
    /**
     * 完善用户信息
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/perfectUserInfo.do")
    public String perfectUserInfo(HttpServletRequest request, HttpServletResponse response) {
        logger.info("perfectUserInfo");
        return null;
    }

}