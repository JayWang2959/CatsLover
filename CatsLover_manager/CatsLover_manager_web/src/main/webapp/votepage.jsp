<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2019/12/28
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>�μӱ���</title>
    <style type="text/css">
        h1,h2,h3,h4,h5,h6{ display:inline;}
    </style>
</head>
<body background="images/1.jpg">
<style>
    .red {
        font-size: 60px;
        color:#FF0000;
        font-style:inherit;
    }
    .blue {
        font-size: 60px;
        color:#0000FF;
        font-style:inherit;
    }
    .white{
        font-size: 24px;
        color:#FFFF00;
        font-style:inherit;
    }
</style>
<center>
    <h1 class="blue">����</h1><h1 >����</h1><h1 class="red">����</h1>
</center>
<p></p>
<form action="applyupload.jsp" method="post" enctype="multipart/form-data">
    <div align="center">
        <h1 class="white">����д��ϸ��Ϣ</h1>
        <a  href = "homepage.jsp" >�������������</a >
    </div>
    <table width="52%" border="3" align="center">
        <tr bgcolor="#FFFFCC">
            <td align='center' width="43%" ><div align="center">è���ǳ�:</div></td>
            <td width="57"><div align="left">
                <input type="text" name="cat_name">
<%--            name    --%>
            </div></td>
        </tr>
        <tr bgcolor="#FFFFCC">
            <td align='center' width="43%" ><div align="center">����id:</div></td>
            <td width="57"><div align="left">
                <input type="text" name="user_id">
<%--           sex     --%>
            </div></td>
        </tr>
        <tr bgcolor="#FFFFCC">
            <td align='center' width="43%" ><div align="center">��������:</div></td>
            <td width="200"><div align="left">
                <input type="text" name="apply">
            </div></td>
        </tr>
        <tr bgcolor="#FFFFCC">
            <td align='center' width="43%" ><div align="center">ѡ����Ҫ������ͼƬ:</div></td>
            <td width="200"><div align="left">
                <input type="file" name="photo" value="" />
            </div></td>
        </tr>
        <p></p>
    </table>
    <p align="center">
        <input type="submit" value="�ύ" name="Submit"/>
        <input type="Reset" value="����" name="Reset"/>
    <p>
</form>
</body>
</html>