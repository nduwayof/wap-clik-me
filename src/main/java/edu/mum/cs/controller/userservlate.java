package edu.mum.cs.controller;


import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.Acesslevel;
import edu.mum.cs.domain.EGender;
import edu.mum.cs.domain.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/userprofile")

public class userservlate extends HttpServlet {

    private List<User> userlist = new ArrayList<>();

    private UserDao userDao;

    public userservlate() {
        userDao = new UserDao();
    }

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setAttribute("userprofile", userlist);
//        RequestDispatcher userreq = req.getRequestDispatcher("userprofile.jsp");
//        userreq.forward(req, resp);
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String fname = req.getParameter("fname");
        String lname = req.getParameter("laname");
        String email = req.getParameter("Email");
        String pass = req.getParameter("pass");
        String repass = req.getParameter("repass");
        User user = new User(fname, lname, email, pass, Acesslevel.user, EGender.FEMALE);


        //   if(pass.equals(repass)) {
        userDao.save(user);
        //resp.sendRedirect("/userprofile");

        userlist.add(user);

        Gson gson = new Gson();
        String curontuser = gson.toJson(user);
        Gson gsonuser = new Gson();
        String alluser = gsonuser.toJson(userlist);

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");


        //Looping
        resp.getWriter().write(alluser);
    }
}
