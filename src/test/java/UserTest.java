import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;

import java.util.List;


public class UserTest {

    public static void main(String[] args) {
        User user = new User();
        user.setFirstName("Fabrice");
        user.setLastName("Nduwayo");
        user.setGender("Male");
        user.setEmail("nduwayof@gmail.com");
        user.setPassword("fabrice");
        user.setTwitterAccount("NduwayoFabrice");
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
