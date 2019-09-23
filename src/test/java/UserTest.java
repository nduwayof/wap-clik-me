import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;


public class UserTest {
    public static void main(String[] args) {
        UserDao userDao = new UserDao();
        System.out.println(userDao.findById(1));
        userDao.findAll();
    }

}
