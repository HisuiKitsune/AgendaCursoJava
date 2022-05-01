<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.controller.ProfessorController" %>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>  
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Professores</title>
</head>
<body>

		<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="index.jsp">Home</a></button>
		<button style="padding:5px;"><a style="color:green;text-decoration:none;" href="cadastrarprofessor.jsp">Cadastrar Professor</a></button>
		<br>----<br>
		
			<%
	String nomeBusca = request.getParameter("busca");
	
	if (nomeBusca == null){
		nomeBusca = "";
	}
	%>
		<form method="post" action="listarprofessor.jsp">
	<p>
		<input type="text" name="busca" value="<%= nomeBusca %>" />
		<input type="submit" value="Buscar" />
	</p>
		
	<table>
		<thead>
			<th>Nome</th>
			<th>Celular</th>
			<th>Valor/Hora</th>
			<th>Ações</th>
		</thead>
		<tbody>
	<% 
		System.out.println(nomeBusca);
		ProfessorController controller = new ProfessorController();
		ArrayList<Professor> lista = controller.listar(nomeBusca);
		
		DecimalFormat fmt = new DecimalFormat("###0.00");
		for (Professor p : lista) {
	%>	
			<tr>
				<td><%= p.getNome() %></td>
				<td><%= p.getCelular() %></td>
				<td><%= fmt.format(p.getValorHora())  %></td>
				<td>
				<a href="InicioAlteraProfessor?id=<%= p.getIdprofessor() %>">Editar</a> 
				<a href="ExcluirProfessor?id=<%= p.getIdprofessor() %>" onclick="return confirm('Deseja excluir esse registro?')">Excluir</a>
				</td>
			</tr>
	
	<% } %>
		</tbody>
	</table>
</body>
</html>