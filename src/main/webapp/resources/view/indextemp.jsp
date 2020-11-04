<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>都市信息网</title>
<base href="<%=request.getContextPath()%>/"/>
  <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body background="images/back.gif">
    <center>
        <table border="0" width="920" height="auto" cellspacing="0" cellpadding="0" bgcolor="white">
            <tr><td colspan="2">

			<!-- 页眉 -->
			<iframe src="view/top.jsp" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>
			</td></tr>
            <tr>
                <td width="230" valign="top" align="center">
				<!-- 左侧 -->
			<iframe src="view/left.jsp" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
				</td>
                <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">
				<!-- 右侧 -->
			<iframe name="default" src="GoindexServlet" frameBorder="0" width="690" scrolling="no" height="450" ></iframe>
				
			</td>
		</tr>

       </table>
		<!-- 页脚 -->
		<iframe src="view/end.jsp" frameBorder="0" width="920" scrolling="no" height="70" style="margin-top:0"></iframe>	   
    </center>
</body>
</html>