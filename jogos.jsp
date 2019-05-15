<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Streamig | Game Page ::</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="images/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
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
	</head>
	<body>
	
	<%
	String nomeJogo = request.getParameter("nomeJogo");
	
	int cod=0;
	String nome="";
	String para1="";
	String para2="";
	String para3="";
	String capa="";
	
	try{
		
		//verificando a existencia da placa no banco
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url="jdbc:mysql://localhost/projeto";
		String user="root";
		String password="root";
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		PreparedStatement stmt = con.prepareStatement("select * from jogos where nome_jogo=?");
		stmt.setString(1, nomeJogo);

		ResultSet rs = stmt.executeQuery();

		while (rs.next()) {
			cod = (rs.getInt("cod_jogo"));
			nome = (rs.getString("nome_jogo"));
			para1 = (rs.getString("info_1"));
			para2 = (rs.getString("info_2"));
			para3 = (rs.getString("info_3"));
			capa = (rs.getString("capa_jogo"));
		}
		
	}catch(Exception e){
			out.print("deu algum erro");
	}
	if(para2.equals("null")){
		para2=" ";
	}
	if(para3.equals("null")){
		para3=" ";
	}
	
	%>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<div class="">
					<a href="index.html"><img src="images/logo do site" title="" /></a>
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
										<li><a href="index.html"><span>Destaques</span></a></li>
										<li><a href="#"><span>GÃªneros</span></a></li>
										<li><a href="#"><span>Plataformas</span></a></li>
										<li><a href="#"><span>Contribua</span></a></li>
										<li><a href="sair.html"><span>Sair</span></a></li>										
										<div class="clear"> </div>
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
					<form>
						<input list="jogos" type="text" oninput="myFunction()">
						
						<datalist id="jogos">
							<option value="Sekiro Shadows Die Twice"><a href="SekiroShadowsDieTwice.html"></a></option>
							<option value="GTA V"><a href="single-page.html"></a></option>
							<option value="Days Gone"><a href="DaysGone.html"></a></option>
							<option value="Bloodborne"><a href="Bloodborne.html"></a></option>
							<option value="Devil May Cry 5"><a href="DMC5.html"></a></option>
							<option value="God Of War"><a href="gowps4.html"></a></option>
							<option value="Marvel's Spider Man"><a href="MiranhadaMarvel.html"></a></option>
							<option value="Red Dead Redemption 2"><a href="RE2R.html"></a></option>
						</datalist>
						
						<input type="submit" id="jogos" value=""/>
					</form>
					
					<script>
						var href;
						function myFunction() {
							$('form').on('submit', function(e) {
								e.preventDefault();
								href = $('datalist option[value="'+ $('input[list="jogos"]').val()+ '"]').find('a').prop('href');
								if (typeof href !== 'undefined')
									window.location.href = href;
								});
						}
					</script>
				</div>
				
				<!-- Fim da Barra de Pesquisa -->
				
				
				<div class="userinfo">
					<div class="user">
						<ul>
							<li><a href="#"><img src="images/joao.jpg" title="Nome-UsuÃ¡rio" /><span>JoÃ£o Valdomiro</span></a></li>
						</ul>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!---//End-header---->
		<!---start-content---->
		<div class="content">
			<div class="wrap">
			<div class="single-page">
							<div class="single-page-artical">
								<div class="artical-content">
									<img src="<%=capa%>" title="banner1">
									<h3><a href="#"><%=nome%></a></h3>
									<p><%=para1%></p> 
									<p class="para1"><%=para2%></p> 
									<p class="para2"><%=para3%></p> 
								    </div>
								    <!--<div class="artical-links">
		  						 	<ul>
		  						 		<li><a href="#"><img src="images/blog-icon2.png" title="Admin"><span>admin</span></a></li>
		  						 		<li><a href="#"><img src="images/blog-icon3.png" title="Comments"><span>No comments</span></a></li>
		  						 		<li><a href="#"><img src="images/blog-icon4.png" title="Lables"><span>View posts</span></a></li>
		  						 	</ul>
		  						 </div>
		  						 <div class="share-artical">
		  						 	<ul>
		  						 		<li><a href="#"><img src="images/facebooks.png" title="facebook">Facebook</a></li>
		  						 		<li><a href="#"><img src="images/twiter.png" title="Twitter">Twiiter</a></li>
		  						 		<li><a href="#"><img src="images/google+.png" title="google+">Google+</a></li>
		  						 		<li><a href="#"><img src="images/rss.png" title="rss">Rss</a></li>
		  						 	</ul>
		  						 </div>-->
		  						 <div class="clear"> </div>
							</div>
							<!---Iniciando sessÃ£o de comentÃ¡rios--->
							<div class="comment-section">
				<div class="grids_of_2">
					<h2>ComentÃ¡rios</h2>
					<div class="grid1_of_2">
						<div class="grid_img">
							<a href=""><img src="images/luciano.jpg" alt=""></a>
						</div>
						<div class="grid_text">
							<h4 class="style1 list"><a href="#">Luciano Santiago</a></h4>
							<h3 class="style">21 de Abril de 2019 - 09:50 AM</h3>
							<p class="para top"> Ã‰ um Ã³timo jogo mas depende o quÃ£o paciente vocÃª Ã© pra ficar sendo morto por hackers e ter que migrar de sessÃ£o em sessÃ£o atÃ© achar uma sem nenhum player modded. </p>
							<a href="" class="btn1">Clique Para Responder</a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="grid1_of_2 left">
						<div class="grid_img">
							<a href=""><img src="images/junior.jpg" alt=""></a>
						</div>
						<div class="grid_text">
							<h4 class="style1 list"><a href="#">Manuel Junior</a></h4>
							<h3 class="style">22 de Abril de 2019 - 04:26 PM</h3>
							<p class="para top"> Concordo, o jogo Ã© Ã³timo, mas o fato de haver muitos hackers, incomoda quando estamos jogando no modo online.</p>
							<a href="" class="btn1">Clique Para Responder</a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="grid1_of_2">
						<div class="grid_img">
							<a href=""><img src="images/daniel.jpg" alt=""></a>
						</div>
						<div class="grid_text">
							<h4 class="style1 list"><a href="#">Daniel AntÃ´nio</a></h4>
							<h3 class="style">28 de Abril de 2019 - 05:16 PM</h3>
							<p class="para top"> Mesmo depois de muito tempo lanÃ§ado sÃ³ agora estou jogando pra valer o modo online ( a histÃ³ria eu jÃ¡ tinha zerado e Ã© muita boa por sinal ) e ainda vale mto a pena , ainda tem mtos players , vÃ¡rias atividades pra se fazer , agora com uma dlc de 50 reais ( promo deve ficar mais barata ) dÃ¡ pra ter o necessÃ¡rio pra continuar ganhando dinheiro no jogo , comprando os itens essenciais e se divertindo</p>
							<a href="" class="btn1">Clique Para Responder</a>
						</div>
						<div class="clear"></div>
					</div>								
						<div class="artical-commentbox">
						 	<h2>Deixe seu ComentÃ¡rio</h2>
				  			<div class="table-form">
								<form action="#" method="post" name="post_comment">
									<div>
										<label>Nome<span>*</span></label>
										<input type="text" value=" ">
									</div>
									<div>
										<label>Email<span>*</span></label>
										<input type="text" value=" ">
									</div>
									<div>
										<label>Seu comentÃ¡rio<span>*</span></label>
										<textarea> </textarea>	
									</div>
								</form>
								<input type="submit" value="Enviar">
									
							</div>
							<div class="clear"> </div>
				  		</div>			
					</div>
			</div>
							<!---//Final da sessão dos comentários--->
						</div>
						 </div>
		</div>
		<!---//End-wrap---->
	</body>
</html>
