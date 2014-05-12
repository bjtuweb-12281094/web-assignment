<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="beans.*"%>
<%@ page import="db.*"%>
<%@ page import="biz.*"%>
<%@ page import="java.util.*"%>
<%
String tempid = request.getParameter("id");
int id ;
id = (tempid!= null)?Integer.parseInt(tempid):1;			//改过
String action = request.getParameter("action");
VoteBiz vb = new VoteBiz();
Vote vote = vb.getVoteById(id);
if(action!= null&&action.equals("delete")){ 
vb.deleteVote(id);
vb.updataVoteByVote(vote);
out.print("<script>alert('删除数据成功!');window.close();</script>");
}
%>
<HTML>
<HEAD>
<TITLE> main </TITLE>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<link href="css.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
<TABLE width="100%" border="1" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
<TR><form method="post" action="deletevote.jsp?action=delete">
	<TD class="css" height="27" bgcolor="#f7f7f7"colspan="2" align="center"><b>修改投票项目</b></TD>

<TR>

	<TD width="20%" align="center" class="css">项目名称：</TD>
	<TD width="80%" class="css"><input name="vname" type="text" class="inputt" value="<%=vote.getVname()%>" size="60"></TD>
</TR>
<TR>
	<TD class="css" align="center">投票数目：</TD>
	<TD class="css"><input name="vcount" type="text" class="inputt" value="<%=vote.getVcount()%>" size="60"></TD>
</TR>
<TR>
	<TD class="css" align="center" colspan="2">
	<input type="submit" value="删除" class="buttonn">&nbsp;&nbsp;
	<input type="hidden" name="id" value="<%=vote.getId()%>"></TD>
</TR>


</form>
</TABLE>

</BODY>
</HTML>