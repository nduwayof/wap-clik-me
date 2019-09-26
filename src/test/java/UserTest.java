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
import java.util.List;


public class UserTest {

    public static void main(String[] args) {
        User user = new User();
        user.setFirstName("Fabrice");
        user.setLastName("Nduwayo");
        user.setGender("Male");
        user.setEmail("nduwayof@gmail.com");
        user.setAccess("user");
        user.setPassword("fabrice");
        IUserDao userDao = new UserDao();
        userDao.create(user);
    }

}
