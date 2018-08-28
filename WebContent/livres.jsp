<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page livres</title>
</head>
<body>


<div id="nav">
            <ul>
              <li><a href=home.jsp>HOME</a></li>
              <li><a href=livres.jsp>BOOKS</a></li>
              <li><a href=register.jsp>SIGN IN</a></li>
              <li><a href=contact.jsp>CONTACT US</a></li>
            </ul>
            <div class="clear"> </div>
          </div>

<HR>

<H1>J'ai modifié mon header</H1>

<H2>Voir nos livres</H2>

Send me mail at <a href="mailto:arnaud.github@gmail.com">

arnaud.github@gmail.com</a>.


   <form action="livresAffiche.jsp">
    
    	
		<tr><td><input type="submit" value="Submit"></td></tr>
		</table>
    
    </form>

  <HR>
           
            
            <jsp:include page="footer.html"></jsp:include>
            
             <HR>



</body>
</html>