
import edu.mum.cs.dao.IAbstractDao;
import edu.mum.cs.dao.user.UserDao;

import java.util.logging.Logger;


public class UserTest {

    private static final Logger LOGGER = Logger.getLogger(UserTest.class.getName());

    private static IAbstractDao userDao = new UserDao();


    public static void main(String[] args) {
        UserDao dao = new UserDao();
    }

}
