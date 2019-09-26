package edu.mum.cs.servlet;

import edu.mum.cs.dao.post.INotificationDao;
import edu.mum.cs.dao.post.NotificationDao;
import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.Comment;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;
import edu.mum.cs.service.PostService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "home",urlPatterns = "/home")
public class HomeServlet extends HttpServlet {

    List<Post> posts = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // display the user home with current posts

        // add testing date
        PostService postService = new PostService();
        IUserDao userDao = new UserDao();
        INotificationDao notificationDao = new NotificationDao();
        HttpSession session = req.getSession();
        //User user = (User) session.getAttribute("user");
        User user = userDao.findById(1l);
        session.setAttribute("user",user);

        session.setAttribute("notifications",notificationDao.findAll());

        req.setAttribute("posts",postService.getPostsUserHome(user));


        //req.getServletContext().setAttribute("users",users);
        // get the current posts for the user and user followers
        RequestDispatcher rd = req.getRequestDispatcher("views/user/home2.jsp");
        rd.forward(req,resp);
    }
}
