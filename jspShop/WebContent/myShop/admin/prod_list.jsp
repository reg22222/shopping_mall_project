<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, myshop.*"%>
<!-- prod_list.jsp -->
<%@ include file="top.jsp"%>
<jsp:useBean id="pdao" class="myshop.ProductDAO"/>
<script type="text/javascript">
	function checkDel(pnum, pimage){
		var isDel = window.confirm("������ �����Ͻðڽ��ϱ�?")
		if (isDel){
			location.href="prod_delete.jsp?pnum="+pnum+"&pimage="+pimage;
		}
	}
</script>
<%
	List<ProductDTO> plist = pdao.listProduct(); 
%>
<div align="center">
	<table border="1" width="100%">
		<caption>��ǰ���</caption>
		<tr>
			<th>��ȣ</th>
			<th>�ڵ�</th>
			<th>��ǰ��</th>
			<th>�̹���</th>
			<th>����</th>
			<th>������</th>
			<th>����</th>
			<th>����|����</th>
		</tr>
<%		if (plist == null || plist.size() == 0){ %>
		<tr>
			<td colspan="8">��ϵ� ��ǰ�� �����ϴ�.</td>
		</tr>
<%		}else {
			String upPath = config.getServletContext().getRealPath("/myShop/img");
			for(ProductDTO pdto : plist){%>
		<tr>
			<td><%=pdto.getPnum()%></td>
			<td><%=pdto.getPcategory_fk()%></td>
			<td><%=pdto.getPname()%></td>
			<td>
				<a href="prod_view.jsp?pnum=<%=pdto.getPnum()%>">
					<img src="<%=upPath%>/<%=pdto.getPimage()%>" width="40" height="40">
				</a>
			</td>
			<td><%=pdto.getPrice()%></td>
			<td><%=pdto.getPcompany()%></td>
			<td><%=pdto.getPqty()%></td>
			<td>
				<a href="prod_update.jsp?pnum=<%=pdto.getPnum()%>">����</a>|
				<a href="javascript:checkDel('<%=pdto.getPnum()%>','<%=pdto.getPimage()%>')">����</a></td>
		</tr>
<%			} 
		}%>		
	</table>
</div>
<%@ include file="bottom.jsp"%>