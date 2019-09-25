package edu.mum.cs.servlet;

import edu.mum.cs.domain.Comment;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;

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
        HttpSession session = req.getSession();
        Post post1 = new Post();

        User user = new User();
        user.setFirstName("Brian");
        user.setLastName("Bwengye");

        User user2 = new User();
        user2.setFirstName("Fabrice");
        user2.setLastName("Nduwayo");

        post1.setDetails("Hello I love New York ");
        post1.setId(1);
        post1.setUser(user);
        post1.setPhoto("brian_bwengye_profile_pic.jpg");
        post1.setTime(LocalDateTime.now());

        post1.getComments().add(new Comment("hello Brian , I like this"));
        post1.getComments().add(new Comment("wooww!! this is great"));

        Post post2 = new Post();
        post2.setUser(user2);
        post2.setPhoto("Capture.PNG");
        post2.setTime(LocalDateTime.now());
        post2.setId(2);

        post2.getComments().add(new Comment("when did you leave"));

        post2.setDetails("quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto");
        Post post3 = new Post();
        post3.setUser(user);
        post3.setTime(LocalDateTime.now());
        post3.setId(3);
        post3.setDetails("est rerum tempore vitae sequi sint nihil reprehenderit dolor beatae ea dolores neque fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis qui aperiam non debitis possimus qui neque nisi nulla");
        posts.add(post1);
        posts.add(post2);
        posts.add(post3);
        //req.setAttribute("posts",posts);

        session.setAttribute("posts",posts);

        user.setFirstName("Brian");
        user.setLastName("Bwengye");
        req.setAttribute("user",user);
        session.setAttribute("user",user);
        List<User> users = new ArrayList<>();
        user.setId(1);
        user2.setId(2);
        users.add(user);
        users.add(user2);
        req.getServletContext().setAttribute("users",users);
        // get the current posts for the user and user followers
        RequestDispatcher rd = req.getRequestDispatcher("views/user/home2.jsp");
        rd.forward(req,resp);
    }
}
