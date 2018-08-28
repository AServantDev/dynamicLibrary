<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    
<%
try {
		String auter= request.getParameter("auteur.prenom");
		String livre= request.getParameter("livres");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/Bibliotheque_db";
		String user = "root";
		String pwd= "simplonco";
		
		Connection con=DriverManager.getConnection(url, user, pwd);
		
		
		String sqlRequete = "SELECT * from livres INNER JOIN auteur ON auteur.id = livres.id_auteur";
		
		Statement st =con.createStatement();
		ResultSet result = (ResultSet) st.executeQuery(sqlRequete);
		String titre;
		String auteur;
		String auteurNom;
		while(result.next()) {
			
			//récupération de l id
			titre = result.getString("livres.titre");
			auteur = result.getString("auteur.prenom");
			auteurNom = result.getString("auteur.nom");
			
			
			
			
			System.out.println(titre + " de " +auteur + " "+ auteurNom);
		}
		
}
catch(Exception e){e.printStackTrace();
out.print("sorry!please fill correct detail and try again" );
}


%>

