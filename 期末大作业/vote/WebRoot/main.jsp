<%@ page contentType="text/html;charset=gbk"%>
<%@ page import="beans.*"%>
<%@ page import="db.*"%>
<%@ page import="biz.*"%>
<%@ page import="java.util.*"%>
<%
DBCtrol dbctrol = new DBCtrol();
RolBiz rolBiz = new RolBiz();
Role role = rolBiz.getRoleById(1);
String action = request.getParameter("action");
if(action!= null&&action.equals("edit")){
role.setAdmins(request.getParameter("admins"));
role.setPass(request.getParameter("pass"));
role.setSitename(request.getParameter("sitename"));
role.setChecks(Integer.parseInt(request.getParameter("check")));
rolBiz.updataRoleByRole(role);
}
%>
<HTML>
<HEAD>
<TITLE> main </TITLE>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<link href="css.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
<div align="center"><img src="head.jpg"></div>
<TABLE align="center"width="60%" border="1" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
<TR>
<form method="post" action="main.jsp?action=edit">
	<TD class="css" height="27" bgcolor="#f7f7f7"colspan="2" align="center"><b>ϵͳ����</b></TD>

<TR>

	<TD class="css" align="center">����Ա���ƣ�</TD>
	<TD class="css"><input type="text" name="admins" 

class="inputt" value="<%=role.getAdmins()%>"></TD>
</TR>
<TR>
	<TD class="css" align="center">����Ա���룺</TD>
	<TD class="css"><input type="password" name="pass" class="inputt" 

value="<%=role.getPass()%>"></TD>
</TR>
<TR>
	<TD class="css" align="center">��վ���ƣ�</TD>
	<TD class="css"><input type="text" name="sitename" 

class="inputt" value="<%=role.getSitename()%>"></TD>
</TR>

<TR>
	<TD class="css" align="center">ͶƱ���ͣ�<br>&nbsp;&nbsp;<font 

color="#cc0000">"1"Ϊ��ѡͶƱ��"0"Ϊ��ѡͶƱ

</font></TD>
	<TD class="css"><input type="text" name="check" class="inputt" 

value="<%=role.getChecks()%>"></TD>
</TR>
<TR>
	<TD class="css" align="center" colspan="2"><input 

type="submit" value="�޸�" class="buttonn">&nbsp;&nbsp;<input 

type="reset" value="ȡ���޸�" class="buttonn"></TD>
</TR>


</form>
</TABLE>
<hr>
<div class="text" style="text-align:center;font-size:12px;"> 2014 ������ͨ��ѧ ���������Ϣ����ѧԺ  ���ﵤ &copy;��Ȩ����</div>
</BODY>
</HTML>