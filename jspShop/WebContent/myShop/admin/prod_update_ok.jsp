<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.oreilly.servlet.*, java.io.*"%>
<!-- prod_update_ok.jsp -->
<%
	MultipartRequest mr = null;
	String upPath = config.getServletContext().getRealPath("/myShop/img");
	try{
		mr = new MultipartRequest(request,upPath,10*1024*1024,"EUC-KR");
	}catch(IOException e){
		out.println("<h2>���� ���ε� ����</h2>");
		e.printStackTrace();
	}
%>
<jsp:useBean id="pdao" class="myshop.ProductDAO"/>
<%
	int res = pdao.updateProduct(mr);	
	if (res>0){%>
		<script type="text/javascript">
			alert("��ǰ���� ����!! ��ǰ����������� �̵��մϴ�.")
			location.href="prod_list.jsp"
		</script>
<%	}else {%>  
		<script type="text/javascript">
			alert("��ǰ���� ����!! ��ǰ������������ �̵��մϴ�.")
			location.href="prod_update.jsp?pnum="+mr.getParameter("pnum");
		</script>
<%	}%>





