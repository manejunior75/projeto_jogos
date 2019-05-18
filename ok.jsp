<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
	String capaJogo = request.getParameter("capaJogo");
	
	if(info2.equals("")){
		info2="null";
	}
	if(info3.equals("")){
		info3="null";
	}
	
	try{
				
		Class.forName("com.mysql.jdbc.Driver");
		
		String url="jdbc:mysql://localhost/projeto";
		String user="root";
		String password="root";
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		PreparedStatement stmt = con.prepareStatement("select nome_jogo from jogos where nome_jogo=?");
		stmt.setString(1, nomeJogo);

		ResultSet rs = stmt.executeQuery();

		while (rs.next()) {
			nome = (rs.getString("nome_jogo"));
		}			
		if(nome==""){
			
		String sql = "insert into jogos(nome_jogo, info_1, info_2, info_3, capa_jogo) values(?, ?, ?, ?, ?)";
		
		PreparedStatement stmt2 = con.prepareStatement(sql);

		stmt2.setString(1, nomeJogo);
		stmt2.setString(2, info1);
		stmt2.setString(3, info2);
		stmt2.setString(4, info3);
		stmt2.setString(5, capaJogo);
		stmt2.execute();
		stmt2.close();
		con.close();
		}else{
			out.print("esse jogo ja esta no banco");
		}
	}catch(Exception e){
		out.print("Deu algum erro" +e);
	}
%>

<a href="index.html">Ok</a>

</body>
</html>