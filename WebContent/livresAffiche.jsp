<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
 
<html>
<body>
<form>
<%
    String tableName = request.getParameter("<table>");
    if (tableName == null) tableName = "";
%>
Table à traiter : <input type="text" name="tableName" value="<%=tableName%>"/>
</form>
<%
    if (tableName.trim().length() > 0)
    {
        Connection connection = null;
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
    		
    		String url = "jdbc:mysql://localhost:3306/Bibliotheque_db";
    		String user = "root";
    		String pwd= "simplonco";
    		
    		Connection con=DriverManager.getConnection(url, user, pwd);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from " + tableName);
            ResultSetMetaData rsmd = rs.getMetaData();
 
            out.write("<table>");
            out.write("<tr style=\"background:#f0f0f0\">");
            for (int i = 1; i <= rsmd.getColumnCount(); i++)
            {
                out.write("<td>" + rsmd.getColumnName(i) + "</td>");
            }
            out.write("</tr>");
 
            while (rs.next())
            {
                out.write("<tr>");
                for (int i = 1; i <= rsmd.getColumnCount(); i++)
                {
                    out.write("<td>" + rs.getString(i) + "</td>");
                }
                out.write("</tr>");
            }
            out.write("</table>");
        }
        catch (Exception e)
        {
 
        }
               
    }
%>
</body>
</html>