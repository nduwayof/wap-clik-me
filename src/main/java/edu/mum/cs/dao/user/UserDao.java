package edu.mum.cs.dao.user;

import edu.mum.cs.dao.GenericDao;
import edu.mum.cs.domain.User;

public class UserDao extends GenericDao implements IAbstractDao {

    public UserDao() {
        typeParameterClass = User.class;
    }
}
