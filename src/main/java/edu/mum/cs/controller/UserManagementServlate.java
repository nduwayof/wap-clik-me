package edu.mum.cs.controller;

import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.UserManagement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/usermanagment")
public class UserManagementServlate extends HttpServlet {
    private UserDao userDao;

    public UserManagementServlate() {
        userDao = new UserDao();
    }

    UserManagementServlate um = new UserManagementServlate();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("usermangment", "userlist");
        RequestDispatcher rr = req.getRequestDispatcher("usermanagement.jsp");
        rr.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String status = req.getParameter("active");
        UserManagement manage = new UserManagement(status);
        userDao.save(manage);
        resp.sendRedirect("usermanagment");
    }
}
