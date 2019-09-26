package edu.mum.cs.servlet;

import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;
import edu.mum.cs.service.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/timeline")
public class TimelineServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long userId = Long.valueOf(req.getParameter("rf"));

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        // data access
        IUserDao userDao = new UserDao();
        PostService postService = new PostService();
        User timelimeUser = userDao.findById(userId);
        req.setAttribute("timelineUser",timelimeUser);
        req.setAttribute("posts",postService.getPostsByUser(timelimeUser));

        // check if the timeline is for loggedin user;
        boolean isSelf = false;
        if(user.getId()==timelimeUser.getId()){
            isSelf = true;
        }
        req.setAttribute("isSelf",isSelf);
        req.getRequestDispatcher("views/user/timeline.jsp").forward(req,resp);
    }
}
