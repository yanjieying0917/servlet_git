<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>侧栏</title>
	<link type="text/css" rel="stylesheet" href="../css/style.css">
	<script language="javascript" type="text/javascript" src="../js/My97DatePicker/WdatePicker.js"></script>
	<script language="javascript" type="text/javascript" src="../js/My97DatePicker/calendar.js"></script>
	<script type="text/javascript">



		function check(){
			var flag = true;
			var sqlvalue = document.getElementById("sqlvalue").value;
			if(sqlvalue == "" || sqlvalue == null){
				alert("关键字不能为空");
				flag = false;
			}
			var subsql = document.getElementById("subsql").value;
			if(subsql == "" || subsql == null){
				alert("条件不能为空");
				flag = false;
			}

			return flag;
		}
	</script>

</head>
<body>

<table border="0" width="225" height="100%" cellspacing="0" cellpadding="0">
	<tr height="30"><td style="text-indent:5px" valign="bottom"><font color="#004790"><b>■日历</b></font></td></tr>
	<tr height="1px"><td></td></tr>
	<!-- 日历 -->
	<tr height="180px">
		<td valign="top"  align="center">
			<div id="div1" style="width:210px"></div>
		</td>
	</tr>

	<tr height="1"><td></td></tr>
	<tr height="30"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■信息快速搜索</b></font></td></tr>
	<tr height="1"><td></td></tr>
	<tr height="103">
		<td align="center" valign="top" background="../images/leftS.jpg">
			<table border="0" width="99%" height="100%" cellspacing="0" style="font-size:13px">
				<form id="info_SearchShow_action" name="info_SearchShow_action" action="../searchInfoServlet" method="post" target="default" onsubmit="return check()">
					<tr height="10"><td colspan="3"></td></tr>
					<tr>
						<td align="right" width="70">关键字：</td>
						<td colspan="2" width="200"><input type="text" name="sqlvalue" size="21" value="" id="sqlvalue"/></td>
					</tr>
					<tr>
						<td align="right">条&nbsp;&nbsp;件：</td>
						<td colspan="2">
							<select name="subsql" id="subsql"  >
								<option value=""></option>
								<option value="info_content">信息内容</option>
								<option value="info_phone">联系电话</option>
								<option value="info_email">E-mail地址</option>
								<option value="id">ID值</option>
								<option value="info_title">信息标题</option>
								<option value="info_linkman">联系人</option>
							</select>

						</td>

					</tr>
					<tr>
						<td align="right">搜索类型：</td>
						<td>
							<input type="radio" name="type" id="info_SearchShow_action_searchInfo_typeall" value="all"/>
							<label for="info_SearchShow_action_searchInfo_typeall">全字匹配</label>
							<br>
							<input type="radio" name="type" id="info_SearchShow_action_searchInfo_typelike" checked="checked" value="like"/>
							<label for="info_SearchShow_action_searchInfo_typelike">模糊搜索</label>

						</td>
						<td align="center" >
							<input type="submit" id="info_SearchShow_action_0" value="搜索"/>
						</td>
					</tr>
					<tr height="10"><td colspan="3"></td></tr>
				</form>




			</table>
		</td>
	</tr>
	<tr><td></td></tr>
</table>

</body>

<script>
	WdatePicker({eCont:'div1'});
</script>

</html>