<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="beans.*"%>
<%@ page import="db.*"%>
<%@ page import="biz.*"%>
<%@ page import="java.util.*"%>
<%
VoteBiz vb = new VoteBiz();
List list = vb.getVoteList();
%>
<HTML>
<HEAD>
<TITLE> main </TITLE>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<link href="css.css" rel="stylesheet" type="text/css">
<script language="javascript">
<!--
function openWindow(theURL,winName,features) { 
  window.open(theURL,winName,features);
}//-->
</script>
</HEAD>
<BODY>
<div align="center"><img src="head.jpg"></div>
<TABLE width="98%" border="0" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
<tr>
<td class="css" align="center">
<TABLE width="487" border="1" cellpadding="2" cellspacing="0" bordercolorlight="#cccccc" bordercolordark="#ffffff">
        <TR>
	<TD class="css" align="center" bgcolor="#f7f7f7" height="27">序号</TD>
	<TD class="css" align="center" bgcolor="#f7f7f7" height="27">项目名称</TD>
	<TD class="css" align="center" bgcolor="#f7f7f7" height="27">投票数</TD>
	<TD class="css" align="center" bgcolor="#f7f7f7" height="27">修改</TD>
	<TD class="css" align="center" bgcolor="#f7f7f7" height="27">删除</TD>
</TR>
<%
if(list != null){
for(int i=0;i<list.size();i++){
Vote vote = (Vote)list.get(i);
%>
<tr>
	<td class="css" align="center"><%=vote.getId()%></td>
	<td class="css"><%=vote.getVname()%></td>
	<td class="css" align="center"><%=vote.getVcount()%></td>
	<td class="css" align="center"><a href="#" onClick="openWindow('editvote.jsp?id=<%=vote.getId()%>','dd','scrollbars=yes,width=500,height=150')">修改</a></td>
	<td class="css" align="center"><a href="#" onClick="openWindow('deletevote.jsp?id=<%=vote.getId()%>','dd','scrollbars=yes,width=500,height=150')">删除</a></td>
</tr>

<%
}
}
String action = request.getParameter("action");
if(action!= null&&action.equals("addvote")){
String name = request.getParameter("vname");
vb.insertVote(name);
out.print("<script>alert('添加数据成功!');window.close();</script>");
}
%>

<tr><form method="post" action="mainvote.jsp?action=addvote">
<td class="css" colspan="5">添加投票项目：<input type="text" name="vname" class="inputt">&nbsp;<input type="submit" 

value="添加" class="buttonn"></td>
</form>
</tr>
</TABLE>
</td></tr>
</table>
<hr>
<div class="text" style="text-align:center;font-size:12px;"> 2014 北京交通大学 计算机与信息技术学院  马语丹 &copy;版权所有</div>
</BODY>
</HTML>