<%-- 
    Document   : hotel1
    Created on : Apr 24, 2022, 4:15:39 PM
    Author     : sarth
--%>
<%@ page errorPage = "errorjsp1.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
        
          <!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
    <br><br>
    <h2>Please provide us with your information</h2><br>
 <form method="post" action="confirm.jsp">
     
    <div class="form-group">
      <label for="email">First Name:</label>
      <input type="text" class="form-control"  placeholder="Enter first name" name="fname" required>
    </div>
      <div class="form-group">
      <label for="email">Last Name:</label>
      <input type="text" class="form-control"  placeholder="Enter Last name" name="lname" required>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control"  placeholder="Enter email" name="email" required>
    </div>
        <div class="form-group">
      <label for="email">Phone Number:</label>
      <input type="tel" class="form-control" placeholder="Enter Phone Number" name="phone" required>
    </div>
         <div class="form-group">
      <label for="email">Start Date:</label>
      <input type="date" class="form-control"  placeholder="Enter Start Date" name="sdate" min=2022-04-27 required>
    </div>
     
         <div class="form-group">
      <label for="email">End Date:</label>
      <input type="date" class="form-control"  placeholder="Enter End Date" name="edate" min=2022-04-27 required>
    </div>

    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" required> Confirm and Submit
      </label>
    </div>
     
      <input type="hidden" name="room" value="3" >

    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>

    </body>
</html>
