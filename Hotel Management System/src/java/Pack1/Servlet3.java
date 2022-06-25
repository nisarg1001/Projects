/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Pack1;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import java.io.*;
import java.io.PrintWriter;
import static java.lang.ProcessBuilder.Redirect.to;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author sarth
 */
public class Servlet3 implements Servlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ServletConfig getServletConfig() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "ajlab";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        String email = "";
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url + dbName, userName, password);

//           if( req.getParameter("btn1")!=null)
//           {
//                req.setAttribute("id" , rs.getString("the_id") );
//                res.sendRedirect("destination.jsp");
//           }
            PrintWriter out = res.getWriter();
            String s = req.getParameter("btn1");
            String s1 = req.getParameter("btn2");
            if (s == null) {
                System.out.println("Delete:" + s1);

                PreparedStatement pst = con.prepareStatement("delete from temp1 where id=?");
                pst.setString(1, s1);
                pst.executeUpdate();
                pst.close();

                RequestDispatcher rd = req.getRequestDispatcher("adminpanel.jsp");
                rd.forward(req, res);

            }
            if (s1 == null) {
                System.out.println("aprove:" + s);
                PreparedStatement pst = con.prepareStatement("update temp1 set status='approved' where id=?");
                pst.setString(1, s);
                pst.executeUpdate();
                pst.close();

                PreparedStatement stmt = con.prepareStatement("select email from temp1 where id=?");
                stmt.setString(1, s);
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    email = rs.getString(1);
                    System.out.println("Email : " + email);
                }

                String to = email;

                // Sender's email ID needs to be mentioned
                String from = "sarthakthakkar752@gmail.com";

                // Assuming you are sending email from through gmails smtp
                String host = "smtp.gmail.com";

                // Get system properties
                Properties properties = System.getProperties();

                // Setup mail server
                properties.put("mail.smtp.host", host);
                properties.put("mail.smtp.port", "465");
                properties.put("mail.smtp.ssl.enable", "true");
                properties.put("mail.smtp.auth", "true");

                // Get the Session object.// and pass username and password
                Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {

                        return new PasswordAuthentication("sarthakthakkar752@gmail.com", "sntsnt7502");

                    }

                });

                // Used to debug SMTP issues
                session.setDebug(true);

                try {
                    // Create a default MimeMessage object.
                    MimeMessage message = new MimeMessage(session);

                    // Set From: header field of the header.
                    message.setFrom(new InternetAddress(from));

                    // Set To: header field of the header.
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

                    // Set Subject: header field
                    message.setSubject("This is the Subject Line!");

                    // Now set the actual message
                    message.setText("This is actual message");

                    System.out.println("sending...");
                    // Send message
                    Transport.send(message);
                    System.out.println("Sent message successfully....");
                } catch (MessagingException mex) {
                    mex.printStackTrace();
                }
                String result="";
                System.out.println("Result : " + result);
                RequestDispatcher rd = req.getRequestDispatcher("adminpanel.jsp");
                rd.forward(req, res);
                res.setContentType("text/html;charset=UTF-8");

                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");

                out.println("</head>");
                out.println("<body>");
                out.println("Result : " + result);
                out.println("</body>");
                out.println("</html>");
            }
        } catch (ClassNotFoundException ex) {
            // Logger.getLogger(Servlet3.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Servlet3.class.getName()).log(Level.SEVERE, null, ex);
        }

        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getServletInfo() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void destroy() {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
