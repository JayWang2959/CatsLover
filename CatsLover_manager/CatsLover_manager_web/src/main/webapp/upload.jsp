<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2019/12/28
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java"
         import="java.sql.*,java.util.*,com.jspsmart.upload.*,java.io.*,java.awt.Image,java.awt.image.*,java.util.*" errorPage="" %>
<html>
<body>
SmartUpload su = new SmartUpload();//����һ������
su.initialize(pageContext);//��ʼ��
su.upload();//�ϴ�����һ��ز����٣������ϴ��ĺ��ģ����ǽ��ļ��ϴ�����Ŀ�ж���һ�����ǰ��Ѿ��ϴ�����Ŀ�е��ļ����浽ָ���ļ�����
int count = su.save("/upload");//���浽�ļ���upload����������Ŀ�д������ļ��У��������Ĵ��������Ը���getContextPath()����ȡ�����ĵ�ַ�������䷵�ص��Ǹ�int�ͣ���ʾ�ɹ��ϴ����ļ�����
</body>
</html>