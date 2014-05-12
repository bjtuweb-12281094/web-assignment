<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="beans.*"%>
<%@ page import="db.*"%>
<%@ page import="java.util.*"%>
<HTML>
	<HEAD>
		<TITLE>New Document</TITLE>
		<meta http-equiv="content-type" content="text/html; charset=gb2312">
		<link href="css.css" rel="stylesheet" type="text/css">
	</HEAD>
	<BODY>
	<div align="center"><img src="head.jpg"></div>
		<%DBCtrol dbctrol = new DBCtrol();
			String action = request.getParameter("action");
			if ((action != null) && action.equals("login")) {
				String admins = request.getParameter("admins");
				String pass = request.getParameter("passs");
				boolean flag = dbctrol.checkRole(admins, pass);
				if (flag) {
					session.setAttribute("admins", "admin");
					response.sendRedirect("admin_index.jsp");
				} else {
					out.print("<script>alert('您输入的用户名或密码不正确，请重新输入!')</script>");
                    session.setAttribute("admins", null);
				}
			}
		%>
		<center>
			<TABLE border="1" width="50%" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
				<TR>
					<TD class="css" colspan="2" align="center" bgcolor="#f7f7f7">
						<b>admin login</b>
					</TD>

				</TR>
				<TR>
					<form method="post" action="adminn.jsp?action=login">
					<TD class="css" align="center">
						admin:
					</TD>
					<TD class="css">
						<input type="text" name="admins" class="inputt">
					</TD>
				<TR>
					<TD class="css" align="center">
						key:
					</TD>
					<TD class="css">
						<input type="password" name="passs" class="inputt">
					</TD>
				</TR>
				<TR>
					<TD colspan="2" class="css" align="center">
						<input type="submit" value="submit" class="buttonn">
						&nbsp;&nbsp;
						<input type="reset" value="reset" class="buttonn">
					</TD>
				</TR>
				</form>
			</TABLE>
		</center>
		
	</BODY>
</HTML>
