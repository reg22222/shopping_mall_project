<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.*"%>
<!-- prod_delete.jsp -->
<%
	String pnum = request.getParameter("pnum");
	String pimage = request.getParameter("pimage");
	String upPath = request.getServletContext().getRealPath("/myShop/img");
%>
<jsp:useBean id="pdao" class="myshop.ProductDAO"/>
<%
	int res = pdao.deleteProduct(Integer.parseInt(pnum));
	String msg = null, url = "prod_list.jsp";
	if (res>0){
		File file = new File(upPath, pimage);
		if (file.exists()){
			file.delete();
			msg = "���ϻ�������(�̹����� ���� ����)!! ��ǰ����������� �̵��մϴ�.";
		}else {
			msg = "���ϻ�������(�̹��� ������ ����)!! ��ǰ����������� �̵��մϴ�.";
		}
	}else {
		msg = "���ϻ�������!! ��ǰ����������� �̵��մϴ�.";
	}
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>








