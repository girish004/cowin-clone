package com.girish;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.*;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;

public class Login extends HttpServlet {

    private static final long serialVersionUID = 102831973239L;

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate now = LocalDate.now();
        String aadh;
        if ((String) request.getParameter("aadh") != null) {
            aadh = (String) request.getParameter("aadh");
            request.getSession().setAttribute("aadhar", aadh);
        } else {
            aadh = (String) request.getSession(true).getAttribute("aadhar");
            out.println("<center><h1>Invalid aadhar card numbers</h1></center>");
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:4078/cowin", "root", "abc123");
            Statement stmt = con.createStatement();
            if (request.getParameter("user") != null)
                stmt.executeUpdate(
                        "Update users set isvaccinated=1 where aadharid=" + request.getParameter("user") + ";");
            ResultSet rs = stmt.executeQuery("Select count(*) as num from users where aadharid='" + aadh + "';");
            rs.next();
            int go = 0;
            if (rs.getInt("num") == 1) {
                ResultSet logs = stmt.executeQuery("Select * from users where aadharid='" + aadh + "';");
                logs.next();
                if (logs.getString("role").equals("admin")) {
                    request.setAttribute(("name"), logs.getString("username"));
                    ResultSet pats = stmt
                            .executeQuery("Select * from users where date!='1999-12-12' and isvaccinated=0;");
                    int it = 0;
                    while (pats.next()) {
                        request.setAttribute("name" + it, pats.getString("username"));
                        String card = pats.getString("aadharid");
                        request.setAttribute("aadh" + it, card);
                        request.setAttribute("age" + it, pats.getString("age"));
                        request.setAttribute("mobi" + it, pats.getString("mobi"));
                        request.setAttribute("city" + it, pats.getString("city"));
                        request.setAttribute("date" + it, pats.getDate("date"));
                        request.setAttribute("isvac" + it, pats.getString("isvaccinated"));
                        request.setAttribute("tid" + it, pats.getString("tid"));
                        it++;
                    }
                    request.setAttribute("it", it);
                    request.setAttribute("now", dtf.format(now));
                    request.getRequestDispatcher("doc.jsp").forward(request, response);
                } else {
                    request.setAttribute("name", logs.getString("username"));
                    request.setAttribute("date", logs.getString("date"));
                    request.setAttribute("rdate", logs.getString("rdate"));
                    request.setAttribute("vc", logs.getString("isvaccinated"));
                    request.getRequestDispatcher("vaccine.jsp").forward(request, response);
                }

            } else {
                out.println("<center><h1>Invalid aadhar card number</h1></center>");
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
