package com.hnqj.controller;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import sun.misc.BASE64Encoder;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/uploadFile")
public class UploadFileController extends  BaseController{
    /**
     * 上传的图片转二进制
     */
    @RequestMapping("/imgToBinary.do")
    public void imgToBinary(@RequestParam(value = "file") MultipartFile file, String fid, HttpServletRequest request) {
        logger.info("imgToBinary");
        BASE64Encoder encoder = new BASE64Encoder();
        BufferedImage bi;
        try {
            CommonsMultipartFile cf= (CommonsMultipartFile)file; //这个myfile是MultipartFile的
            DiskFileItem fi = (DiskFileItem)cf.getFileItem();
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
}
