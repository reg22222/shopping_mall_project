<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="myshop.*"%>
<!-- prod_view.jsp -->
<%@ include file="top.jsp"%>
<jsp:useBean id="pdao" class="myshop.ProductDAO"/>
<%
	String pnum = request.getParameter("pnum");
	ProductDTO pdto = pdao.getProduct(Integer.parseInt(pnum));
	String upPath = config.getServletContext().getRealPath("/myShop/img");
%>
<div align="center">
	<form name="f" action="prod_list.jsp" method="post">
		<table border="1" width="80%">
			<caption>��ǰ�󼼺���</caption>
			<tr>
				<th bgcolor="orange" width="15%">ī�װ�</th>
				<td width="35%"><%=pdto.getPcategory_fk()%></td>
				<th bgcolor="orange" width="15%">��ǰ��ȣ</th>
				<td width="35%"><%=pdto.getPnum()%></td>
			</tr>
			<tr>
				<th bgcolor="orange" width="15%">��ǰ��</th>
				<td width="35%"><%=pdto.getPname()%></td>
				<th bgcolor="orange" width="15%">����ȸ��</th>
				<td width="35%"><%=pdto.getPcompany()%></td>
			</tr>
			<tr>
				<th bgcolor="orange" width="15%">��ǰ��</th>
				<td align="center" colspan="3">
					<img src="<%=upPath%>/<%=pdto.getPimage()%>" width="80" height="80">
				</td>
			</tr>
			<tr>
				<th bgcolor="orange" width="15%">��ǰ����</th>
				<td width="35%"><%=pdto.getPqty()%></td>
				<th bgcolor="orange" width="15%">��ǰ����</th>
				<td width="35%"><%=pdto.getPrice()%></td>
			</tr>
			<tr>
				<th bgcolor="orange" width="15%">��ǰ����</th>
				<td width="35%"><%=pdto.getPqty()%></td>
				<th bgcolor="orange" width="15%">��ǰ����Ʈ</th>
				<td width="35%"><%=pdto.getPoint()%></td>
			</tr>
			<tr>
				<th bgcolor="orange" width="15%">��ǰ�Ұ�</th>
				<td colspan="3">
					<textarea name="pcontents" rows="5" cols="70"><%=pdto.getPcontents()%></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="submit" value="���ư���">
				</td>
			</tr>
		</table>
	</form>
</div>
<%@ include file="bottom.jsp"%>