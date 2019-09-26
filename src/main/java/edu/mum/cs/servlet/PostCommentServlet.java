package edu.mum.cs.servlet;

import com.google.gson.Gson;
import edu.mum.cs.dao.post.CommentDao;
import edu.mum.cs.dao.post.ICommentDao;
import edu.mum.cs.dao.post.IPostDao;
import edu.mum.cs.dao.post.PostDao;
import edu.mum.cs.domain.Comment;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;
import edu.mum.cs.service.PostService;

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
        long postId = Long.valueOf(req.getParameter("commentPostId"));

        // db access
        IPostDao postDao = new PostDao();
        ICommentDao commentDao = new CommentDao();
        PostService postService = new PostService();
        Comment comment1 = new Comment();
        comment1.setComment(comment);
        comment1.setTime(LocalDateTime.now());
        comment1.setPost(postDao.findById(postId));
        User user = (User)req.getSession().getAttribute("user");
        comment1.setUser(user);
        commentDao.create(comment1);

        List<Post> posts = postService.getPostsUserHome(user);
        PrintWriter out = resp.getWriter();

        // convert to json
        Gson gn = new Gson();
        String postsJson = gn.toJson(posts);
        resp.setContentType("application/json");
        out.write(postsJson);

    }
}
