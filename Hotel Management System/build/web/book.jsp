<%-- 
    Document   : book.jsp
    Created on : Apr 24, 2022, 4:01:56 PM
    Author     : sarth
--%>
<%@ page errorPage = "errorjsp1.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Card</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
    #block_container {
          
    display: inline-block;
    width:280px;
}
    
</style>
</head>
<body>
<div class="m-4"  id="block_container">
    <div class="card" style="width: 300px;">
        <img src="images/room1_1.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Single Deluxe Room</h5>
            <p class="card-text">Alice is a freelance web designer and developer based in London. She is specialized in HTML5, CSS3, JavaScript, Bootstrap, etc.</p>
            <a href="#" class="btn btn-primary">Rs. 2500</a>
            <a href="hotel1.jsp" class="btn btn-primary">Book Now</a>                
           
        </div>
    </div>
</div>
    
    <div class="m-4"  id="block_container">
    <div class="card" style="width: 300px;">
        <img src="images/room2.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Double Deluxe Room</h5>
            <p class="card-text">Alice is a freelance web designer and developer based in London. She is specialized in HTML5, CSS3, JavaScript, Bootstrap, etc.</p>
            <a href="#" class="btn btn-primary">Rs. 5500</a>
            <a href="hotel2.jsp" class="btn btn-primary">Book Now</a>
        </div>
    </div>
</div>
    
    <div class="m-4" id="block_container">
    <div class="card" style="width: 300px;">
        <img src="images/room3.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Economy Double</h5>
            <p class="card-text">Alice is a freelance web designer and developer based in London. She is specialized in HTML5, CSS3, JavaScript, Bootstrap, etc.</p>
            <a href="#" class="btn btn-primary">Rs. 3500</a>
            <a href="hotel3.jsp" class="btn btn-primary">Book Now</a>
        </div>
    </div>
    </div><!-- comment -->
    
    
    <div class="m-4" id="block_container">
    <div class="card" style="width: 300px;">
        <img src="images/room4.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Honeymoon Suit</h5>
            <p class="card-text">Alice is a freelance web designer and developer based in London. She is specialized in HTML5, CSS3, JavaScript, Bootstrap, etc.</p>
            <a href="#" class="btn btn-primary">Rs. 8500</a>
            <a href="hotel4.jsp" class="btn btn-primary">Book Now</a>
        </div>
    </div>
</div>
</html>
