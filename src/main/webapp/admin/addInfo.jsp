<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>都市信息网</title>
<base href="<%=request.getContextPath()%>/"/>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <script type="text/javascript">
  	//全局变量
  	var isOk = true;
	//验证邮箱和手机号的格式是否正确
	function checkMail(obj) {
		var strReg = "";
		var r;
		var strText = obj.value;
	    strReg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;//正则
		r = strText.search(strReg);
		if (r == -1) {
			alert("邮箱格式错误!");
			isOk = false;
		}
	}
	function checkPhone(obj) {
		var strReg = "";
		var r;
		var strText = obj.value;
		strReg = /((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)/;
		r = strText.search(strReg);
		if (r == -1) {
			alert("手机号码格式错误!");
			isOk = false;
		}
	}

	//字符数统计
	function check(fieldname, usename, remname, len) {
		if (fieldname.value.length > len) {
			fieldname.value = (fieldname.value).substring(0, len);
			alert("您的输入超过" + len + "个字符了！");
			isOk = false;
		} else {
			usename.value = eval(fieldname.value.length);
			remname.value = len - usename.value;
		}
	}
	
	function isCon(title,linkman,email){
		if(isOk && title.value.length>0 && linkman.value.length>0 && email.value.length>0){
			return true;
		}else{
			alert("请检查正确后，再提交");
			return false;
		}
	}
</script>
</head>
<body background="images/back.gif">
    <center>
        <table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white">
            <tr>
			<td colspan="2">
			<!-- 页眉 -->
			<iframe src="view/top.jsp" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>

			</td>
			</tr>
            <tr>
                <td width="230" valign="top" align="center">
				<!-- 左边 -->
				<iframe src="view/left.jsp" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
				</td>
                <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">
				<table border="0" cellpadding="0" cellspacing="0" width="688" height="100%">
					<tr height="20"><td><img src="images/default_t.jpg"></td></tr>
					<tr>
						<td background="images/default_m.jpg" valign="top" align="center">
							<form id="info_Add_action" name="info_Add_action" action="addInfoServlet" method="post" onsubmit="return isCon(infoTitle,infoLinkman,infoEmail)">
							<input type="hidden" name="addType" value="add"/>
							<table border="0" width="650" height="300"  cellspacing="0">
								<tr height="30"><td style="text-indent:10"><font color="#004790"><b>■发布信息</b></font></td></tr>
								<tr>
									<td align="center">
										<table border="0" width="650"  cellspacing="8">                    
											<tr>
												<td width="20%" style="text-indent:10">信息类别：</td>
												<td>
												   <select name="infoType" id="info_Add_action_infoSingle_infoType">
														<option value=""></option>
														<option value="1">招聘信息</option>
														<option value="2">培训信息</option>
														<option value="3">房屋信息</option>
														<option value="4">求购信息</option>
														<option value="5">招商引资</option>
														<option value="6">公寓信息</option>
														<option value="7">求职信息</option>
														<option value="8">家教信息</option>
														<option value="9">车辆信息</option>
														<option value="10">出售信息</option>
														<option value="11">寻找启示</option>

													</select>
										
												</td>
												<td align="right"><font color="#7F7F7F">[信息标题最多不得超过40个字符]&nbsp;&nbsp;</font></td>
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr>
												<td style="text-indent:10">信息标题：</td>
												<td colspan="2"><input type="text" name="infoTitle" size="80" maxlength="40" value="" id="info_Add_action_infoSingle_infoTitle"/></td>                        
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr>
												<td style="text-indent:10">信息内容：</td> 
												<td>
													<font color="#7F7F7F">
													  已用：<input type="text" name="ContentUse" value="0" size="4" disabled style="text-align:center;border:0;"> 个
                                                                                                                                    剩余：<input type="text" name="ContentRem" value="500" size="4" disabled style="text-align:center;border:0;"> 个	
													</font>
													
												</td>
												<td align="right"><font color="#7F7F7F">[信息内容最多不得超过500个字符]&nbsp;&nbsp;</font></td>
											</tr>
											<tr><td colspan="3"></td></tr>
													<tr>
														<td colspan="3" align="right">
			                                            <textarea rows="10" cols="70" style="overflow: hidden"  name="infoContent" id="infoContent"
                                                           onkeydown="check(infoContent,ContentUse,ContentRem,500)" 
                                                           onkeyup="check(infoContent,ContentUse,ContentRem,500)" 
                                                           onchange="check(infoContent,ContentUse,ContentRem,500)" ></textarea> 
														</td>
													</tr>
													<tr>
												<td style="text-indent:10">联系电话：</td>
												<td colspan="2"><input type="text" name="infoPhone" size="45" value="" id="infoPhone" onchange="checkPhone(this)" /><font color="gray">&nbsp;[多个电话以逗号分隔！]</font></td>
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr>
												<td style="text-indent:10">联 系 人：</td>
												<td colspan="2"><input type="text" name="infoLinkman" size="50" value="" id="infoLinkman"/></td>
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr>
												<td style="text-indent:10">E - mail：</td>
												<td colspan="2"><input type="text" name="infoEmail" size="55" value="" id="infoEmail" onchange="checkMail(this)" /></td>                    
											</tr>
											<tr><td colspan="3"></td></tr>                        
										</table>              
									</td>
								</tr>
								<tr align="center" height="50">
									<td>
										<input type="submit" id="info_Add_action_0" value="&#21457;&#24067;"/>

										<input type="reset" value="&#37325;&#22635;"/>

									</td>
								</tr>
							</table>
							</form>

						</td>
					</tr>
					<tr height="26"><td><img src="images/default_e.jpg"></td></tr>        
				</table>
				</td>
            </tr>
        </table>        
    </center>
</body>
</html>