<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="Conexao.Conecta" 
    import="java.text.DateFormat" import="java.util.Date" import="java.util.Locale"
    import="java.text.SimpleDateFormat"
    %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String data="";
	Date dataAtual = new Date();
	DateFormat formatador = DateFormat.getDateInstance(DateFormat.FULL, new Locale("pt","BR"));
	String dataExtenso = formatador.format(dataAtual);
	
	int index = dataExtenso.indexOf(",");
	int lenght = dataExtenso.length();
	data=(dataExtenso.substring(++index, lenght));
	
	SimpleDateFormat horaFormatada= new SimpleDateFormat("HH:mm");
	String hora = horaFormatada.format(dataAtual);

	String nomeReview = request.getParameter("userReview");
	String review = request.getParameter("review");
	String nomeJogo = request.getParameter("nomeJogo1");
	String imgUsuario="images/null.png";
	
		
	try{
		
		Connection con = Conecta.getConnection();
		String sql = "insert into review(nome_usuario, img_usuario, review, nome_jogo, data, hora) values(?,?,?,?,?,?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, nomeReview);
		stmt.setString(2, imgUsuario);
		stmt.setString(3, review);
		stmt.setString(4, nomeJogo);
		stmt.setString(5, data);
		stmt.setString(6, hora);
		stmt.execute();
		stmt.close();
		con.close();
		
%>
		<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<center><h4 class="modal-title" id="myModalLabel">Comentário Inserido com Sucesso!</h4></center>
						</div>
						<div class="modal-body">
							<p>Obrigado pela sua contribuição, com sua ajuda nos tornamos cada vez, uma plataforma melhor! </p>
						</div>
						<div class="modal-footer">	
							<form action="social.jsp" method="post">
								<button type="submit" value="<%=nomeJogo%>" name="nomeJogo" id="nomeJogo">ok</button>
							
							</form>
							
						</div>
					</div>
				</div>
			</div>				
			<script>
				$(document).ready(function () {
					$('#myModal').modal('show');
				});
			</script>
				
<%		
	}catch(Exception e){
				
	%>
		<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">Erro ao Salvar Comentário</h4>
						</div>
						<div class="modal-body">								
							<p>Favor entrar em contato com nossa equipe</p>
						</div>
						<div class="modal-footer">
						<form action="jogos.jsp" method="post">
							<center><button type="submit" value="<%=nomeJogo%>" name="nomeJogo" id="nomeJogo">ok</button></center>
						
						</form>
							
						</div>
					</div>
				</div>
			</div>			
			<script>
				$(document).ready(function () {
					$('#myModal').modal('show');
				});
			</script>
	<%	
	}
%>
	


</body>
</html>