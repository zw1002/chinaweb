package com.hnqj.controller;

import com.hnqj.core.PageData;
import com.hnqj.services.WorksServices;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import sun.misc.BASE64Encoder;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/uploadFile")
public class UploadFileController extends  BaseController {
    @Autowired
    WorksServices worksServices;

    private String UPLOADDIR = "upload" + File.separator;

    //跳转到上传作品页面
    @RequestMapping(value = "/toUpload.do")
    public String toUpload() {
        return "upload";
    }

    /**
     * 上传的图片转二进制
     */
    @RequestMapping("/imgToBinary.do")
    public void imgToBinary(@RequestParam(value = "file") MultipartFile file, String fid, HttpServletRequest request) {
        logger.info("imgToBinary");
        BASE64Encoder encoder = new BASE64Encoder();
        BufferedImage bi;
        try {
            CommonsMultipartFile cf = (CommonsMultipartFile) file; //这个myfile是MultipartFile的
            DiskFileItem fi = (DiskFileItem) cf.getFileItem();
            File files = fi.getStoreLocation();
            bi = ImageIO.read(files);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(bi, "png", baos);
            byte[] bytes = baos.toByteArray();
            System.out.println("********************");
            System.out.println(encoder.encodeBuffer(bytes).trim());
            System.out.println("********************");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 图片批量上传
     * @param files
     * @param request
     * @return
     */
    @RequestMapping("/filesUpload.do")
    //requestParam要写才知道是前台的那个数组
    public String filesUpload(@RequestParam("file") MultipartFile[] files, HttpServletRequest request) {
        String worktype = request.getParameter("worktype") == null ? "" : request.getParameter("worktype");
        String workclassification = request.getParameter("workclassification") == null ? "" : request.getParameter("workclassification");
        String worklabel = request.getParameter("worklabel") == null ? "" : request.getParameter("worklabel");
        String HOMEPATH = request.getSession().getServletContext().getRealPath("/") + "static/uploadImg/";
        DateFormat dateFormate = new SimpleDateFormat("yyyy-MM-dd");
        String today = dateFormate.format(new Date());
        String savePath = HOMEPATH + UPLOADDIR
                + today + File.separator;
        File f1 = new File(savePath);
        if (!f1.exists()) {
            f1.mkdirs();
        }
        for(MultipartFile file:files){
            String myFileName = file.getOriginalFilename();
            String extName = "";
            if (myFileName.trim() != "") {
                long byteSize = file.getSize();
                //重命名上传后的文件名
                if (myFileName.lastIndexOf(".") >= 0) {
                    extName = myFileName.substring(myFileName.lastIndexOf("."));
                }
                File localFile = new File(savePath + myFileName);//上传文件是真实名称
                BigDecimal fileSize = null;
                String measuring = "";
                if (byteSize >= 1024 * 1024) {
                    double f = byteSize * 1.0 / (1024 * 1000);
                    fileSize = new BigDecimal(f);
                    measuring = "MB";
                } else {
                    double f = byteSize * 1.0 / (1024);
                    fileSize = new BigDecimal(f);
                    measuring = "KB";
                }
                PageData pageData = new PageData();
                pageData.put("uid",UUID.randomUUID().toString());
                pageData.put("worksurl",savePath + myFileName);
                pageData.put("imgsize",fileSize + measuring);
                pageData.put("imgformart",extName);
                pageData.put("worksname",myFileName);
                pageData.put("workstype",worktype);
                pageData.put("uptime",new Date());
                try {
                    file.transferTo(localFile);
                    worksServices.addWorks(pageData);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return "upload";
    }
}
