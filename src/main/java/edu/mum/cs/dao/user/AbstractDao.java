package edu.mum.cs.dao.user;

import edu.mum.cs.dao.GenericDao;
import edu.mum.cs.domain.User;

public class AbstractDao extends GenericDao implements IAbstractDao {

    public AbstractDao() {
        typeParameterClass = User.class;
    }
}
