<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.model.dao.Conexao" %>
<%@ page import="br.com.cursoja.agendacurso.model.dao.CursoDao" %>
<%@ page import="br.com.cursoja.agendacurso.model.dao.ProfDao" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Curso" %>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" /><title>Java Courses</title>
<script src="jquery-2.1.4.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet"> 
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body onload="pulse();">
		
<div class="box1">
</div>
		<div class="box2">
		<h2><i class="fa-brands fa-java fa-2xl"></i></h2>
			<i class="fa-solid fa-key fa-xl"></i>
			<button class="adminbutton"><a href="Login.jsp">Admin Tools</a></button>
			<p class="curso">Courses</p>
			<button><a href="cadastrarcurso.jsp">Register</a></button>
			<button class="lista"><a href="listarcurso.jsp">List</a></button>
			<p class="professores">Teachers</p>
			<button><a href="cadastrarprofessor.jsp">Register</a></button>
			<button><a href="listarprofessor.jsp">List</a></button>
			<img src="./img/logoOracle.png">
		</div>

	<%
		//Conexao c = new Conexao();
		//c.getConexao();
		
		//c.fecharConexao();
		
		//Curso curso = new Curso();
		//curso.setNome("Word");
		//curso.setValor(300);
		
		//Curso curso3 = new Curso();
		
		//Curso curso2 = new Curso();
		//curso2.setNome("Datilografia");
		//curso2.setValor(50);
		
		//CursoDao dao = new CursoDao();
		//dao.cadastrar(curso);
		//dao.cadastrar(curso2);
		
		//Curso cursoAlterar = new Curso();
		//cursoAlterar.setNome("Office");
		//cursoAlterar.setValor(500);
		//cursoAlterar.setId(1);
		//dao.alterar(cursoAlterar);
		
		//ArrayList<Curso> cursos = dao.listar("");
		
		//DecimalFormat fmt = new DecimalFormat("###0.00");
	//	for(Curso a : cursos){ 
		
		//Curso unico = dao.buscar(1);
		//curso3.setId(4);
		//dao.excluir(curso3);
	%>	
</body>
</html>