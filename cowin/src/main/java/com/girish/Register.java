package com.girish;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.*;

public class Register extends HttpServlet {

    private static final long serialVersionUID = 102831973239L;

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name = (String) request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String mobile = (String) request.getParameter("mob");
        String aadh = (String) request.getParameter("aadh");
        String city = request.getParameter("city");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:4078/cowin", "root", "abc123");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select count(*) as num from users where aadharid='" + aadh + "';");
            rs.next();
            int go = 0;
            if (rs.getInt("num") == 0) {
                stmt.executeUpdate(
                        "Insert into users (aadharid,username,age,mobi,city,role,date,isvaccinated,rdate) values("
                                + aadh + ",'" + name + "'," + age + "," + mobile + ",'" + city
                                + "','general','1999-12-12',0,'1999-12-12');");
                go = 1;
            } else {
                out.println("<center><h1>Aadhar card already exit. Please go back and register</h1></center>");
            }
            con.close();
            request.setAttribute("success", 1);
            if (go == 1)
                request.getRequestDispatcher("login.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
            out.println("<center><h1>Error occured</h1></center>");
        }

    }

}
