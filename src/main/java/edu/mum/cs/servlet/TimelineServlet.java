package edu.mum.cs.servlet;

import edu.mum.cs.domain.User;

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
        int userId = Integer.valueOf(req.getParameter("rf"));
        HttpSession session = req.getSession();
        List<User> users = (List<User>)req.getServletContext().getAttribute("users");
        User timelimeUser = users.get(userId-1);
        req.setAttribute("timelineUser",timelimeUser);
        req.getRequestDispatcher("views/user/timeline.jsp").forward(req,resp);
    }
}
