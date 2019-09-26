package edu.mum.cs.servlet;

import edu.mum.cs.dao.user.FollowDao;
import edu.mum.cs.dao.user.IFollowDao;
import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.Follow;
import edu.mum.cs.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/follow")
public class FollowUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");

        long followingid = Long.valueOf(req.getParameter("user"));

        //data access
        IUserDao userDao = new UserDao();
        IFollowDao followDao = new FollowDao();

        Follow follow = new Follow();
        follow.setFollower(user);
        follow.setFollowed(userDao.findById(followingid));
        followDao.create(follow);

        PrintWriter out = resp.getWriter();
        out.write("follow successful");
    }
}
