import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;

import java.util.List;


public class UserTest {

    public static void main(String[] args) {
        IUserDao userDao = new UserDao();
        List<User> users = userDao.findAll();
        for(User user : users){
           User userObj =  userDao.findById(user.getId());
           System.out.println(userObj.toString());
        }
    }

}
