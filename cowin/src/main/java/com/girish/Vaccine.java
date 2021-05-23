package com.girish;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.*;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;

public class Vaccine extends HttpServlet {

    private static final long serialVersionUID = 102831973239L;

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String user;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate now = LocalDate.now();
        try {
            user = (String) request.getSession(true).getAttribute("aadhar");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:4078/cowin", "root", "abc123");
            Statement stmt = con.createStatement();
            stmt.executeUpdate("update users set rdate='" + dtf.format(now) + "', date='" + request.getParameter("date")
                    + "' where aadharid=" + user + ";");
            ResultSet res = stmt.executeQuery("select * from users where aadharid=" + user + ";");
            if (res.next()) {
                request.setAttribute("name", res.getString("username"));
                request.setAttribute("date", res.getString("date"));
                request.setAttribute("rdate", res.getString("rdate"));
                request.setAttribute("vc", res.getString("isvaccinated"));
                request.getRequestDispatcher("vaccine.jsp").forward(request, response);
            }

        } catch (Exception e) {
            out.println(e + "<center><h1>Error occured</h1></center>");
        }

    }
}
