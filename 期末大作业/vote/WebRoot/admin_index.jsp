<%@ page contentType="text/html;charset=gb2312"%>
<%
if (session.getAttribute("admins")==null){
response.sendRedirect("adminn.jsp");
}
%>
<HTML>
<HEAD>
<TITLE> New Document </TITLE> 
<meta http-equiv="content-type" content="text/html; charset=gb2312">
</HEAD>

<FRAMESET ROWS="289" COLS="156,622">
	<FRAME SRC="left.jsp" NAME="">
	<FRAME SRC="main.jsp" NAME="main">
</FRAMESET>
<noframes></noframes>

</HTML>
