<%@page import="market.produser.ProdUserBean"%>
<%@page import="market.produser.ProdUserDao"%>
<%@page import="market.prod.ProdBean"%>
<%@page import="market.prod.ProdDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
.fqUDQ {
    background-color:black; ;
    border: 1px solid rgb(223, 0, 0);
    color: rgb(255, 255, 255);
}
button {
	width: 100px;
	height: 50px;
}
</style>
<%@ include file="tradeTop.jsp"%>
<tr>
	<td width="1000" height="500">
	<%
	String tnum = request.getParameter("tnum");
	ProdUserDao pdao =ProdUserDao.getInstance();
	ProdUserBean pub= pdao.selectNumProd(tnum, id);
	%>
	<table border="0">
		<tr>
		<td rowspan="4">
		<img alt="" src="../img/<%=pub.getTimg()%> " width="400">
		<td>
		<td width="300" align="center">
		<table border="0">
		<tr><td><%=pub.getTcate()%> > </td></tr>
		<tr><td><h2><%=pub.getTname()%></h2></td></tr>
		<tr><td><h2><%=pub.getTprice()%> 원  </h2></td></tr>
		<tr><td><%=pub.getTinfor()%></td></tr>
		</table>		
		</td>
		</tr>
		
		<tr>
		<td colspan="2" align="center" >
		<button class="fqUDQ" onclick="location.href='UserProdUpdate.jsp?id=<%=id%>&tnum=<%=tnum%>'">	수 정  </button>
		
		<button class="fqUDQ" onclick="location.href='UserProdDelete.jsp?id=<%=id%>&tnum=<%=tnum%>'">삭 제 </button>
		</td>
		</tr>
	</table>
	</td>
</tr>
<jsp:include page="../home/bottom.jsp" />