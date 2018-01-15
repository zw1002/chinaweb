package com.hnqj.controller;

import com.hnqj.core.PageData;
import org.apache.commons.fileupload.disk.DiskFileItem;
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
    private String UPLOADDIR = "upload" + File.separator;

    //跳转到上传作品页面
    @RequestMapping(value = "/toUpload.do")
    public String toUpload() {
        return "uploadFile";
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
     *
     * @param files
     * @param request
     * @return
     */
    @RequestMapping("/filesUpload.do")
    //requestParam要写才知道是前台的那个数组
    public String filesUpload(@RequestParam("myfiles") MultipartFile[] files, HttpServletRequest request) {
        String HOMEPATH = request.getSession().getServletContext().getRealPath("/") + "static/uploadImg/";
        DateFormat dateFormate = new SimpleDateFormat("yyyy-MM-dd");
        String today = dateFormate.format(new Date());
        String savePath = HOMEPATH + UPLOADDIR
                + today + File.separator;
        String relativePath = UPLOADDIR + today + File.separator;
        File f1 = new File(savePath);
        if (!f1.exists()) {
            f1.mkdirs();
        }
        //创建一个通用的多部分解析器
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        //判断 request 是否有文件上传,即多部分请求
        if (multipartResolver.isMultipart(request)) {
            //转换成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //取得request中的所有文件名
            Iterator<String> iter = multiRequest.getFileNames();
            while (iter.hasNext()) {
                //记录上传过程起始时的时间，用来计算上传时间
                // int pre = (int) System.currentTimeMillis();
                //取得上传文件
                MultipartFile file = multiRequest.getFile(iter.next());
                if (file != null) {
                    Long time = new Date().getTime();
                    String myFileName = file.getOriginalFilename();
                    String name = "";
                    String extName = "";

                    if (myFileName.trim() != "") {
                        long byteSize = file.getSize();
                        //重命名上传后的文件名
                        name = UUID.randomUUID().toString();
                        if (myFileName.lastIndexOf(".") >= 0) {
                            extName = myFileName.substring(myFileName.lastIndexOf("."));
                        }
                        File localFile = new File(savePath + time + myFileName);//上传文件是真实名称
                        try {
                            file.transferTo(localFile);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        PageData filesPageData = new PageData();
                        filesPageData.put("fid",UUID.randomUUID().toString());
                        String str=relativePath.replace("\\","/");
                        filesPageData.put("filePath",str +time +myFileName);
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
                        fileSize = fileSize.setScale(2, BigDecimal.ROUND_HALF_UP);
                        filesPageData.put("fileSize",fileSize + measuring);
                        filesPageData.put("realName",myFileName);
                        filesPageData.put("suffix",extName);
                    }
                }
            }
        }
        return null;
    }
}
