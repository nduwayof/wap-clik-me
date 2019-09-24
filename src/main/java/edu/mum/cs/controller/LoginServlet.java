package edu.mum.cs.controller;

import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
@WebServlet(name ="login",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
   private  UserDao dao ;

    public void init() throws ServletException {
        dao= new UserDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }


//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String username = req.getParameter("userName");
//        String password = req.getParameter("password");
//
//            for(User u: dao.getAllCustomers()) {// use method from db
//
//            if((username.equals(u.getUsername()))  &&(password.equals(u.getPassword()))){ // use method from User class
//
//                HttpSession session = req.getSession();
//                session.setAttribute("username", username);
//                session.setAttribute("password", password);
//                RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
//                session.setAttribute("user",u);
//                dispatcher.forward(req,resp);
//            }
//
//            else {
//                doGet(req,resp);
//            }
//        }
//    }
}
