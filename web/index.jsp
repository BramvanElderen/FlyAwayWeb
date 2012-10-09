<%-- 
    Document   : index
    Created on : Oct 9, 2012, 12:26:47 PM
    Author     : bramlaptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Pagina</title>
    </head>
    <body>
	
	<jsp:useBean id ="loginCheck" scope="session" class="Model.LoginCheck" />
	<FORM method="post" action="rooster.jsp">
	    <input name="username" type="text"/>
	    <br/>
	    <input name="password" type="text" />
	    <br/>

	    <input value="Login" type ="submit"/>
	</form>



    </body>
</html>
