<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>用户注册</title>
    <base href="<%=request.getContextPath()%>/"/>
    <link type="text/css" rel="stylesheet" href="css/style.css;">
</head>
<script type="text/javascript">
	var flag = true;
	function checkusername(){
		var username = document.getElementById("username").value;
		if(username == "" || username == null){
			alert("用户名不能为空");
			flag = false;
		}
	}
	function checkpassword(){
		var password = document.getElementById("password").value;
		if(password == "" || password == null){
			alert("密码不能为空");
			flag = false;
		}
	}
	function check(){
		checkusername();
		checkpassword();
		return flag;
	}

</script>
<body bgcolor="#E7ECEF">
    <center>
        <form action="registerServlet" method="post" onsubmit="return check()">
            <table border="0" cellspacing="0" cellpadding="0" style="margin-top:130">
                <tr><td><img src="images/logon_top.gif"></td></tr>                
                <tr height="180">
                    <td background="images/logon_middle.gif" align="center" valign="top">
                         <table border="0" width="90%" cellspacing="0" cellpadding="0">
                             <tr height="50"><td colspan="2"></td></tr>
                             <tr height="30">
                                 <td align="right" width="40%">用户名：&nbsp;&nbsp;</td>
                                 <td style="text-indent:5"><input type="text" name="username" size="30" value="" id="username" onblur="checkusername()"/></td>
                             </tr>                
                             <tr height="30">
                                 <td align="right">密&nbsp;&nbsp;码：&nbsp;&nbsp;</td>
                                 <td style="text-indent:5"><input type="password" name="password" size="30" id="password" onblur="checkpassword()"/></td>
                             </tr>
                             <tr height="60">
                                 <td></td>
                                 <td>
								
                                     <input type="submit" id="" value="注册"/>

                                     <input type="reset" value="重置"/>

                                     <a id="log_Login_action_" href="indextemp.jsp">[返回首页]</a>
                                 </td>
                             </tr>
                         </table>
                    </td>
                </tr>
                <tr><td><img src="images/logon_end.gif"></td></tr>
            </table>
        </form>



     
    </center>
</body>
</html>