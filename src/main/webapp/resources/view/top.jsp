<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/"/>
  <meta http-equiv="Content-Type" content="text/html; charset=gbk">
  <title>页眉</title>
   <link type="text/css" rel="stylesheet" href="css/style.css">
   <script type="text/javascript">
  
</script>
</head>
<body>
    <center>
        <table border="0" width="100%" cellspacing="0" cellpadding="0">
            <!-- 顶部菜单 -->
           <tr height="20">
                <td style="text-indent:10" valign="bottom">
                    <a href="" onclick="window.parent.location.href='admin/addInfo.jsp'" style="color:gray">[发布信息]</a>
                    <a href="" onclick="window.parent.location.href='login.jsp'" style="color:gray">[进入后台]</a>
                </td>
                <td align="right" valign="bottom">
                    <a href="#"  style="color:gray" onclick="">设为主页 -</a>
                    <a href="javascript:window.external.AddFavorite('indextemp.htm','都市供求信息网')" style="color:gray">收藏本页 -</a>
                    <a href="mailto:123@***.com.cn" style="color:gray">联系我们-</a>
                    <a href="FileDownLoad?name=用户手册.doc" style="color:gray">用户手册</a>
                    &nbsp;
                </td>
            </tr>
            <!-- 导航菜单 -->
            <tr height="56">
                <td align="center" width="220" background="images/logo.gif"></td>
                <td align="right" background="images/menu.gif">
                    <table border="0" width="600">
						<tr align="center">
							<td width="100">
								<a href="" onclick="window.parent.location.href='view/indextemp.jsp'" style="color:white">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></font></td>
							
							<td width="100">
								<a href="selectInfoServlet?infotypeid=0" style="color:white" target="default">暂时没有信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=1" style="color:white" target="default">招聘信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=2" style="color:white" target="default">培训信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=3" style="color:white" target="default">房屋信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=4" style="color:white" target="default">求购信息</a>
							</td>
						</tr>
								
						<tr align="center">
							<td width="100">
								<a href="selectInfoServlet?infotypeid=5" style="color:white" target="default">招商引资</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=6" style="color:white" target="default">公寓信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=7" style="color:white" target="default">求职信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=8" style="color:white" target="default">家教信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=9" style="color:white" target="default">车辆信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=10" style="color:white" target="default">出售信息</a>
							</td>
							<td width="100">
								<a href="selectInfoServlet?infotypeid=11" style="color:white" target="default">寻找启示</a>
							</td>    
						</tr>                      
					</table>
                    
                </td>
            </tr>
        </table>
        <table border="0" width="100%" height="90" cellspacing="0" cellpadding="0" style="margin-top:1">
            <tr><td align="center"><img src="images/pcard1.jpg"></td></tr>
        </table>
    </center>
</body>
</html>