<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, myshop.*"%>
<jsp:useBean id="cdao" class="myshop.CategoryDAO"/>
<%
	List<CategoryDTO> clist = cdao.listCategory();
	if (clist == null || clist.size()==0){%>
		<script type="text/javascript">
			alert("���θ� �غ��� �Դϴ�.")
			location.href="../admin/main.jsp"
		</script>	
<%		return;
	}
%>
<html>
<head>
	<title>���θ�Ȩ</title>
	<script type="text/javascript">
		function goProlist(code, cname){
			document.f1.code.value = code
			document.f1.cname.value = cname
			document.f1.submit()
		}
	</script>
</head>
<body>
	<div align="center">
		<table border="1" width="800">
			<tr height="50">
				<td align="center" colspan="2">
					HOME | ������Ȩ | ���θ�Ȩ | ��ٱ��� | ȸ��Ұ�			
				</td>
			</tr>
			<tr height="500">
				<td valign="top" width="20%" align="center">
					tree/view
					<table border="1">
<%					for(CategoryDTO cdto : clist){ %>						
						<tr>
							<td>
								<a href="javascript:goProlist('<%=cdto.getCode()%>','<%=cdto.getCname()%>')">
								<%=cdto.getCname()%>[<%=cdto.getCode()%>]
								</a>
							</td>		
						</tr>
<%					} %>						
					</table>
					<form name="f1" action="mall_cgProdList.jsp" method="post">
						<input type="hidden" name="code">
						<input type="hidden" name="cname">
					</form>
				</td>
				<td>
				