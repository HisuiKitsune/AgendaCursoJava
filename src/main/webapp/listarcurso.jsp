<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="br.com.cursoja.agendacurso.controller.CursoController" %>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Curso" %>  
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listagem de Cursos</title>
</head>
<body>
		<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="index.jsp">Home</a></button>
		<button style="padding:5px;"><a style="color:green;text-decoration:none;" href="cadastrarcurso.jsp">Cadastrar Curso</a></button>
		<br>----<br>
	<table>
		<thead>
			<th>Nome</th>
			<th>Valor</th>
			<th>Ações</th>
		</thead>
		<tbody>
	<% 
		CursoController controller = new CursoController();
		ArrayList<Curso> lista = controller.listar("");
		
		DecimalFormat fmt = new DecimalFormat("###0.00");
		for (Curso c : lista) {
	%>	
			<tr>
				<td><%= c.getNome() %></td>
				<td><%= fmt.format(c.getValor())  %></td>
				<td>
				<a href="InicioAlteraCurso?id=<%= c.getId() %>">Alterar</a> 
				<a href="ExcluirCurso?id=<%= c.getId() %>" onclick="return confirm('Deseja excluir esse registro?')">Excluir</a>
				<!--<a href="ExcluirCurso?id=<%= c.getId() %>" onclick="if(!confirm('Deseja excluir esse registro?')){return false}">Excluir</a>-->
				</td>
			</tr>
	
	<% } %>
		</tbody>
	</table>
</body>
</html>