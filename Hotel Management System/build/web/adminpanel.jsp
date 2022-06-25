<%-- 
    Document   : adminpanel
    Created on : Apr 24, 2022, 5:23:01 PM
    Author     : sarth
--%>
<%@ page errorPage = "errorjsp1.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <br><br>
     <h3>Waiting Entries</h3> 
        <sql:setDataSource  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ajlab" user="root" password=""/>
        <sql:query sql ="select * from ajlab.temp1 where status='waiting'" var="row"></sql:query>




            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email ID</th>
                        <th scope="col">Phone Number</th>
                        <th scope="col">Start Date</th>
                        <th scope="col">End Date</th>
                        <th scope="col">Room Type</th>
                        <th scope="col">Status</th>

                    </tr>
                </thead>
                <tbody>

                <c:forEach var="rd" items="${row.rows}">

                    <tr>
                        <td><c:out value="${rd.id}"/></td>
                        <td><c:out value="${rd.FNAME}"/></td>
                        <td><c:out value="${rd.LNAME}"/></td>
                        <td><c:out value="${rd.email}"/></td>
                        <td><c:out value="${rd.phone}"/></td>
                        <td><c:out value="${rd.sdate}"/></td>
                        <td><c:out value="${rd.ldate}"/></td>
                        <td><c:out value="${rd.type}"/></td>
                        <td><c:out value="${rd.status}"/></td>

                <form action="formdata3" method="post">
                    <td><button name="btn1" class="btn btn-primary" value="${rd.id}" >Accept</button></td>
                    <td><button  name="btn2" class="btn btn-primary" value="${rd.id}">Decline</button></td>
                </form>
            </tr>
        </c:forEach>

    </tbody>
</table>
        <br>
<h3>Accepted Entries</h3> 

<sql:query sql ="select * from ajlab.temp1 where status='approved'" var="row"></sql:query>
    <TABLE class="table">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Email ID</th>
                <th scope="col">Phone Number</th>
                <th scope="col">Start Date</th>
                <th scope="col">End Date</th>
                <th scope="col">Room Type</th>
                <th scope="col">Status</th>

            </tr>
        </thead>
    <c:forEach var="rd" items="${row.rows}">

        <tr>
            <td><c:out value="${rd.id}"/></td>
            <td><c:out value="${rd.FNAME}"/></td>
            <td><c:out value="${rd.LNAME}"/></td>
            <td><c:out value="${rd.email}"/></td>
            <td><c:out value="${rd.phone}"/></td>
            <td><c:out value="${rd.sdate}"/></td>
            <td><c:out value="${rd.ldate}"/></td>
            <td><c:out value="${rd.type}"/></td>
            <td><c:out value="${rd.status}"/></td>

        </tr>
    </c:forEach>
</TABLE>

</body>
</html>
