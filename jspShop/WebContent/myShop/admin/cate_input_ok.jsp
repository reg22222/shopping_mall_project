<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- cate_input_ok.jsp -->
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="cdto" class="myshop.CategoryDTO"/>
<jsp:setProperty property="*" name="cdto"/>
<jsp:useBean id="cdao" class="myshop.CategoryDAO"/>
<%
	int res = cdao.insertCategory(cdto);
	String msg = null, url = null;
	if (res>0){
		msg = "ī�װ���ϼ���!! ī�װ� ����������� �̵��մϴ�.";
		url = "cate_list.jsp";
	}else {
		msg = "ī�װ���Ͻ���!! ī�װ� ����������� �̵��մϴ�.";
		url = "cate_input.jsp";
	}
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>