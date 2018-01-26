package com.hnqj.controller;

import com.hnqj.core.PageData;
import com.hnqj.core.imageUtil;
import com.hnqj.model.Merch;
import com.hnqj.services.MerchServices;
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
import javax.imageio.stream.FileImageInputStream;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import static com.hnqj.core.ImageRemarkUtil.markImageByText;
import static com.hnqj.core.ImageRemarkUtil.markImageByTexts;

@Controller
@RequestMapping("/uploadFile")
public class UploadFileController extends  BaseController {
    @Autowired
    WorksServices worksServices;
    @Autowired
    MerchServices merchServices;

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
        String workremark = request.getParameter("workremark") == null ? "" : request.getParameter("workremark");
        String price = request.getParameter("price") == null ? "" : request.getParameter("price");
        String workclassification = request.getParameter("workclassification") == null ? "" : request.getParameter("workclassification");
        String worklabel = request.getParameter("worklabel") == null ? "" : request.getParameter("worklabel");
        String HOMEPATH = request.getSession().getServletContext().getRealPath("/") + "static/uploadImg/";
        DateFormat dateFormate = new SimpleDateFormat("yyyy-MM-dd");
        String today = dateFormate.format(new Date());
        String savePath = HOMEPATH + UPLOADDIR
                + today + File.separator;
        String relativePath = "/static/uploadImg/"+UPLOADDIR + today + File.separator;
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
                double fileSizes=0;
                if (byteSize >= 1024 * 1024) {
                    double f = byteSize * 1.0 / (1024 * 1000);
                    fileSize = new BigDecimal(f);
                    fileSizes = fileSize.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
                    measuring = "MB";
                } else {
                    double f = byteSize * 1.0 / (1024);
                    fileSize = new BigDecimal(f);
                    fileSizes = fileSize.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
                    measuring = "KB";
                }
                PageData pageData = new PageData();
                pageData.put("uid",UUID.randomUUID().toString());
                pageData.put("worksurl",relativePath + myFileName);
                pageData.put("samllurl",relativePath +"thumb_"+ myFileName);
                pageData.put("imgsize",fileSizes + measuring);
                pageData.put("imgformart",extName);
                pageData.put("worksname",myFileName);
                pageData.put("workstype",workclassification);
                pageData.put("uptime",new Date());
                pageData.put("worklabel",worklabel);
                pageData.put("downcount",0);
                pageData.put("favcount",0);
                pageData.put("displayflag",0);
                pageData.put("delflag",0);
                pageData.put("ticknums",0);
                pageData.put("oknums",0);
                pageData.put("workremark",workremark);
                Merch merch=merchServices.getMerchForUserId(getUser().getUid());
                pageData.put("merchid",merch.getUid());
                pageData.put("price",price);
                BufferedImage image = null;
                try {
                    file.transferTo(localFile);//原图
                    new imageUtil().thumbnailImage(localFile,280,280);//缩略图
                    image = ImageIO.read(new File(savePath + myFileName));
                    String dpinum=image.getWidth() + "x" + image.getHeight();
                    pageData.put("dpinum",dpinum);
                    worksServices.addWorks(pageData);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return "upload";
    }
}
