<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, myshop.*"%>
<!-- cate_list.jsp -->
<%@ include file="top.jsp"%>
<div align="center">
	<table border="1" width="600">
		<caption>ī�װ����</caption>
		<tr bgcolor="yellow">
			<th>��ȣ</th>
			<th>ī�װ��ڵ�</th>
			<th>ī�װ� ��</th>
			<th>����</th>
		</tr>
	<jsp:useBean id="cdao" class="myshop.CategoryDAO"/>
<%	List<CategoryDTO> clist = cdao.listCategory(); 
	if (clist == null || clist.size() == 0){%>
		<tr>
			<td colspan="4">��ϵ� ī�װ��� �����ϴ�.</td>
		</tr>
<%	}else { 
		for (CategoryDTO dto : clist){%>
		<tr>
			<td><%=dto.getCnum()%></td>
			<td><%=dto.getCode()%></td>
			<td><%=dto.getCname()%></td>
			<td>
				<a href="cate_delete.jsp?cnum=<%=dto.getCnum()%>">
					����
				</a>
			</td>
		</tr>
<%		} 
	}%>			
	</table>
</div>
<%@ include file="bottom.jsp"%>