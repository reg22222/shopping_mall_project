<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- cate_delete.jsp -->
<%
	String cnum = request.getParameter("cnum");
%>
<jsp:useBean id="cdao" class="myshop.CategoryDAO"/>
<%
	int res = cdao.deleteCategory(Integer.parseInt(cnum));
	if (res>0){%>
		<script type="text/javascript">
			alert("ī�װ� ���� ����!! ī�װ� ����������� �̵��մϴ�.")
			location.href="list.jsp";
		</script>	
<%	}else {%>
		<script type="text/javascript">
			alert("ī�װ� ���� ����!! ī�װ� ����������� �̵��մϴ�.")
			location.href="list.jsp";
		</script>
<%	}%>