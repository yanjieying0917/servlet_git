<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>都市信息网</title>
  <base href="<%=request.getContextPath()%>/"/>
  <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body background="images/back.gif">
    <center>
        <table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white">
<tr>
   <td width="690" height="400" align="left" valign="top" bgcolor="#FFFFFF">        
        <table border="0" width="670" cellspacing="0" cellpadding="0" style="margin-top:5">
            
            <% 
           		int currentPage = Integer.parseInt(request.getAttribute("currentPage").toString());
           	%>
                <tr height="30"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■检索信息</b>『最新检索』</font></td></tr>
                
                     
                         <tr><td align="center" style="border:1 solid" bgcolor="#F0F0F0">
                     
                     
                             <table border="0" width="655" cellpadding="3" style="word-break:break-all">
                             	<c:forEach items="${list}" var="info">
                                 <tr height="30">
                                     <td colspan="2">【检索信息】</td>
                                     <td align="right">发布时间：『${info.infodate }』&nbsp;</td>
                                 </tr>
                                 <tr height="80"><td colspan="3">${info.infocontent }</td></tr>
                                 <tr height="30" align="center">
                                     <td>联系电话：${info.infophone}</td>
                                     <td>联 系 人：${info.infolinkman }</td>
                                     <td>E-mail：${info.infoemail }</td>
                                 </tr>   
                                 </c:forEach>                              
                             </table>
                         </td>
                     </tr>
                     <tr height="1"><td></td></tr>
                <tr><td><a href="searchInfoServlet?currentPage=<%=currentPage-1%>&sqlvalue=${sqlvalue}&subsql=${subsql}&type=${type}">上一页</a>|<a href="searchInfoServlet?currentPage=<%=currentPage+1%>&sqlvalue=${sqlvalue}&subsql=${subsql}&type=${type}">下一页</a></td></tr>
            
        </table>
        <!-- 列表显示免费信息 -->
        <br>
</td>
            </tr>
           
        </table>
		<!-- 页脚 -->
    </center>
</body>
</html>