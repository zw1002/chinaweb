package com.hnqj.controller;
import com.hnqj.core.PageData;
import com.hnqj.core.ResultUtils;
import com.hnqj.services.UserinfoServices;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.DefaultMultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
    //查询用户日志信息persondata/getUserOperatLog.do
    @RequestMapping(value = "/getUserOperatLog.do")
    public String getUserOperatLog(HttpServletRequest request, HttpServletResponse response)
    {
        String strVal="";
        logger.info("getUserOperatLog");
        String logType = request.getParameter("logType") == null ? "1" : request.getParameter("logType");
        String logStime = request.getParameter("logStime") == null ? "" : request.getParameter("logStime");
        String logEtime = request.getParameter("logEtime") == null ? "" : request.getParameter("logEtime");
        String page = request.getParameter("page") == null ? "1" : request.getParameter("page");
        String limit = request.getParameter("limit") == null ? "10" : request.getParameter("limit");
        PageData pageData=new PageData();
//        pageData.put("uid", UUID.randomUUID().toString());
//        pageData.put("merchname",merchname);
//        pageData.put("userinfouid",getUser().getUid());
//        pageData.put("builddatetime",new Date());
//        pageData.put("bondvalue",0);
//        pageData.put("merchscroe",0);
//        pageData.put("statu",0);
//        pageData.put("worksnums",0);
//        pageData.put("dealnums",0);
//        pageData.put("remark",merchremark);

        try{
//            merchServices.addMerch(pageData);
            strVal="{\"code\":0,\"msg\":\"\",\"count\":100,\"data\":[]}";
            ResultUtils.write(response,strVal);
        }catch (Exception e){
            logger.error("getUserOperatLog e="+e.getMessage());
            strVal="{\"code\":1,\"msg\":\"\",\"count\":0,\"data\":[]}";
            ResultUtils.write(response,strVal);
        }
        return null;
    }

    //重置密码persondata/restPassword.do
    @RequestMapping(value = "/restPassword.do")
    public String restPassword(HttpServletRequest request, HttpServletResponse response)
    {
        String strVal="";
        logger.info("restPassword");
        String newPassword = request.getParameter("newPassword") == null ? "" : request.getParameter("newPassword");
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        PageData pageData=new PageData();
        pageData.put("uid", uid);
        pageData.put("password",newPassword);

        try{
//            merchServices.addMerch(pageData);

            ResultUtils.writeSuccess(response);
        }catch (Exception e){
            logger.error("restPassword e="+e.getMessage());

            ResultUtils.write(response,"密码重置失败,稍后重试");
        }
        return null;
    }

    //用户信息认证persondata/userSfzUp.do
    @RequestMapping(value = "/userSfzUp.do")
    public String userSfzUp(HttpServletRequest request, HttpServletResponse response)
    {
        String strVal="";
        logger.info("userSfzUp");
        String upFile = request.getParameter("upFile") == null ? "" : request.getParameter("upFile");
        if(upFile.equals("first"))
        {//保存图片，并返回图片路径

            MultiValueMap<String, MultipartFile> multFiles = ((DefaultMultipartHttpServletRequest)request).getMultiFileMap();
            List<MultipartFile> files =multFiles.get("file");
            String HOMEPATH = request.getSession().getServletContext().getRealPath("/") + "static/uploadImg/sfrzPhoto/";
            // 如果目录不存在则创建
            File uploadDir = new File(HOMEPATH);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            String sfzImgUrl="";
            for(MultipartFile file:files){//读取文件并上保存
                try{
                    String myFileName = file.getOriginalFilename();
//                    SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
//                    + df.format(new Date())
                    myFileName= getUser().getUid()+myFileName;
                    //long fileSize = file.getSize();
                    //保存文件
                    File localFile = new File(HOMEPATH + myFileName);
                    file.transferTo(localFile);
                    sfzImgUrl= "/static/uploadImg/sfrzPhoto/"+myFileName;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            ResultUtils.write(response,"{\"code\":0,\"msg\":\"上传成功!\",\"data\":\""+sfzImgUrl+"\"}");//
            return  null;
        }
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        String zxname = request.getParameter("zsname") == null ? "" : request.getParameter("zsname");
        String sfzh = request.getParameter("sfzcode") == null ? "" : request.getParameter("sfzcode");
        String sfzdate = request.getParameter("sfzdate") == null ? "" : request.getParameter("sfzdate");
        String sex = request.getParameter("sex") == null ? "" : request.getParameter("sex");
        String sfzImgUrl=request.getParameter("upload") == null ? "" : request.getParameter("upload");

//        PageData pageData=new PageData();
//        pageData.put("uid", uid);
//        pageData.put("password",newPassword);

        try{
//            merchServices.addMerch(pageData);

            ResultUtils.writeSuccess(response);
        }catch (Exception e){
            logger.error("userSfzUp e="+e.getMessage());

            ResultUtils.write(response,"认证信息保存失败,请重试");
        }
        return null;
    }
    //用户信息绑定persondata/userInfoBind.do
    @RequestMapping(value = "/userInfoBind.do")
    public String userInfoBind(HttpServletRequest request, HttpServletResponse response)
    {
        String strVal="";
        logger.info("userInfoBind");
        String newPassword = request.getParameter("newPassword") == null ? "" : request.getParameter("newPassword");
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        PageData pageData=new PageData();
        pageData.put("uid", uid);
        pageData.put("password",newPassword);

        try{
//            merchServices.addMerch(pageData);

            ResultUtils.writeSuccess(response);
        }catch (Exception e){
            logger.error("userInfoBind e="+e.getMessage());

            ResultUtils.write(response,"密码重置失败,稍后重试");
        }
        return null;
    }

    //用户信息绑定persondata/userBaseInfo.do
    @RequestMapping(value = "/userBaseInfo.do")
    public String userBaseInfo(HttpServletRequest request, HttpServletResponse response)
    {
        String strVal="";
        logger.info("userBaseInfo");
        String newPassword = request.getParameter("newPassword") == null ? "" : request.getParameter("newPassword");
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        PageData pageData=new PageData();
        pageData.put("uid", uid);
        pageData.put("password",newPassword);

        try{
//            merchServices.addMerch(pageData);

            ResultUtils.writeSuccess(response);
        }catch (Exception e){
            logger.error("userBaseInfo e="+e.getMessage());

            ResultUtils.write(response,"密码重置失败,稍后重试");
        }
        return null;
    }
}
