<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, myshop.*"%>
<!-- prod_input.jsp -->
<%@ include file="top.jsp"%>
<jsp:useBean id="cdao" class="myshop.CategoryDAO"/>
<%
	List<CategoryDTO> clist = cdao.listCategory();
	if (clist == null || clist.size()==0){%>
		<script type="text/javascript">
			alert("ī�װ��� ���� ����� �ּ���!!")
			location.href="cate_input.jsp"
		</script>	
<%		return;
	}
%>
<div align="center">
<form name="f" action="prod_input_ok.jsp" method="post" 
				enctype="multipart/form-data">
	<table border="1" width="70%">
		<caption>��ǰ���ī�װ�</caption>
		<tr>
			<th width="20%" bgcolor="orange">ī�װ�</th>
			<td align="left">
				<select name="code">
<%				for (CategoryDTO cdto : clist){ %>
					<option value="<%=cdto.getCode()%>">
						<%=cdto.getCname()%>[<%=cdto.getCode()%>]
					</option>
<%				} %>					
				</select>
			</td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">��ǰ��</th>
			<td align="left"><input type="text" name="pname"></td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">��ǰ�ڵ�</th>
			<td align="left"><input type="text" name="pcode"></td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">����ȸ��</th>
			<td align="left"><input type="text" name="pcompany"></td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">��ǰ�̹���</th>
			<td align="left">
				<input type="file" name="pimage">
			</td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">��ǰ����</th>
			<td align="left"><input type="text" name="pqty"></td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">��ǰ����</th>
			<td align="left"><input type="text" name="price"></td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">��ǰ����</th>
			<td align="left">
				<select name="pspec">
					<option value="NORMAL">normal</option>
					<option value="HIT">hit</option>
					<option value="BEST">best</option>
					<option value="NEW">new</option>
				</select>
			</td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">��ǰ�Ұ�</th>
			<td align="left">
				<textarea name="pcontents" rows="5" cols="50"></textarea>
			</td>
		</tr>
		<tr>
			<th width="20%" bgcolor="orange">��ǰ����Ʈ</th>
			<td align="left"><input type="text" name="point"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="��ǰ ���">
				<input type="reset" value="���">
			</td>
		</tr>
	</table>			
</form>
</div>
<%@ include file="bottom.jsp"%>
















