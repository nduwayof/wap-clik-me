import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.User;

import java.util.logging.Level;
import java.util.logging.Logger;


public class UserTest {

    private static final Logger LOGGER = Logger.getLogger(UserTest.class.getName());
    private static UserDao userDao = new UserDao();

    public static void main(String[] args) {
        User user = (User) userDao.findById(2);
        LOGGER.log(Level.INFO, user.toString());
    }

}
