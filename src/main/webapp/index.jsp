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
<meta charset="UTF-8">
<title>Página inicial</title>
</head>
<body>
	<h2>Cursos Informática</h2>
	
	<button style="padding:5px;"><a style="color:green;text-decoration:none;" href="cadastrarcurso.jsp">Cadastrar Curso</a></button>
	<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="listarcurso.jsp">Listar Cursos</a></button>
	<br><br>
	<button style="padding:5px;"><a style="color:green;text-decoration:none;" href="cadastrarprofessor.jsp">Cadastrar Professor</a></button>
	<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="listarprofessor.jsp">Listar Professores</a></button>
	
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