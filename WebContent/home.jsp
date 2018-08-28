<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>

<center><h2>BIENVENUE DANS NOTRE BIBLIOTHEQUE EN LIGNE </h2></center>

<CENTER><IMG SRC="images/maxresdefault.jpg" width="400" height="200" ALIGN="BOTTOM"> </CENTER>

<marquee dir="ltr"><font style="color: navy;">C'EST LA BIBLIOTHEEEEEQUEEEEUH</font></marquee>

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

     <div id="newsletter">
			        
                
                </div>
                <div id="events">
                  <center><h2>FEATURED EVENTS</h2></center>
                  <ul>
                  <li><a href=#>More Project</a></li>
                  <li><a href=#>More Tutorials</a></li>
                  </ul>
                </div>
                <div class="clear"> </div>
                
<a href=register.jsp>BACK TO HOME</a>
            
            <HR>
            
            <jsp:include page="footer.html"></jsp:include>
            
             <HR>







</body>
</html>