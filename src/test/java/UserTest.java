import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;

import java.util.List;


public class UserTest {

    public static void main(String[] args) {
        User user = new User();
        user.setFirstName("Bisrat");
        user.setLastName("Kidane");
        user.setGender("Female");
        user.setEmail("bsur91@gmail.com");
        user.setPassword("12345");
        user.setTwitterAccount("Arsenal");
        user.setAccess("user");
        IUserDao userDao = new UserDao();
        userDao.create(user);
        List<User> users = userDao.findAll();
        for(User userObj : users){
           User userObject =  userDao.findById(userObj.getId());
           System.out.println(userObject.toString());
        }
    }

}
