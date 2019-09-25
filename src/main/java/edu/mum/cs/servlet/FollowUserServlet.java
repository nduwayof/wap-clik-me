package edu.mum.cs.servlet;

import edu.mum.cs.dao.user.UserDao;
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

@WebServlet("/followUser")
public class FollowUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");
        List<User> users = (List<User>)session.getAttribute("users");
        int followingid = Integer.valueOf(req.getParameter("userId"));
        User followingUser = users.get(followingid-1);
        user.getFollowing().add(followingUser);
        followingUser.getFollowers().add(user);
        session.setAttribute("users",users);
        PrintWriter out = resp.getWriter();
        out.write("follow successful");
    }
}
