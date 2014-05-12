<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="beans.*"%>
<%@ page import="db.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>

<%
DBCtrol dbctrol = new DBCtrol();
Role role = dbctrol.getRoleById(1);
double totalnum = dbctrol.totalVote() ;
%>
<HEAD>
<TITLE><%=role.getSitename()%>--- 投票首页</TITLE>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<link href="css.css" rel="stylesheet" type="text/css">
</HEAD>

<BODY>
<div align="center"><img src="head.jpg"></div>
<TABLE border="0" align="center" width="30%" cellpadding="2" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#cccccc">
<TR>
	<TD class="css" colspan="4" align="center" height="27"><b><font color="#cc0000"><%=role.getSitename()%></font></b><br><FONT color="#666666">目前共有
	<font color="#cc0000"><%=totalnum%></font>
	人投票</font></TD>
</TR>
<%
List list = dbctrol.getVoteList();
if(list!= null){
for(int i=0;i<list.size();i++){
Vote vote = (Vote)list.get(i);
double ii = (vote.getVcount()/totalnum)*100;
NumberFormat formatter= NumberFormat.getNumberInstance();   
formatter.setMaximumFractionDigits(2); 
String vs   =   formatter.format(ii)+"%"; 
%>
<TR>
	<TD width="46%" class="css"><%=i%>、<%=vote.getVname()%>&nbsp;<FONT color="#666666">(</font><FONT color="#cc0000"><%=vote.getVcount()%></font><FONT color="#666666">)</font></TD>
	<TD width="30%" align="left" class="css"><img src="ba.gif" border="0" width="<%=(vote.getVcount()/totalnum)*100%>" height="10"></td><td width="24%" align="center" class="css">&nbsp;<%=vs%></TD>
	
</TR>
<%
}
}
%>
</TABLE>
<div align="center">
  <form name="form1" method="post" action="">
    <input name="button" type=button onClick="javascript:self.close();" value="关闭窗口" class="buttonn">
    </form>
</div>
</BODY>
</HTML>