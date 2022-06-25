<%-- 
    Document   : errorjsp1
    Created on : Apr 27, 2022, 9:28:11 AM
    Author     : sarth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page isErrorPage= "true" %>

<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       <style>.margin1
        {
            margin-left: 550px;
        }
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="logo">
            <br><br>
            <a href="index.html"><img class="margin1" src="images/error.jpg" title="logo" class="margin1"/></a><br><br>
            <center>
                <form action='index.html'>
                    <input type="submit" class="btn btn-primary" value="Return to Home Page"/>
                </form>
            </center>
        </div>
    </body>
</html>
