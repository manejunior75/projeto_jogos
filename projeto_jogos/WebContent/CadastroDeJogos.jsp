<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<a href="https://api.whatsapp.com/send?l=pt&amp;phone=5583999509553"><img src="images/icon_whats.png" style="height:80px; position:fixed; bottom: 25px; right: 25px; z-index:100;" data-selector="img"></a>
<head>
<meta charset="UTF-8">
<title>Cadastro de Jogos</title>
<link rel="shortcut icon" type="image/x-icon" href="images/top.png" />
<link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css">
</head>
<body>

<% 
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	
	if(email.equals("projeto@gmail.com")&& senha.equals("12345")){
		%>
		<div class="container">
		
			<div class="header clearfix">
				<center>
					<h2>Cadastro de Jogos</h2>
				</center>
			</div>
		
			<div class="jumbotron">
				<form action="ok.jsp" method="post">
					<div id="aviso"></div>
					<div class="form-group">
						<center>
							<label>Nome do Jogo</label>
						</center>
						<input type="text" id="nomeDoJogo" class="form-control"
							name="nomeDoJogo" placeholder="Digite o nome do jogo"><br />
						<div class="form-group">
							<center>
								<label>Informações Sobre o Jogo</label>
							</center>
							<input type="text" id="info1" class="form-control" name="info1"
								placeholder="Digite o 1º Paragrafo"><br /> 
								<input type="text" id="info2" class="form-control" name="info2"
								placeholder="Digite o 2º Paragrafo"><br /> 
								<input type="text" id="info3" class="form-control" name="info3"
								placeholder="Digite o 3º Paragrafo"><br />
								
							<center>
								<label>Plataformas do jogo</label>
							</center>
								<input type="text" id="plataformas" class="form-control" name="plataformas"
								placeholder="ex: PS3, PS4, X360, XONE, Windows"><br/>
								
							<center>
								<label>Imagem do Jogo</label>
							</center>
							<input type="text" id="imgJogo" class="form-control"
								name="imgJogo" placeholder="Digite o endereço da imagem"><br />
		
							<center>
								<label>Capa do jogo</label>
							</center>
							<input type="text" id="capaJogo" class="form-control"
								name="capaJogo" placeholder="Digite o endereço da imagem"><br />
							
							<center>
								<label>Gêneros do jogo</label>
							</center>
							<input type="text" id="categoria1" class="form-control"
								name="categoria1" placeholder="Digite o gênero do jogo"><br />
							<input type="text" id="categoria2" class="form-control"
								name="categoria2" placeholder="Digite o segundo gênero do jogo"><br />
							<input type="text" id="categoria3" class="form-control"
								name="categoria3" placeholder="Digite o terceiro gênero do jogo"><br />
							<input type="text" id="destaque" class="form-control"
								name="destaque" placeholder="O jogo vai estar na pagina destaque? sim ou não"><br />
						</div>
		
						<center>
							<button type="submit" class="btn btn-primary">Cadastrar</button>
						</center>
						<br>
					</div>
				</form>
				<hr>
				<a href="index.jsp">Cancelar Cadastro</a>
		
			</div>
		</div>
		<div class="col-sm-4"></div>
<%
	}else{
		%>
		<h2>Senha incorreta</h2><%
	}

%>
</body>
</html>