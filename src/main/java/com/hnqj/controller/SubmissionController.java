package com.hnqj.controller;

import com.hnqj.core.PageData;
import com.hnqj.core.ResponseUtil;
import com.hnqj.core.ResultUtils;
import com.hnqj.model.Graph;
import com.hnqj.model.Works;
import com.hnqj.services.GraphServices;
import com.hnqj.services.SubmissionServices;
import com.hnqj.services.UserinfoServices;
import com.hnqj.services.WorksServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import static com.hnqj.core.ResultUtils.toDateTimeJson;

@Controller
@RequestMapping("/submission")
public class SubmissionController extends  BaseController {
    @Autowired
    GraphServices graphServices;
    @Autowired
    SubmissionServices submissionServices;
    @Autowired
    UserinfoServices userinfoServices;

    /**
     * 跳转到投稿页面
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/toTouGao.do")
    public String toTouGao(HttpServletRequest request, Model model){
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        model.addAttribute("uid",uid);//任务ID
        return  "tougao";
    }

    /**
     * 获取任务详情
     * @param request
     * @return
     */
    @RequestMapping(value = "/getGraphByUid.do")
    public String getGraphByUid(HttpServletRequest request, HttpServletResponse response){
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        try{
            Graph graph=graphServices.getGraphforId(uid);
            Map<String, Object> map = new HashMap<>();
            map.put("uid",graph.getUid());
            map.put("graphtitle",graph.getGraphtitle());
            map.put("addtime",graph.getAddtime());
            map.put("favcount",graph.getFavcount());
            map.put("graphclassification",graph.getGraphclassification());
            map.put("graphdetail",graph.getGraphdetail());
            map.put("graphtype",graph.getGraphtype());
            map.put("moneyreward",graph.getMoneyreward());
            map.put("ticknums",graph.getTicknums());
            map.put("username",userinfoServices.getUserinfoforId(graph.getUserid()).getFristname());
            ResultUtils.write(response,map);
        }catch (Exception e) {
            ResultUtils.writeFailed(response);
        }
        return  null;
    }
    /**
     * 文件下载
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/downloadFile.do")
    public String downloadFile(HttpServletRequest request, HttpServletResponse response) {
        String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
        String HOMEPATH = request.getSession().getServletContext().getRealPath("/");
        try {
            Graph graph=graphServices.getGraphforId(uid);
            // 首先清理缓冲区的内容
            response.reset();
            //String destFileName = works.getWorksname()+works.getImgformart();//文件名称
            int lastIndex = graph.getEnclosureurl().lastIndexOf("\\");
            String destFileName = graph.getEnclosureurl().substring(lastIndex,graph.getEnclosureurl().length());//文件名称
            String sourceFilePathName = graph.getEnclosureurl();//原件地址
            File newfile = new File(sourceFilePathName);
            if (!newfile.exists()) {
                sourceFilePathName = HOMEPATH + sourceFilePathName;
                // 处理兼容老数据
                newfile = new File(sourceFilePathName);
                if (!newfile.exists()) {
                    return null;
                }
            }
            ResponseUtil.downloadFile(response, newfile, destFileName);
        } catch (Exception e) {
            ResultUtils.writeFailed(response);
        }
        return null;
    }

}
