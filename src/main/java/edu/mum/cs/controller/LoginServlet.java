package edu.mum.cs.controller;

import edu.mum.cs.dao.IAbstractDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name ="login",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
   private  IAbstractDao dao ;

   @Override
    public void init() throws ServletException {
        dao = new UserDao();
    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, IOException {
        doPost(req, resp);

    }
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember_me");
        List<User> users = dao.findAll();

        for(User user: users) {// use method from db
            if (username != null && username.trim().length() > 0 && password != null && password.trim().length() > 0
                    &&(username.equals(user.getEmail())) &&(password.equals(user.getPassword()))) {//use method from object user

                //remember me function by creating permanent cookie object
                if (remember != null) {
                    System.out.println("remember_me : " + remember);
                    Cookie cUserName = new Cookie("cookuser", username.trim());
                    Cookie cPassword = new Cookie("cookpass", username.trim());
                    Cookie cRemember = new Cookie("cookrem", remember.trim());
                    cUserName.setMaxAge(60 * 60 * 24 * 30);// 30 days
                    cPassword.setMaxAge(60 * 60 * 24 * 30);
                    cRemember.setMaxAge(60 * 60 * 24 * 30);
                    resp.addCookie(cUserName);
                    resp.addCookie(cPassword);
                    resp.addCookie(cRemember);
                }

                HttpSession session = req.getSession();
                session.setAttribute("username", username);
                session.setAttribute("password", password);
                RequestDispatcher dispatcher = req.getRequestDispatcher("/list-users.jsp");//to the home page
               // session.setAttribute("user",u);
                dispatcher.forward(req,resp);
            } else {
                String error = " Wrong user name or Password";
                req.setAttribute("errorMessage", "userName or Password is Wrong");
                RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
                dispatcher.forward(req, resp);
            }
        }




        }
    }

