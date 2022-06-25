<%-- 
    Document   : adminchecker
    Created on : Apr 24, 2022, 5:19:28 PM
    Author     : sarth
--%>
<%@ page errorPage = "errorjsp1.jsp" %>


        <%
     String username = request.getParameter("username");
     String password = request.getParameter("password");
     out.println("here");
     if(username == "a" && password=="a")
     {
         out.println("here1");
         request.getRequestDispatcher("/adminpanel.jsp").forward(request, response);
         out.println("here2");
     }
     else
     {
         out.println("here3");
         request.getRequestDispatcher("/index.html").forward(request, response);
         out.println("here4");
     }
    %>
