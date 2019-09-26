package edu.mum.cs.servlet;


import com.google.gson.Gson;

import edu.mum.cs.dao.GenericJpaDao;
import edu.mum.cs.dao.post.PostDao;

import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "addpost",urlPatterns = {"/addPost"})
public class PostServlet extends HttpServlet {
    private  String UPLOAD_DIRECTORY;

    private GenericJpaDao<Long, Post> genericJpaDao = new PostDao();
    private List<Post> posts = new ArrayList<>();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UPLOAD_DIRECTORY = req.getServletContext().getInitParameter("imageUploads");
        String photoName = "";
        Map<String, String> params = new HashMap<>();
        String postDetails = "";
        Post post = new Post();

        //process only if its multipart content
        if(ServletFileUpload.isMultipartContent(req)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(req);

                for(FileItem item : multiparts){
                    if(item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();
                        params.put(name,value);
                    }
                    else{
                        String name = new File(item.getName()).getName();
                        // set the photo name
                        photoName = name;
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                    }
                }

                //File uploaded successfully
                req.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
                req.setAttribute("message", "File Upload Failed due to " + ex);
            }

        }else{
            req.setAttribute("message",
                    "Sorry this Servlet only handles file upload request");
        }

        // add post to the database
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");
        post.setDetails(params.get("postDetails"));
        post.setPhoto(photoName);
        post.setUser(user);

        List<Post> posts = (List<Post>)session.getAttribute("posts");
        post.setId(posts.size()+1);
        posts.add(post);
        session.setAttribute("posts",posts);
        //post.setUser(new User());
        // save post to database
        PrintWriter out = resp.getWriter();

        // convert to json
        Gson gn = new Gson();
        String postsJson = gn.toJson(posts);
        resp.setContentType("application/json");
        out.write(postsJson);
        //abstractDao.save(post);

    }

}
