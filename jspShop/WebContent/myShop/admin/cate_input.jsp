<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- cate_input.jsp -->
<%@ include file="top.jsp"%>
<div align="center">
	<form name="f" action="cate_input_ok.jsp" method="post">
		<table border="1" width="300" height="150">
			<caption>ī�װ� ���</caption>
			<tr>
				<th bgcolor="yellow" width="40%">ī�װ��ڵ�</th>
				<td><input type="text" name="code"></td>
			</tr>
			<tr>
				<th bgcolor="yellow" width="40%">ī�װ��̸�</th>
				<td><input type="text" name="cname"></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="orange" align="center">
					<input type="submit" value="���">
					<input type="reset" value="���">
				</td>
			</tr>
		</table>	
	</form>
</div>
<%@ include file="bottom.jsp"%>