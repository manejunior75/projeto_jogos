<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="Conexao.Conecta" 
    import="java.text.DateFormat" import="java.util.Date" import="java.util.Locale"
    import="java.text.SimpleDateFormat"
    %>
<!DOCTYPE html>
<html>
<head>
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
	
	SimpleDateFormat horaFormatada= new SimpleDateFormat("HH:mm:ss");
	String hora = horaFormatada.format(dataAtual);

	String userPost = request.getParameter("userPost");
	String postagem = request.getParameter("postagem");
	String nomeJogo = request.getParameter("nomeJogo1");
	String imgUsuario="null";
	
	try{
		
		Connection con = Conecta.getConnection();
		String sql = "insert into postagem(nome_usuario, img_usuario, postagem, data, hora, nome_jogo) values(?,?,?,?,?,?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, userPost);
		stmt.setString(2, imgUsuario);
		stmt.setString(3, postagem);
		stmt.setString(4, data);
		stmt.setString(5, hora);
		stmt.setString(6, nomeJogo);
		stmt.execute();
		stmt.close();
		con.close();
		
		%>
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<Center><h4 class="modal-title" id="myModalLabel">Comentário Cadastrado com Sucesso!</h4></Center>
					</div>
					<div class="modal-body">
						<p>Seu comentário foi inserido com sucesso, obrigado por sua contribuição!</p>
					</div>
					<div class="modal-footer">	
						<form action="jogos.jsp" method="post">
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
						<form action="index.jsp" method="post" id="envia">
							<Center><button type="submit">OK</button></Center>
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