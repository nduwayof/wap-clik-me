package edu.mum.cs.controller.user;

import com.google.gson.Gson;
import edu.mum.cs.dao.IAbstractDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(urlPatterns = "/change-status")
public class StatusController extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(StatusController.class.getName());
    private IAbstractDao<User> dao;
    private Gson gson = new Gson();

    public StatusController(){
        dao = new UserDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
       try{
           String userId = request.getParameter("user_id");
           long id = Long.parseLong(userId);
           User user =  dao.findById(id);
           if(user.isActive())
               user.setActive(Boolean.FALSE);
           else
               user.setActive(Boolean.TRUE);
           dao.save(user);
           PrintWriter writer = response.getWriter();
           String userJsonString = this.gson.toJson(user);
           response.setContentType("application/json");
           response.setCharacterEncoding("UTF-8");
           writer.print(userJsonString);
           writer.flush();
       }catch (Exception ex){
           LOGGER.log(Level.SEVERE, ex.getMessage());
       }
    }
}
