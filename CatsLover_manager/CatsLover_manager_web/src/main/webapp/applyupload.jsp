<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2019/12/28
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java"
         import="java.sql.*,java.util.*,com.jspsmart.upload.*,java.io.*,java.awt.Image,java.awt.image.*" errorPage="" %>
<html>
<head>
    <title>文件上传处理页面</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<%
    String url="upload/";
    String saveurl="";
    SmartUpload smartupload = new SmartUpload();
    smartupload.initialize(pageContext);
    smartupload.upload();//上传
    int count = smartupload.save("/upload");//保存到文件夹upload
    String cat_name = smartupload.getRequest().getParameter("cat_name");
    String user_id = smartupload.getRequest().getParameter("user_id");
    String apply = smartupload.getRequest().getParameter("apply");//获取参赛选手的信息
    if(cat_name.length()==0|| user_id.length()==0|| apply.length()==0){
        out.println("输入信息不完整,请返回重新输入");
%>
<a href="votepage.jsp">返回</a>
<p></p>
<%
}
else{
    if(count>0){
        out.println(count+"个文件上传成功！<br>");
        com.jspsmart.upload.File myFile = smartupload.getFiles().getFile(0);
        String myFileName=myFile.getFileName();//获得图片名
        String ext= myFile.getFileExt(); //获得图片名的后缀
        int file_size=myFile.getSize(); //取得文件的大小
        Calendar calendar = Calendar.getInstance();
        String filename = String.valueOf(calendar.getTimeInMillis());
        saveurl="F:/phantom/Xshell(1)/";
        saveurl+=url;
        saveurl+=filename+"."+ext;
//        myFile.saveAs(saveurl, smartupload.SAVE_PHYSICAL);
        String upurl="";
        int vote=0;
        upurl+=url;
        upurl+=filename+"."+ext;
        java.sql.Connection conn=null;
        java.lang.String strConn;
        Statement stmt=null;
        ResultSet rs=null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","root");
            stmt=conn.createStatement();
            String sql="insert into catslover_cat(cat_name,user_id,apply,image,vote) values";
            sql=sql+"('"+ cat_name +"',";
            sql=sql+"'"+ user_id +"',";
            sql=sql+"'"+ apply +"',";
            sql=sql+"'"+upurl+"',";
            sql=sql+"'"+vote+"')";
            stmt.executeUpdate(sql);
        }catch(SQLException e){
            out.println("你已经报过名了，请返回主界面");
            out.println("<br>");
        }finally{
            if(stmt!=null) stmt.close();
            if(conn!=null) conn.close();
        }
    }
    else{
        out.println("上传失败，请选择你要上传的图片");
%>
<a href="applyupload.jsp">返回</a>
<p></p>
<%
        }
    }
%>
<a  href = "vote.jsp" >点击进入投票界面</a >
<a  href = "homepage.jsp" >点击返回主界面</a >



</body>
</html>