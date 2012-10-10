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
        <jsp:useBean id ="loginCheck" scope="session" class="Model.LoginCheck" />
        <%
            if (loginCheck.login(request.getParameter("username"), request.getParameter("password"))) {
        %>
        <table border ="0">
            <tr>
                <td>
                    Co-pilot
                </td>
                <td>
                    Date
                </td>
                <td>
                    Destination
                </td>
                <td>
                    From
                </td>
                <td>
                    Number
                </td>
                <td>
                    Other Personal
                </td>
                <td>
                    Pilot
                </td>
                <td>
                    Plane
                </td>
                <td>
                    Return Flight
                </td>
                <td>
                    Stops
                </td>
            </tr>

            <%
                SchedulePlanner sp = new SchedulePlanner();
                String id = request.getParameter("username");
                ArrayList<Flight> flights = sp.getPlanning(id);

                for (int i = 0; i < flights.size(); i++) {
            %>

            <tr>
                <td>
                    <% flights.get(i).getCopilot(); %>
                </td>
                <td>
                    <% flights.get(i).getDate(); %>
                </td>
                <td>
                    <% flights.get(i).getDestination(); %>
                </td>
                <td>
                    <% flights.get(i).getFrom(); %>
                </td>
                <td>
                    <% flights.get(i).getNumber(); %>
                </td>
                <td>
                    <% flights.get(i).getOtherPersonal(); %>
                </td>
                <td>
                    <% flights.get(i).getPilot(); %>
                </td>
                <td>
                    <% flights.get(i).getPlane(); %>
                </td>
                <td>
                    <% flights.get(i).getReturnFlight(); %>
                </td>
                <td>
                    Stops<% flights.get(i).getStops(); %>
                </td>
            </tr>

            <%                        }
            %>

        </table>












        <%	    } else {
            out.print("Username of Password incorrect.");

        %>
        <form action="index.jsp"/>
        <input value="Terug" type="submit"/>
    </form>
    <%
        }


    %>

</body>
</html>
