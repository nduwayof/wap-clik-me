package edu.mum.cs.controller;

import edu.mum.cs.controller.user.UserController;
import edu.mum.cs.dao.IAbstractDao;
import edu.mum.cs.dao.user.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/advertisement")
public class searchcontroller extends HttpServlet {


    private static final Logger LOGGER = Logger.getLogger(searchcontroller.class.getName());
    private IAbstractDao dao;

    @Override
    public void init() throws ServletException {
        super.init();
        dao = new UserDao();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

             req.setAttribute("serarch","first");
        RequestDispatcher rr=req.getRequestDispatcher("advertisement.jsp");

           rr.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

              long first=Integer.valueOf(req.getParameter("firstname"));
              dao.findById(first);
             System.out.println(dao.findById(first));
             resp.sendRedirect("advertisement");



    }
}
