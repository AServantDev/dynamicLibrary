<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    
<%
try {
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String phone= request.getParameter("telephone");
		String message= request.getParameter("message");
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/Bibliotheque_db";
		String user = "root";
		String pwd= "simplonco";
		
		Connection con=DriverManager.getConnection(url, user, pwd);
		
		String sqlRequete = "insert into contactform values(?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(sqlRequete);
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,phone);
		ps.setString(4,message);
		
		int s= ps.executeUpdate();
		if(s>0){
		%>
		<jsp:forward page="contact.jsp"></jsp:forward>
		<% 
		}
		else{
		out.print("sorry!please fill correct detail and try again" );
		}
}
catch(Exception e){e.printStackTrace();
out.print("sorry!please fill correct detail and try again" );
}

%>
