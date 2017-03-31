<%-- 
    Document   : welcome
    Created on : Mar 31, 2017, 10:57:37 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%-- Comment : our first JSP page --%>
        <% String message = "Welcome ! Welcome ! 21st Century !"; %>

        <h1><% out.println(message); %></h1>
        <br />

        <% String developed = "Developed by Modern Netbeans"; %>

        <h2><%= developed %></h2>
        <br />

        <% System.out.println("Goodbye ! See you in the 22nd Century !"); %>

    </body>
</html>