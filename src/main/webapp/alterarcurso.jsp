<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Curso" %>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="listarcurso.jsp">Voltar</a></button>
	<br>----<br>

	<%
		Curso cursoAlterar = (Curso) request.getAttribute("curso");
		DecimalFormat fmt = new DecimalFormat("###0,00");
	%>
	<form method="post" action="ExecutaAlteraCurso">
		<label>Nome:</label><br>
		<input type="text" name="nomeCurso" value="<%=cursoAlterar.getNome() %>"/><br>
		
		<label>Mensalidade:</label><br>
		<input type="number" name="mensalidade" value="<%= cursoAlterar.getValor() %>" step="0.01"/>
		
		<input type="hidden" name="id" value ="<%= cursoAlterar.getId() %>" />
		
		<br><input type="submit" value="Alterar"/>
		
	</form>

</body>
</html>