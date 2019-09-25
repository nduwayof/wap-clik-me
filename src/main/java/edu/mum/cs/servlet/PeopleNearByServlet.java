package edu.mum.cs.servlet;

import edu.mum.cs.domain.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/peopleNearby")
public class PeopleNearByServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        user.setFirstName("Wagobera");
        user.setLastName("Edgar");
        user.setImage("brian_bwengye_profile_pic.jpg");
        user.setId(1);

        User user2 = new User();
        user2.setFirstName("Fabrice");
        user2.setLastName("Nduwayo");
        user2.setImage("Capture.PNG");
        user2.setId(2);
        List<User> users = new ArrayList<>();
        users.add(user);
        users.add(user2);
        HttpSession session = req.getSession();
        session.setAttribute("users",users);
        RequestDispatcher rd = req.getRequestDispatcher("views/user/people_nearby.jsp");
        rd.forward(req,resp);
    }
}
