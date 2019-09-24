package edu.mum.cs.controller.advertisment;

import edu.mum.cs.dao.user.AbstractDao;
import edu.mum.cs.domain.Advertisement;
import edu.mum.cs.domain.Company;
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

@WebServlet(name ="addAds",  urlPatterns="/addAds")
public class AdvertisementServlet extends HttpServlet {


    private  String imageUpload_DIRECTORY;
    private AbstractDao abstractDao = new AbstractDao();
    private List<Advertisement> advertisements = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        imageUpload_DIRECTORY = req.getServletContext().getInitParameter("imageOfAds");
        String imageName = "";
        Map<String, String> params = new HashMap<>();
        String adsDetails= "";
       Advertisement ads= new Advertisement();
       Company comp=new Company();

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
                        imageName = name;
                        item.write( new File(imageUpload_DIRECTORY + File.separator + name));
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


        //add things to db
     //   HttpSession session = req.getSession();
     //admin   User user = (User)session.getAttribute("user");
        ads.setTitle(params.get("txtTitle"));
        ads.setCompanyAds(comp);
        ads.setImage(imageName);
        advertisements.add(ads);
        //post.setUser(new User());
        // save post to database
        PrintWriter out = resp.getWriter();
        out.println("ads are added successful");
        //abstractDao.save(post);

    }
}
