<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>都市信息网</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
	<center>
		<table border="0" width="920" cellspacing="0" cellpadding="0"
			bgcolor="white">
			<tr>
				<td width="690" height="400" align="left" valign="top"
					bgcolor="#FFFFFF">
					<table border="0" width="650" cellspacing="0" cellpadding="0"
						style="margin-top: 15">

						<tr height="20">
							<td style="text-indent: 5" valign="bottom"><font color="#004790"><b>■查询结果</b></td>
						</tr>
						<tr >
							<td align="center" style="border: 1 solid">
								<table border="0" width="100%" rules="rows" cellspacing="0">
									<tr align="center" height="30" bgcolor="#F0F0F0">
										<td width="11%"><b>信息类别</b></td>
										<td width="8%"><b>ID值</b></td>
										<td width="38%"><b>信息标题</b></td>
										<td width="22%"><b>发布时间</b></td>
										<td width="15%"><b>联系人</b></td>
									</tr>
									<c:forEach items="${list}" var="info">
										<tr height="30">
											<td align="center">${info.typeIntro}</td>
											<td style="text-indent: 10">${info.infoid}</td>
											<td style="text-indent: 5"><a
												href="singleShowServlet?infoid=${info.infoid}">${info.infoTitle}</a></td>
											<td align="center">${info.infodate }</td>
											<td style="text-indent: 10">${info.infolinkman }</td>
										</tr>
									</c:forEach>

								</table>
							</td>
						</tr>
						
					</table>
					<table border="0" width="100%" cellspacing="0">
						<tr>
							<%-- <td width="60%"><table border='0' cellpadding='3'>
							
									<tr>
										<td>每页显示：5/${total } 条记录！当前页：${currentPage }/${totalPage }
											页！</td>
									</tr>
								</table></td> --%>
							<td align="left" width="100%"><table border='0'
									cellpadding='3'>
									<tr>
										<td><a
											href="searchInfoServlet?currentPage=${currentPage-1 }&sqlvalue=${sqlvalue}&subsql=${subsql}&type=${type}">上一页</a>|<a
											href="searchInfoServlet?currentPage=${currentPage+1 }&sqlvalue=${sqlvalue}&subsql=${subsql}&type=${type}">下一页</a></td>
									</tr>
								</table></td>
						</tr>
					</table>
			</tr>

		</table>
	</center>
</body>
</html>