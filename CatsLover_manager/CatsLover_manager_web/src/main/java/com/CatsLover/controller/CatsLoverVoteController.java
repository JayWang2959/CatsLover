package com.CatsLover.controller;

import com.CatsLover.service.CatsLoverVoteApply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import com.jspsmart.upload.*;
//import java.io.*;
//import java.awt.Image;
//import java.awt.image.*;

@Controller
public class CatsLoverVoteController {
    @Autowired
    CatsLoverVoteApply catsLoverVoteApply;

    @RequestMapping(value = "/vote")
    public String submitCat(@RequestParam(required = false) String cat_name, String user_id, String apply, String image, Integer vote, Model model) {
        try {
//            String url = "upload/";
//            String saveurl = "";
//            SmartUpload smartupload = new SmartUpload();
//            smartupload.initialize(pageContext);
//            smartupload.upload();//上传
//            int count = smartupload.save("/upload");//保存到文件夹upload
//            com.jspsmart.upload.File myFile = smartupload.getFiles().getFile(0);
//            String myFileName = myFile.getFileName();//获得图片名
//            String ext = myFile.getFileExt(); //获得图片名的后缀
//            int file_size = myFile.getSize(); //取得文件的大小
//            Calendar calendar = Calendar.getInstance();
//            String filename = String.valueOf(calendar.getTimeInMillis());
//            saveurl = "F:/phantom/Xshell(1)/";
//            saveurl += url;
//            saveurl += filename + "." + ext;
////        myFile.saveAs(saveurl, smartupload.SAVE_PHYSICAL);
//            String upurl = "";
//            int vote1 = 0;
//            upurl += url;
//            upurl += filename + "." + ext;
            catsLoverVoteApply.submitRegInfo(cat_name, user_id, apply, image, vote);

        } catch (Exception e) {
            if (e instanceof DuplicateKeyException) {
                e.printStackTrace();
                model.addAttribute("error", "猫咪昵称已存在！");
                return "votepage2";
            } else {
                e.printStackTrace();
                model.addAttribute("error", "抱歉，出现未weqeqwe知错误，请再试一次");
                return "votepage2";
            }
        }
        model.addAttribute("loginuser", user_id);
        return "homepage";
    }
}