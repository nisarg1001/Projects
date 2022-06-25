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
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sarth
 */
public class Servlet1 implements Servlet {

    ServletConfig sc;

    @Override
    public void init(ServletConfig config) throws ServletException {
        sc = config;

        // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ServletConfig getServletConfig() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        String username = req.getParameter("username");

        String password = req.getParameter("password");

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "ajlab";
        String driver = "com.mysql.cj.jdbc.Driver";
        String userName = "root";
        String pass = "";
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Servlet1.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            Connection con = DriverManager.getConnection(url + dbName, userName, pass);
            PreparedStatement ps;

               String queryCheck = "SELECT count(*) from admins WHERE username= ? and password=?";
               ps = con.prepareStatement(queryCheck);
               int count = 0;
               PrintWriter pw = res.getWriter();
               ps.setString(1,username);
               ps.setString(2,password);
               ResultSet resultSet = ps.executeQuery();
                  if(resultSet.next()) {
                 count = resultSet.getInt(1);
                 }
            if (count>=1) {
                // Go to next page
                RequestDispatcher rd = req.getRequestDispatcher("adminpanel.jsp");
                rd.forward(req, res);
            } else {
                // Go to Same page 
             //   pw.write("<p>Incorrect Username");
                RequestDispatcher rd1 = req.getRequestDispatcher("index.html");
                rd1.include(req, res);

            }
        } catch (SQLException ex) {
            Logger.getLogger(Servlet1.class.getName()).log(Level.SEVERE, null, ex);
        }
        PrintWriter pw = res.getWriter();

//throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getServletInfo() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void destroy() {
        // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
