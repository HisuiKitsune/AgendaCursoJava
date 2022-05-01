<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Professores</title>
</head>
<body>

	<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="listarprofessor.jsp">Voltar</a></button>
	<br>----<br>

	<%
		Professor professorAlterar = (Professor) request.getAttribute("professor");
		DecimalFormat fmt = new DecimalFormat("###0,00");
	%>
	<form method="post" action="ExecutaAlteraProfessor">
		<label>Nome:</label><br>
		<input type="text" name="nome" value="<%=professorAlterar.getNome() %>"/><br>
		
		<label>Celular: </label><br>
		<input type="text" name="celular" value="<%= professorAlterar.getCelular() %>"/><br>
		
		<label>Valor/Hora: </label><br>
		<input type="number" name="valorhora" value="<%= professorAlterar.getValorHora() %>"step="0.01"/>
		
		<input type="hidden" name="id" value ="<%= professorAlterar.getIdprofessor() %>" />
		
		<br><input type="submit" value="Alterar"/>
		
	</form>

</body>
</html>