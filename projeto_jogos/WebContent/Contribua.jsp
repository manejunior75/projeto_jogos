<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Streamig | Contribua</title>
<link rel="shortcut icon" type="image/x-icon" href="images/top.png" />
<link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css">
</head>
<body>

<div class="container">
	
	<div class="header clearfix">
		<center>
			<h2>Contribua Conosco</h2>
		</center>
	</div>

	<div class="jumbotron">
		<% String id = "1"; %>
		<form action="confirma.html" method="post">
		<div id="aviso"></div>
			<div class="form-group">
				<input type="hidden" id="contribuicao"  name="conteudo" value="<%=id%>"> <br/>
				<center><input type="file" name="file" id="file" size=100></center>
			</div>	
			<center>
				<button type="submit" class="btn btn-primary">Contribuir</button>
			</center>
		</form>
		<a href="index.jsp">Cancelar Contribuição</a>
		<hr>
	</div>
</div>

</body>
</html>