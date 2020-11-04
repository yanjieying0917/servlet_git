<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>后台首页</title>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <center>
        <table border="0" cellpadding="0" cellspacing="0" width="688px" height="auto">
            <tr height="20px"><td><img src="${pageContext.request.contextPath}/images/default_t.jpg"></td></tr>
            <tr><td background="${pageContext.request.contextPath}/images/default_m.jpg" valign="top">
				<!-- 内容区 -->
                <iframe name="default" src="default.jsp" frameBorder="0" width="650" scrolling="no" height="300" style="margin-left:10px"></iframe>

                </td>
			</tr>
            <tr height="26"><td><img src="${pageContext.request.contextPath}/images/default_e.jpg"></td></tr>
        </table>
    </center>
</body>
</html>