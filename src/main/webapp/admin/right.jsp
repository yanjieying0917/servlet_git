<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>后台-侧栏</title>
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
  <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body background="${pageContext.request.contextPath}/images/back.gif" style="background-color:white">
    <center>
   
        <table border="0" width="220" height="auto" cellspacing="0" cellpadding="0" style="margin-top:7;background-color:white">
            <!-- 显示方式 -->
            
            <tr>欢迎 ${loginName }登录</tr>
            
            <tr height="30" bgcolor="#F0F0F0"><td style="text-indent:5" style="border:1 solid"><font color="#004790"><b>■用户管理</b></font></td></tr>
            <tr height="1"><td></td></tr>
            <form action="/userSelectServlet?currentPage1=1" method="post" target="default">
            <tr>
                <td align="center" valign="top" style="border:1 solid">
                    <table border="0" width="220" height="80" cellspacing="0"  style="font-size:12px">
                        <tr height="25"><td align="center" valign="bottom">请输入要查询的用户ID：</td></tr>
                        <tr height="40">
                            <td align="center">
                                <input type="text" name="userid" value="" size="24"/>
                                <input type="submit" value="查询"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </form>
            
            <tr height="30" bgcolor="#F0F0F0"><td style="text-indent:5px;border:1px solid "><font color="#004790"><b>■显示方式</b></font></td></tr>
            <tr height="1"><td></td></tr>
            <form id="admin_ListShow_action?" name="admin_ListShow_action?" action="infoListServlet" method="post" target="default">
            <tr>
                <td align="center" valign="top" style="border:1px solid">
                    <table border="0" width="215" height="150" cellspacing="0" style="font-size:12px">
                        <tr>
                            <td align="center" colspan="2">
                                <fieldset style="height:60px;width:200px">
                                  <legend>★付费状态</legend>
                                  <br>
                                  <input type="radio" name="infopaystate" id="payforType0" value="0" checked="checked"/>
								  <label for="payforType0">未付费</label>
								<input type="radio" name="infopaystate" id="payforType1" value="1"/>
								<label for="payforType1">已付费</label>
								<input type="radio" name="infopaystate" id="payforTypeall" value="all"/>
								<label for="payforTypeall">全部</label>

                                </fieldset>
                                <fieldset style="height:60px;width:200px">
                                  <legend>★审核状态</legend>
                                  <br>
                                  <input type="radio" name="infocheckstate" id="stateType0" value="0" checked="checked"/>
								  <label for="stateType0">未审核</label>
									<input type="radio" name="infocheckstate" id="stateType1" value="1"/>
									<label for="stateType1">已审核</label>
									<input type="radio" name="infocheckstate" id="stateTypeall" value="all"/>
									<label for="stateTypeall">全部</label>

                                </fieldset>
                            </td>
                        </tr>
                        <tr align="center" height="30" bgcolor="lightgrey">
                            <td>
                               信息类别：
                               
                                   <select name="infotypeid" id="infoType">
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

                               <input type="submit" id="admin_ListShow_action?_0" value="显示"/>

                            </td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
            </form>

            <tr height="5"><td></td></tr>
            <!-- 设置已付费信息 -->            
            <tr height="30" bgcolor="#F0F0F0"><td style="text-indent:5px" style="border:1px solid"><font color="#004790"><b>■付费设置</b></font></td></tr>
            <tr height="1"><td></td></tr>
            <form action="searchInfoByIdServlet" method="post" target="default">
            <tr>
                <td align="center" valign="top" style="border:1px solid">
                    <table border="0" width="220" height="80" cellspacing="0"  style="font-size:12px">
                        <tr height="25"><td align="center" valign="bottom">请输入要设为已付费状态的信息ID：</td></tr>
                        <tr height="40">
                            <td align="center">
                                <input type="text" name="infoid" value="" size="24"/>
                                <input type="submit" value="查询"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </form>
        </table>        
    </center>
</body>
	<script>
		WdatePicker({eCont:'div1'})
	</script>
</html>