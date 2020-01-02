<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/12/29
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="css/core.css">
    <link type="text/css" rel="stylesheet" href="css/home.css">
</head>
<body>

<div class="ydc-content-slide ydc-body">
    <div class="ydc-flex">

        <!-- right begin -->
        <div class="ydc-column ydc-column-8">
            <div class="ydc-release-content">
                <div class="ydc-tabPanel ydc-tabPanel-release">
                    <div class="ydc-release-tab-head">
                        <ul>
                            <li class="hit">${USERNAME}</li>
                        </ul>
                    </div>
                    <div class="ydc-panes">
                        <div class="ydc-pane ydc-pane-clear" style="display: block;">
                            <div class="ydc-reg-form-group clearfix">
                                <label>帐号ID</label>
                                <div class="ydc-reg-form-input">
                                    <label>${USERID}</label>
                                </div>
                            </div>

                            <div class="ydc-reg-form-group clearfix">
                                <label>昵称</label>
                                <div class="ydc-reg-form-input">
                                    <label>${USERNAME}</label>
                                </div>
                            </div>

                            <div class="ydc-reg-form-group clearfix">
                                <label>个性签名</label>
                                <div class="ydc-reg-form-input">
                                    <label>${USERSIGNATURE}</label>
                                </div>
                            </div>

                            <%--                            <div class="ydc-reg-form-group clearfix">--%>
                            <%--                                <label>帐号头像</label>--%>
                            <%--                                <div class="ydc-reg-form-input">--%>
                            <%--                                    <label></label>--%>
                            <%--                                    <div class="ydc-reg-form-text ydc-reg-form-user-logo">--%>
                            <%--&lt;%&ndash;                                        <img src="<%=img_url.getImg() %>" alt="">&ndash;%&gt;--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- right end -->
    </div>
</div>

</body>
</html>
