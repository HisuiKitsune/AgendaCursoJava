<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Professores</title>
</head>
<body>

	<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="index.jsp">Home</a></button>
	<button style="padding:5px;"><a style="color:blue;text-decoration:none;" href="listarprofessor.jsp">Listar Professores</a></button>
	<br/>----<br/>
	
	<form method="post" action="ProfessorServlet">
		<label>Nome: </label><br>
		<input type="text" name="nome" required /><br>
		<label>Celular: </label><br>
		<input type="text" name="celular" required/><br>
		<label>Valor/Hora: </label><br>
		<input type="number" name="valorhora" step="0.01"/>
	
		<br><input type="submit" value="Gravar"/>
	</form>

</body>
</html>