package edu.mum.cs.dao.user;

import edu.mum.cs.dao.GenericDao;
import edu.mum.cs.domain.User;
import org.hibernate.Session;

public class UserDao extends GenericDao implements IUserDao {

    public UserDao() {
        typeParameterClass = User.class;
    }

    @Override
    public User findById(long id) {
        Session session = sessionFactory.openSession();
        User user = session.get(User.class, id);
        session.close();
        return user;
    }
}
