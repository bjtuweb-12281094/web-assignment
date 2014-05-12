<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="beans.*"%>
<%@ page import="db.*"%>
<%@ page import="biz.*"%>
<%@ page import="java.util.*"%>
<%
String tempid = request.getParameter("id");
int id = 1;
id = (tempid!= null)?Integer.parseInt(tempid):1;
String action = request.getParameter("action");
VoteBiz vb = new VoteBiz();
Vote vote = vb.getVoteById(id);
if(action!= null&&action.equals("edit")){
String tempVcount = request.getParameter("vcount");
int vCount = (tempVcount== null)?0:Integer.parseInt(tempVcount);
vote.setVname(request.getParameter("vname"));
vote.setVcount(vCount);
vb.updataVoteByVote(vote);
out.print("<script>alert('修改数据成功!');window.close();</script>");
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
<TR><form method="post" action="editvote.jsp?action=edit">
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
	<TD class="css" align="center" colspan="2"><input type="submit" value="修改" class="buttonn">&nbsp;&nbsp;<input 

type="reset" value="取消修改" class="buttonn"><input type="hidden" name="id" value="<%=vote.getId()%>"></TD>
</TR>


</form>
</TABLE>
<hr>
<div class="text" style="text-align:center;font-size:12px;"> 2014 北京交通大学 计算机与信息技术学院  马语丹 &copy;版权所有</div>
</BODY>
</HTML>