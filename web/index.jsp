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
	<style type="text/css">
	body {
	    text-align: center;
	    background-image:url(images/backgroundimage.png);
	    background-repeat: repeat;
	    margin-top: 100px;
	}
	#title {
	    font-style: italic;
	    font-size: 20px;
	}
	</style>
	<div id="title">
	    <img src="images/titel.png" alt="titel">
	</div>
	<jsp:useBean id ="loginCheck" scope="session" class="Model.LoginCheck" />
	<FORM method="post" action="rooster.jsp">
	    <pre>Username   <input name="username" type="text"/>
Password   <input name="password" type="password" />
<input value="Login" type ="submit"/>
	    </pre>
	</form>



    </body>
</html>
