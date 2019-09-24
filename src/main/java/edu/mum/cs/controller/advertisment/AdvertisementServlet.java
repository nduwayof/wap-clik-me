package edu.mum.cs.controller.advertisment;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/advertisements")
public class AdvertisementServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(AdvertisementServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        try{
            request.getRequestDispatcher("advertisement.jsp")
                    .forward(request, response);
            response.sendRedirect("/advertisements");
        }catch (Exception ex){
            LOGGER.log(Level.SEVERE, ex.getMessage());
        }
    }

}
