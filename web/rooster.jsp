<%-- 
    Document   : rooster
    Created on : Oct 9, 2012, 1:22:44 PM
    Author     : bramlaptop
--%>

<%@page import="Model.Flight"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.SchedulePlanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Roosters</title>
    </head>
    <body>
	<style type="text/css">
	body {
	    text-align: center;
	    background-image:url(images/backgroundimage.png);
	    background-repeat: repeat;
	    margin-top: 100px;
	}
	
	table {
	    border-collapse: collapse;
	    font-family: "Trebuchet MS",Arial,Helvetica,sans-serif;
	    width: 100%;
	}
	table td, table th {
	    border: 1px solid #000000;
	    font-size: 1.0em;
	    padding: 3px 7px 2px;
	}
	table th {
	    background-color: #000000;
	    color: #FFFFFF;
	    font-size: 1.2em;
	    padding-bottom: 4px;
	    padding-top: 5px;
	    text-align: center;
	}
	table tr.alt td {
	    background-color: #EAF2D3;
	    color: #000000;
	}
	
	#usernameweergave {
	    font-size: 30px;
	}
	
	</style>
        <jsp:useBean id ="loginCheck" scope="session" class="Model.LoginCheck" />
	    <img src="images/titel.png" alt="titel">
        <%
	    if (loginCheck.login(request.getParameter("username"), request.getParameter("password"))) {
		try {

		    SchedulePlanner sp = new SchedulePlanner();
		    String id = request.getParameter("username");
		    
		    ArrayList<Flight> flights = sp.getPlanning(id);
		    %>
		    <div id="usernameweergave">
		       Rooster van: <% out.print(sp.getStaffName()) ;%></br>
		    </div>
		    <%
		    if (flights.size() != 0) {
        %>
        <table border="0">
            <tr>
                <th>
                    Flight Number
                </th>
		
                <th>
                    Date
                </th>
		<th>
                    From
                </th>
                <th>
                    Destination
                </th>
		<th>
                    Stops
                </th>
                <th>
                    Pilot
                </th>
		<th>
                    Co-pilot
                </th>
		<th>
                    Other Personal
                </th>
                <th>
                    Plane
                </th>
                <th>
                    Return Flight
                </th>
                
            </tr>

            <%


		for (int i = 0; i < flights.size(); i++) {
            %>

            <tr>
		<!--1. Number-->
                <td>
                    <% out.print(flights.get(i).getNumber());%>
                </td>
		<!--2. Date-->
                <td>
                    <% out.print(flights.get(i).getDate());%>
                </td>
		<!--3. From-->
		<td>
                    <% out.print(flights.get(i).getFrom());%>
                </td>
		<!--4. Destination-->
                <td>
                    <% out.print(flights.get(i).getDestination());%>
                </td>
		<!--5. stops-->
		<td>
                    <% out.print(flights.get(i).getStops());%>
                </td>
		<!--6. pilot-->
		<td>
                    <% out.print(flights.get(i).getPilot());%>
                </td>
                
		<!--7. Copilot-->
		<td>
                    <% out.print(flights.get(i).getCopilot());%>
                </td>
		<!-- Otherpersonal-->
                <td>
                    <% out.print(flights.get(i).getOtherPersonal());%>
                </td>
		<!--8. Plane-->
                <td>
                    <% out.print(flights.get(i).getPlane());%>
                </td>
		<!--9. ReturnFlight-->
                <td>
                    <% out.print(flights.get(i).getReturnFlight());%>
                </td>
            </tr>

            <%                        }
		    } else {
			out.print("No flights found");
		    }
		} catch (NullPointerException e) {
		    out.print("No flights found");
		}
            %>

        </table>












        <%	    } else {
	    out.print("Username of Password incorrect.");
	}
    %>
	<form action="index.jsp"/>
	    <input value="Terug" type="submit"/>
	</form>
</body>
</html>
