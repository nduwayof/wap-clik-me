package edu.mum.cs.dao.user;

import edu.mum.cs.dao.GenericJpaDao;
import edu.mum.cs.domain.User;

public class UserDao extends GenericJpaDao<Long, User> implements IUserDao {

    public UserDao(){
        entityClass = User.class;
    }

}
