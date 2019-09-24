package edu.mum.cs.controller.user;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(urlPatterns = "/users")
public class UserController extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(UserController.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        try{
            request.getRequestDispatcher("list-users.jsp")
                    .forward(request, response);
            response.sendRedirect("/users");
        }catch (Exception ex){
            LOGGER.log(Level.SEVERE, ex.getMessage());
        }
    }
}
