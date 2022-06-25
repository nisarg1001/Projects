<%-- 
    Document   : adminlogin
    Created on : Apr 24, 2022, 5:17:20 PM
    Author     : sarth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page errorPage = "errorjsp1.jsp" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
    <body>
  
<div class="container">
    <br>      
     <h2>Enter Admin ID and Password</h2><br>
        <form action="formdata1" method="post">
       <div class="form-group">
      <label for="text">UserName:</label>
         <input type="text" name="username">
       </div><!-- comment -->
       <div class=""form-group">
           <label for="password">Password:</label> <input type="password" name="password"><br><br>
        <input type="Submit" class="btn btn-primary" value="Log In">
       </div>
        </form><!-- comment -->
</div>    
      
    </body>
</html>
