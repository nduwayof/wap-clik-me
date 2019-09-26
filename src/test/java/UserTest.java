import edu.mum.cs.dao.post.CommentDao;
import edu.mum.cs.dao.post.ICommentDao;
import edu.mum.cs.dao.post.IPostDao;
import edu.mum.cs.dao.post.PostDao;
import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.Comment;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;


public class UserTest {

    public static void main(String[] args) {
        User user = new User();
        user.setFirstName("Brian");
        user.setLastName("Bwengye");
        user.setGender("Male");
        user.setEmail("bb@gmail.com");
        user.setAccess("user");
        user.setPassword("brian");
        IUserDao userDao = new UserDao();
        User userDb = userDao.create(user);

        Post  post = new Post();
        post.setUser(userDb);
        post.setDetails("I love Kigali");
        post.setTime(LocalDateTime.now());
        post.setEnabled(Boolean.TRUE);
        IPostDao postDao = new PostDao();
        Post postObj = postDao.create(post);

        List<User> users = userDao.findAll();
        for(User userObject : users){
           User userObj =  userDao.findById(userObject.getId());
           System.out.println(userObj.toString());
        }

        List<Post> posts = postDao.getPostsUserHome(userDao.findById(1l));
        for(Post post1 : posts){
            //User userObj =  userDao.findById(userObject.getId());
            System.out.println(post1.toString());
        }
        ICommentDao cmdoa =  new CommentDao();
        List<Comment> comments = cmdoa.findCommentsByPost(postDao.findById(1l));

        for(Comment comment : comments){
            //User userObj =  userDao.findById(userObject.getId());
            System.out.println(comment.toString());
        }
    }

}
