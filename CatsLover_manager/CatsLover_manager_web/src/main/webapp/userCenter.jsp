<%--
  Created by IntelliJ IDEA.
  User: JayWang
  Date: 2019/12/29
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.springframework.ui.Model" %>

<html>
<head>
    <title>用户中心</title>
    <link type="text/css" rel="stylesheet" href="css/core.css">
    <link type="text/css" rel="stylesheet" href="css/icon.css">
    <link type="text/css" rel="stylesheet" href="css/home.css">
    <link type="text/css" rel="stylesheet" href="css/inputcss.css">
</head>
<body>

<div class="ydc-entered" style="height:11%;width:100%;">
    <div class="ydc-header-content ydc-flex">

        <div class="ydc-column">
            <div class="ydc-column-user">
                <div>
                    <form action="/setSignature">
                        <input name="userSignature" type="text" value=${userSignature}>
                    </form>
                </div>
                <div class="ydc-user-photo">

                    <a href="javascript:;">
<%--                        <img src="<%=img_url.getImg() %>" title="" alt="">--%>
                    </a>
                </div>
                <div class="ydc-user-info">

                    <div class="ydc-user-info-func ydc-flex">
							<span class="ydc-tag">
                                ${userName}
							</span>
                        <span class="ydc-mal"><i
                                class="ydc-icon ydc-icon-mail fl"></i><em>0</em></span> <a></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="ydc-content-slide ydc-body" style="height:86%;">
    <div class="ydc-flex" style="height:100%;">
        <!-- left begin -->
        <div class="ydc-column ydc-column-2">
            <div class="ydc-menu">
                <ul>
                    <li class="ydc-menu-item"><span class="ydc-menu-sub-title">
								<i class="ydc-icon ydc-icon-home fl"></i>首页
						</span>
                        <ul>
                            <li><a target="frame" href="userCenterInfo.jsp">个人资料</a></li>
                            <li><a target="frame" href="        ">修改信息</a></li>
                        </ul></li>

                    <li class="ydc-menu-item">
							<span class="ydc-menu-sub-title">
								<i class="ydc-icon ydc-icon-record fl"></i>猫猫
							</span>
                        <ul>
                            <li><a target="frame" href="mycats.jsp"
                            class="active">我的猫猫</a></li>
                        </ul>
                    </li>

                    <li class="ydc-menu-item"><span class="ydc-menu-sub-title">
								<i class="ydc-icon ydc-icon-file fl"></i>管理
						</span>
                        <ul>
                            <li><a href="homeAfterLogin.jsp" >返回首页</a></li>
                        </ul></li>


                </ul>
            </div>
        </div>
        <!-- left end -->

        <!-- right start -->
        <div style="width:76%;height:100%;">
            <iframe name="frame" scrolling="auto" width="100%" height="100%" frameborder="0" src="mycats.jsp"></iframe>
        </div>
        <!-- right end -->
    </div>
</div>

</body>
</html>
