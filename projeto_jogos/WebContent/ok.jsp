<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="Conexao.Conecta"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cadastro de jogos</title>
</head>
<body>

<%
	String nome="";
	String nomeJogo = request.getParameter("nomeDoJogo");
	String info1 = request.getParameter("info1");
	String info2 = request.getParameter("info2");
	String info3 = request.getParameter("info3");
	String imgJogo = request.getParameter("imgJogo");
	String capaJogo = request.getParameter("capaJogo");
	String categoria1 = request.getParameter("categoria1");
	String categoria2 = request.getParameter("categoria2");
	String categoria3 = request.getParameter("categoria3");
	String destaque = request.getParameter("destaque");
	String plataforma = request.getParameter("plataformas");
	
	if(info2.equals("")){
		info2="null";
	}
	if(info3.equals("")){
		info3="null";
	}
	if(categoria2.equals("")){
		categoria2="null";
	}
	if(categoria3.equals("")){
		categoria3="null";
	}
	
	
	if(nomeJogo!=""){
		
	
		try{
					
			Connection con = Conecta.getConnection();
			String sql = "select * from jogos where nome_jogo=?";
			
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, nomeJogo);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				nome = (rs.getString("nome_jogo"));
			}			
			if(nome==""){
				
			String sql1 = "insert into jogos(nome_jogo, plataforma, info_1, info_2, info_3, img_jogo, capa_jogo, categoria1, categoria2, categoria3, destaque) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			PreparedStatement stmt2 = con.prepareStatement(sql1);
			stmt2.setString(1, nomeJogo);
			stmt2.setString(2, plataforma);
			stmt2.setString(3, info1);
			stmt2.setString(4, info2);
			stmt2.setString(5, info3);
			stmt2.setString(6, imgJogo);
			stmt2.setString(7, capaJogo);
			stmt2.setString(8, categoria1);
			stmt2.setString(9, categoria2);
			stmt2.setString(10, categoria3);
			stmt2.setString(11, destaque);
			stmt2.execute();
			stmt2.close();
			con.close();
			
			out.print("jogo inserido com sucesso");
			%>
			<form action="jogos.jsp" method="post" id="envia">
				<input type="text" value="<%=nomeJogo%>" id="nomeJogo" name="nomeJogo" style="display:none">
				<button type="submit">Ver página do jogo</button>
			</form><%
			
			}else{
				out.print("esse jogo ja esta no banco");
				%><a href="index.jsp">Ok</a><%
			}
		}catch(Exception e){
			out.print("Deu algum erro" +e);
		}
	}else{
		out.print("Insira um jogo valido");
		%><a href="CadastroDeJogos.jsp">Ok</a><%
	}
%>

</body>
</html>