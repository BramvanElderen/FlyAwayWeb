<%-- 
    Document   : rooster
    Created on : Oct 9, 2012, 1:22:44 PM
    Author     : bramlaptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Roosters</title>
    </head>
    <body>
        <jsp:useBean id ="loginCheck" scope="session" class="Model.LoginCheck" />
	<%
	if (loginCheck.login(request.getParameter("username"), request.getParameter("password"))) {
	    %>
	    login succesvol
	    <%
	} else {
	    out.print("login niet succesvol");
	}
	
	
	%>
	
    </body>
</html>
