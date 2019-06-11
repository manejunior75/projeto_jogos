<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="Conexao.Conecta"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<!-- Estilizando botão para ficar igual um href -->

<style>
	.titleGenero{
		color:#fff;
		font-size: 20px
	}
	.btn-link {
		border: none;
		outline: none;
		background: none;
		cursor: pointer;
		color: #717171;
		font-family: inherit;
		font-size: 1.2em;
		display: block;
		transition:0.5s all;
		-webkit-transition:0.5s all;
		-moz-transition:0.5s all;
		-o-transition:0.5s all;
	}
	.btn-link:hover{
		color:#B9CB41;
	}
</style>

<!-- Fim da estilização -->

		<title>Retorna Pesquisa</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="utf-8">
		<link rel="shortcut icon" type="image/x-icon" href="images/top.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!----webfonts---->
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<!-- Global CSS for the page and tiles -->
  		<link rel="stylesheet" href="css/main.css">
  		<!-- //Global CSS for the page and tiles -->
		<script src="js/jquery.min.js"></script>
</head>
<body>

<div class="content">
	<div class="wrap">
	
	<!-- Início código rádio -->
		
				<div id="cp_widget_4487f155-0588-4cf8-bb0e-fba410f76f4f">...</div>
				<script type="text/javascript">
				var cpo = [];
				cpo["_object"] = "cp_widget_4487f155-0588-4cf8-bb0e-fba410f76f4f";
				cpo["_fid"] = "AgIAdh-8Ylh-";
				var _cpmp = _cpmp || [];
				_cpmp.push(cpo);
				(function() {
				var cp = document.createElement("script");
				cp.type = "text/javascript";
				cp.async = true;
				cp.src = "//www.cincopa.com/media-platform/runtime/libasync.js";
				var c = document.getElementsByTagName("script")[0];
				c.parentNode.insertBefore(cp, c);
				})();
				</script>
				<noscript>
				<span>Rádio Streamig</span>
				</noscript>
				
				<!-- Fim rádio -->
				

<%

						String nomeJogo = request.getParameter("nomeJogo");
						String nome="";
						String img="";
					
						if(nomeJogo.equals("gta v") || nomeJogo.equals("gta 5") || nomeJogo.equals("gta")){
							nomeJogo="grand theft auto v";
						}
						try{
							Connection con = Conecta.getConnection();
							String sql = "select nome_jogo, img_jogo from jogos where nome_jogo like ?";
							PreparedStatement stmt = con.prepareStatement(sql);
							stmt.setString(1, "%"+nomeJogo+"%");
							ResultSet rs = stmt.executeQuery();
							while (rs.next()) {
								nome = (rs.getString("nome_jogo"));
								img = (rs.getString("img_jogo"));
								%>
								<li onclick="location.href='jogos.jsp';"><img src="<%out.print(rs.getString("img_jogo"));%>" width="180" height="208">
								<div class="post-info">
									<div class="post-basic-info">
										<form action="jogos.jsp" method="post" id="envia">
											<input type="text" value="<%out.print(rs.getString("nome_jogo"));%>" name="nomeJogo" id="nomeJogo" style="display: none">
											<h3><button type="submit" class="btn-link"><%out.print(rs.getString("nome_jogo"));%></button></h3>
											<!-- <span><a href="#"><label> </label>Saiba Mais</a></span>-->
										</form>
									</div>
								</div>
								</li>
								<%
							}
						}catch(Exception e){
							out.print("Deu erro: "+e);
						}
%>
					

</body>
</html>