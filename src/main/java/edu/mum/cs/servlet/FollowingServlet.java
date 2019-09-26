package edu.mum.cs.servlet;

import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;
import edu.mum.cs.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/following")
public class FollowingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");

        //data access
        IUserDao userDao = new UserDao();
        UserService userService = new UserService();
        List<User> followers = userDao.getUserFollowers(user);
        req.setAttribute("users",followers);
        req.getRequestDispatcher("views/user/following.jsp").forward(req,resp);
    }
}
