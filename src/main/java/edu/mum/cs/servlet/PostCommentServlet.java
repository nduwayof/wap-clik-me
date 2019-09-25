package edu.mum.cs.servlet;

import com.google.gson.Gson;
import edu.mum.cs.domain.Comment;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.List;
@WebServlet("/addPostComment")
public class PostCommentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String comment = req.getParameter("postComment");
        int postId = Integer.valueOf(req.getParameter("commentPostId"));
        Comment comment1 = new Comment();
        comment1.setComment(comment);
        comment1.setTime(LocalDateTime.now());

        // add post to the database
        HttpSession session = req.getSession();
        List<Post> posts = (List<Post>)session.getAttribute("posts");
        Post post = posts.get(postId-1);

        User user = (User)session.getAttribute("user");
        post.getComments().add(comment1);

        session.setAttribute("posts",posts);
        //post.setUser(new User());
        // save post to database
        PrintWriter out = resp.getWriter();

        // convert to json
        Gson gn = new Gson();
        String postsJson = gn.toJson(posts);
        resp.setContentType("application/json");
        out.write(postsJson);

    }
}
