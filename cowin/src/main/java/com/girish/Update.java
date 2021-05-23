package com.girish;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.*;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;

public class Update extends HttpServlet {

    private static final long serialVersionUID = 102831973239L;

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate now = LocalDate.now();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:4078/cowin", "root", "abc123");
            Statement stmt = con.createStatement();
            ResultSet res = stmt
                    .executeQuery("Select * from users where date='" + dtf.format(now) + "' and isvaccinated=1;");
            int it = 0;
            while (res.next()) {
                request.setAttribute("bname" + it, res.getString("username"));
                String card = res.getString("aadharid");
                request.setAttribute("baadh" + it, card);
                request.setAttribute("bage" + it, res.getString("age"));
                request.setAttribute("bmobi" + it, res.getString("mobi"));
                request.setAttribute("bcity" + it, res.getString("city"));
                request.setAttribute("bdate" + it, res.getDate("date"));
                request.setAttribute("brdate" + it, res.getDate("rdate"));
                request.setAttribute("bisvac" + it, res.getString("isvaccinated"));
                request.setAttribute("btid" + it, res.getString("tid"));
                it++;
            }
            request.setAttribute("it", it);
            ResultSet rest = stmt.executeQuery("Select * from users where rdate='" + dtf.format(now) + "';");
            int itt = 0;
            while (rest.next()) {
                request.setAttribute("rname" + itt, rest.getString("username"));
                String card = rest.getString("aadharid");
                request.setAttribute("raadh" + itt, card);
                request.setAttribute("rage" + itt, rest.getString("age"));
                request.setAttribute("rmobi" + itt, rest.getString("mobi"));
                request.setAttribute("rcity" + itt, rest.getString("city"));
                request.setAttribute("rdate" + itt, rest.getDate("date"));
                request.setAttribute("rrdate" + itt, rest.getDate("rdate"));
                request.setAttribute("risvac" + itt, rest.getString("isvaccinated"));
                request.setAttribute("rtid" + itt, rest.getString("tid"));
                itt++;
            }
            request.setAttribute("itt", itt);
            request.getRequestDispatcher("liveup.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
            out.println(e + "<center><h1>Error occured</h1></center>");
        }

    }
}
