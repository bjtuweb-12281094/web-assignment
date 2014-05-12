<%@ page contentType="text/html;charset=gb2312"%>
<%
if (session.getAttribute("admins")==null){
response.sendRedirect("adminn.jsp");
}
%>
<HTML> 
<HEAD>
<TITLE> left </TITLE>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<link href="css.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
<center>
<TABLE width="98%" border="1" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
<TR>
	<TD class="css" bgcolor="#f7f7f7" height="27" align="center"><b>后台管理</b></TD>
</TR>
<TR>
	<TD class="css" align="center"><a href="main.jsp?action=vset" target="main">系统设置</a></TD>
</TR>
<TR>
	<TD class="css" align="center"><a href="mainvote.jsp" target="main">投票管理</a></TD>
</TR>

<TR>
	<TD class="css" align="center"><a href="adminn.jsp?action=logout" target="_parent">退出管理</a></TD>
</TR>
</TABLE></center>
</BODY>
</HTML>