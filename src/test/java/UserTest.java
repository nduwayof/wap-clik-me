import edu.mum.cs.dao.user.AbstractDao;
import edu.mum.cs.domain.User;

import java.util.logging.Level;
import java.util.logging.Logger;


public class UserTest {

    private static final Logger LOGGER = Logger.getLogger(UserTest.class.getName());
<<<<<<< HEAD
    private static UserDao userDao = new UserDao();
=======
    private static AbstractDao userDao = new AbstractDao();
>>>>>>> 63d9c3d505c6ea64d7c18ee8e6688ddef62bf5c4

    public static void main(String[] args) {
        User user = (User) userDao.findById(2);
        LOGGER.log(Level.INFO, user.toString());
    }

}
