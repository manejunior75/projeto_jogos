<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*" import="Conexao.Conecta"%>
<!DOCTYPE HTML>
<html>
<a href="https://api.whatsapp.com/send?l=pt&amp;phone=5583999509553"><img
	src="images/icon_whats.png"
	style="height: 80px; position: fixed; bottom: 25px; right: 25px; z-index: 100;"
	data-selector="img"></a>
<head>
<style>
.<
style>.coment {
	width: 100%;
	height: 50px;
	background-color: #222;
	font-family: 'Arial';
}

#bt_coment {
	display: none;
}

label[for="bt_coment"] {
	display: none;
}

@media ( max-width :1500px) {
	label[for="bt_coment"] {
		display: block;
	}
	#bt_coment:checked ~.coment {
		margin-left: 0;
	}
	.coment {
		margin-top: 5px;
		margin-left: -150%;
		transition: all .4s;
	}
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
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
}

.btn-link:hover {
	color: #B9CB41;
}
</style>
<title>Streamig | Game Page ::</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/top.png" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!----webfonts---->
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!----//webfonts---->
<!-- Global CSS for the page and tiles -->
<link rel="stylesheet" href="css/main.css">
<!-- //Global CSS for the page and tiles -->
<!---start-click-drop-down-menu----->
<script src="js/jquery.min.js"></script>
<!----start-dropdown--->
<script type="text/javascript">
			var $ = jQuery.noConflict();
				$(function() {
					$('#activator').click(function(){
						$('#box').animate({'top':'0px'},500);
					});
					$('#boxclose').click(function(){
					$('#box').animate({'top':'-700px'},500);
					});
				});
				$(document).ready(function(){
				//Hide (Collapse) the toggle containers on load
				$(".toggle_container").hide(); 
				//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
				$(".trigger").click(function(){
					$(this).toggleClass("active").next().slideToggle("slow");
						return false; //Prevent the browser jump to the link anchor
				});
									
			});
		</script>
<!----//End-dropdown--->

<!-- Início Script Avaliação -->

<script src="js/funcoes.js"></script>

<!-- Fim Script Avaliação -->

</head>
<body>

<!---start-wrap---->
	<!---start-header---->
	<div class="header">


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
		<div class="wrap">
			<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" title="Streamig" /></a>
			</div>
			<div class="nav-icon">
				<a href="#" class="right_bt" id="activator"><span> </span> </a>
			</div>
			<div class="box" id="box">
				<div class="box_content">
					<div class="box_content_center">
						<div class="form_content">
							<div class="menu_box_list">
								<ul>
									<li><a href="index.jsp"><span>Destaques</span></a></li>
									<li><a href="escolhaGenero.jsp"><span>Gêneros</span></a></li>
									<li><a href="Contribua.html"><span>Contribua</span></a></li>
									<!--<li><a href="sair.html"><span>Sair</span></a></li>-->
									<div class="clear"></div>
								</ul>
							</div>
							<a class="boxclose" id="boxclose"> <span> </span></a>
						</div>
					</div>
				</div>
			</div>

			<!--  Barra de Pesquisa -->

			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
			<div class="top-searchbar">
				<form action="pesquisa.jsp" method="post">
					<input type="text" id="nomeJogo" name="nomeJogo"> <input
						type="submit" id="jogos" value="" />
				</form>
			</div>

			<!-- Fim da Barra de Pesquisa -->


			<div class="userinfo">
				<div class="user">
					<ul>
						<li><a href="#"><img src="images/user.png"
								title="Nome-Usuário" /><span>Usuário</span></a></li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!---//End-header---->
	<!---start-content---->


	<%
	String nomeJogo = request.getParameter("nomeJogoReview");
	String imgJogo = request.getParameter("capaJogo");
	String nomeReview = "";
	String imgReview = "";
	String reviews = "";
	String data = "";
	String hora = "";
%>

	<div class="content">
		<div class="wrap">
			<div class="single-page">
				<div class="single-page-artical">
					<div class="artical-content">
						<img src="<%=imgJogo%>" title="banner1">
						<h3>
							<a href="#"><%=nomeJogo%></a>
						</h3>

						<form action="review.jsp" method="post">
							<p>Review Principal</p>
							<input type="text" id="nomeJogo1" name="nomeJogo1"
								value="<%=nomeJogo%>" style="display: none"> <label>Nome<span>*</span></label>
							<input type="text" value=" " id="userReview" name="userReview"><br />
							<label>Review<span>*</span></label> <input type="text" value=" "
								id="review" name="review"> <input type="submit"
								value="Enviar">
						</form>

						<%		
					try{	
						Connection conReview = Conecta.getConnection();
						String review = "select * from review where nome_jogo=?";
						
						PreparedStatement stReview = conReview.prepareStatement(review);
						stReview.setString(1, nomeJogo);
						ResultSet rsReview = stReview.executeQuery();
						while(rsReview.next()){
							nomeReview = (rsReview.getString("nome_usuario"));
							imgReview = (rsReview.getString("img_usuario"));
							reviews = (rsReview.getString("review"));
							data = (rsReview.getString("data"));
							hora = (rsReview.getString("hora"));
							%>
						<div class="grid1_of_2">
							<div class="grid_img">
								<a href=""><img src="<%=imgReview%>" alt=""></a>
							</div>
							<div class="grid_text">
								<h4 class="style1 list">
									<a href="#"><%=nomeReview%></a>
								</h4>
								<h3 class="style">
									<%out.print(data + " - " + hora);%>
								</h3>
								<p class="para top"><%=reviews%></p>

								<!-- form para comentar na postagem principal -->

								<form action="enviaReview.jsp" method="post">
									<p>Resposta da review</p>
									<input type="text" id="nomeReview" name="nomeReview"
										value="<%=nomeReview%>" style="display: none"> <input
										type="text" id="nomeJogo1" name="nomeJogo1"
										value="<%=nomeJogo%>" style="display: none"> <label>Nome<span>*</span></label>
									<input type="text" value=" " id="userResp" name="userResp"><br />
									<label>Review<span>*</span></label> <input type="text"
										value=" " id="respReview" name="respReview"> <input
										type="submit" value="Enviar">
								</form>
								</nav>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<br>
					<%
						
						String respReview = "select * from resp_review where nome_jogo = ? and nome_review=?";
						PreparedStatement stResp = conReview.prepareStatement(respReview);
						stResp.setString(1, nomeJogo);
						stResp.setString(2, nomeReview);
						ResultSet rsResp =stResp.executeQuery();
						while(rsResp.next()){
							%>
					<div class="grid1_of_2 left">
						<div class="grid_img">
							<a href=""><img
								src="<%out.print(rsResp.getString("img_resp"));%>" alt=""></a>
						</div>
						<div class="grid_text">
							<h4 class="style1 list">
								<a href="#"> <%out.print(rsResp.getString("nome_resp"));%>
								</a>
							</h4>
							<h3 class="style">
								<%out.print(rsResp.getString("data")+" - "+rsResp.getString("hora"));%>
							</h3>
							<p class="para top">
								<%out.print(rsResp.getString("resp_review"));%>
							</p>
						</div>
						<div class="clear"></div>
					</div>
					<%
						}
					}
					}catch(Exception e){
					}
						%>
					<!-- Final da review -->
				</div>
			</div>
		</div>
	</div>
			<center><h2 style="color:#fff">Botão para voltar a pagina de jogos</h2></center>
			<form action="jogos.jsp" method="post">
			<input type="text" value="<%=nomeJogo%>" name="nomeJogo" id="nomeJogo" style="display:none">
			<center><input type="image" src="images/reply.png">Botão para ir pra pagina de jogos</center>
			</form>

</body>
</html>