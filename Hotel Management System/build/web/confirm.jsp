<%-- 
    Document   : confirm
    Created on : Apr 24, 2022, 4:17:31 PM
    Author     : sarth
--%>
<%@ page errorPage = "errorjsp1.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>.margin1
        {
            margin-left: 100px;
        }
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
       String fname = request.getParameter("fname");
       String lname = request.getParameter("lname");
       String email = request.getParameter("email");
       String phone = request.getParameter("phone");
       String sdate = request.getParameter("sdate");
       String edate = request.getParameter("edate");
       String type = request.getParameter("room");
       System.out.println("type:"+type);
       if(type.equals("1"))
         type="Single_Deluxe_Room";
    else  if(type.equals("2"))
            type="Double_Deluxe_Room";
       else  if(type.equals("3"))
            type="Economy_Double";
       else  if(type.equals("4"))
            type="Honeymoon_Suit";
        System.out.println("type:"+type);         
        %>

                
      <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ajlab" user="root" password=""/>
        
    <sql:update dataSource="${db}" var="qr">
        INSERT INTO temp1 VALUES(default,?,?,?,?,?,?,?,default)
        <sql:param value="<%= fname %>"/>
        <sql:param value="<%= lname %>"/>
        <sql:param value="<%= email %>"/>
        <sql:param value="<%= phone %>"/>
        <sql:param value="<%= sdate %>"/>
        <sql:param value="<%= edate %>"/>
        <sql:param value="<%= type %>"/>
      
    </sql:update>
                    <div class="logo">
                        
                        <a href="index.html"><img src="images/ty.jpg" title="logo" class="margin1"/></a><br><br>
                        <center>
                            <form action='index.html'>
                        <input type="submit" class="btn btn-primary" value="Return to Home Page"/>
                            </form>
                        </center>
                    </div>

    </body>
</html>
