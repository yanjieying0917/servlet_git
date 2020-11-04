<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>都市信息网</title>
  <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body >
	<div align="left">
			
		<table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white" style="text-align:center;">
			
			<tr>
				<td width="690" height="400" align="left" valign="top" bgcolor="#FFFFFF">        
					<!-- 列表显示免费信息 -->
					<table width="670" border="0" cellspacing="0" cellpadding="0" style="margin-top:5">
					
						<tr height="30">
							<td style="text-indent:5" valign="bottom"><font color="#004790"><b>■查看详细信息</b></font></td>
						</tr>            
						<tr height="1">
							<td></td>
						</tr>
						<tr bgcolor="#FAFCF5">
							<td style="border:1 solid">
								<table border="0" width="100%" cellspacing="0" cellpadding="2" style="font-size:14px;">
									<tr height="30">
										<td width="20%" style="text-indent:20">信息类别：</td>
										<td>${info.typeIntro }</td>
									</tr>
									<tr height="30">
										<td style="text-indent:20">发布时间：</td>
										<td>${info.infodate }</td>
									</tr>
									<tr height="30">
										<td style="text-indent:20">信息标题：</td>
										<td>${info.infoTitle }</td>
									</tr>
									<tr height="30">
										<td colspan="2" style="text-indent:20">信息内容：</td>
									</tr>
									<tr height="60">
										<td colspan="2" style="text-indent:20">${info.infocontent }</td>
									</tr>
									<tr height="40">
										<td colspan="2" align="left">
											<table border="0" width="630" cellspacing="0" cellpadding="0"  style="word-break:break-all;font-size:14px;" >
												<tr height="20" align="left">
													<td>联系电话：${info.infophone }</td>
													<td>联系人：${info.infolinkman }</td>
													<td>E-mail：${info.infoemail }</td>
												</tr>
											</table>                      
										</td>
									</tr>
									<tr height="40">
										<td align="center" colspan="2" ><a href="javascript:window.history.back(-1)">返回</a></td>
									</tr>                              
								
								</table>
							</td>
						</tr>
					</table>
					<br>
				</td>
			</tr>      
		</table>
		<!-- 页脚 -->
	</div>
</body>

</html>