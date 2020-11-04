<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/"/>
    <title>用户登录</title>
    <link type="text/css" rel="stylesheet" href="resources/css/style.css;">
</head>
<body bgcolor="#E7ECEF">
    <center>
        <form action="/loginServlet" method="post">
            <table border="0" cellspacing="0" cellpadding="0" style="margin-top:130px">
                <tr><td><img src="resources/images/logon_top.gif"></td></tr>
                <tr height="180">
                    <td background="resources/images/logon_middle.gif" align="center" valign="top">
                         <table border="0" width="90%" cellspacing="0" cellpadding="0">
                             <tr height="50"><td colspan="2"></td></tr>
                             <tr height="30">
                                 <td align="right" width="40%">用户名：&nbsp;&nbsp;</td>
                                 <td style="text-indent:5px">
                                     <input type="text" name="username" size="30px" value="" id="log_Login_action_user_userName"/>
                                     <span>${error}</span>
                                 </td>
                             </tr>                
                             <tr height="30">
                                 <td align="right">密&nbsp;&nbsp;码：&nbsp;&nbsp;</td>
                                 <td style="text-indent:5px"><input type="password" name="password" size="30px" id="log_Login_action_user_userPassword"/></td>
                             </tr>
                             <tr height="60">
                                 <td></td>
                                 <td>
								
                                     <input type="submit" id="" value="登录"/>

                                     <input type="reset" value="重置"/>

                                     <a id="log_Login_action_" href="resources/view/indextemp.jsp">[返回首页]</a>
                                 </td>
                             </tr>
                         </table>
                    </td>
                </tr>
                <tr><td><img src="resources/images/logon_end.gif"></td></tr>
            </table>
        </form>



     
    </center>
</body>
</html>