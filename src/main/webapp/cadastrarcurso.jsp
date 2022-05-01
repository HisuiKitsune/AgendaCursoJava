<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Cursos</title>
</head>
<body>
	<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="index.jsp">Home</a></button>
	<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="listarcurso.jsp">Listar Cursos</a></button>
	<br/>----<br/>
	
	<form method="post" action="CursoServlet">
		<label>Nome: </label><br>
		<input type="text" name="nomecurso" required /><br>
		<label>Valor: </label><br>
		<input type="number" name="mensalidade" required
		       step="0.01" />
	
		<br><input type="submit" value="Gravar" />
	</form>
</body>
</html>