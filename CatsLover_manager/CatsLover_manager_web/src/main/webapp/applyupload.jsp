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
    <title>�ļ��ϴ�����ҳ��</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<%
    String url="upload/";
    String saveurl="";
    SmartUpload smartupload = new SmartUpload();
    smartupload.initialize(pageContext);
    smartupload.upload();//�ϴ�
    int count = smartupload.save("/upload");//���浽�ļ���upload
    String cat_name = smartupload.getRequest().getParameter("cat_name");
    String user_id = smartupload.getRequest().getParameter("user_id");
    String apply = smartupload.getRequest().getParameter("apply");//��ȡ����ѡ�ֵ���Ϣ
    if(cat_name.length()==0|| user_id.length()==0|| apply.length()==0){
        out.println("������Ϣ������,�뷵����������");
%>
<a href="votepage.jsp">����</a>
<p></p>
<%
}
else{
    if(count>0){
        out.println(count+"���ļ��ϴ��ɹ���<br>");
        com.jspsmart.upload.File myFile = smartupload.getFiles().getFile(0);
        String myFileName=myFile.getFileName();//���ͼƬ��
        String ext= myFile.getFileExt(); //���ͼƬ���ĺ�׺
        int file_size=myFile.getSize(); //ȡ���ļ��Ĵ�С
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
            out.println("���Ѿ��������ˣ��뷵��������");
            out.println("<br>");
        }finally{
            if(stmt!=null) stmt.close();
            if(conn!=null) conn.close();
        }
    }
    else{
        out.println("�ϴ�ʧ�ܣ���ѡ����Ҫ�ϴ���ͼƬ");
%>
<a href="applyupload.jsp">����</a>
<p></p>
<%
        }
    }
%>
<a  href = "vote.jsp" >�������ͶƱ����</a >
<a  href = "homepage.jsp" >�������������</a >



</body>
</html>