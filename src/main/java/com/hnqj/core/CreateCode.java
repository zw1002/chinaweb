package com.hnqj.core;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

import java.io.File;
import java.nio.file.Path;
import java.util.HashMap;

//生成二维码
public class CreateCode {
	
	public static void main(String[] args) {
	}
	public static void createcode(String content,String path){
		int width = 300;
		int height =300;
		String format = "png";
		//String content= "http://www.baidu.com";//扫描之后直接打开
		HashMap map=new HashMap();
		map.put(EncodeHintType.CHARACTER_SET, "utf-8");
		map.put(EncodeHintType.ERROR_CORRECTION,ErrorCorrectionLevel.M);//纠错等级
		map.put(EncodeHintType.MARGIN, 2);

		try {
			BitMatrix bitMatrix=new MultiFormatWriter().encode(content, BarcodeFormat.QR_CODE, width, height,map);
			Path file=new File(path).toPath();
			MatrixToImageWriter.writeToPath(bitMatrix, format, file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
