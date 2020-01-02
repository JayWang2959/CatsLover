package com.CatsLover.controller;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;

@Controller
public class FileUploadController {

    @RequestMapping("fileupload")
    public String handleFileUpload(HttpServletRequest request){
        boolean flag = false;

        //判断是否是文件上传请求
        if(ServletFileUpload.isMultipartContent(request)){
            // 创建文件上传处理器
            System.out.println("1");
            ServletFileUpload upload = new ServletFileUpload();
            //限制单个上传文件的大小
            System.out.println("2");
            upload.setFileSizeMax(1L<<24);
            System.out.println("3");
            try {
                // 解析请求
                FileItemIterator iter = upload.getItemIterator(request);
                System.out.println("4"+iter);
                while (iter.hasNext()) {
                    FileItemStream item = iter.next();

                    if (!item.isFormField()) {
                        //是文件上传对象，获取上传文件的输入流
                        InputStream srcinInputStream = item.openStream();
                        /*对上传文件的输入流进行处理，跟本地的文件流处理方式相同*/

                    }
                }
            } catch (FileUploadException e) {
                System.out.println("上传文件过大");
            } catch (IOException e) {
                System.out.println("文件读取出现问题");
            }
        }

        return flag? "success":"error";
    }
}
