package edu.mum.cs.dao.user;

import edu.mum.cs.dao.IGenericJpaDao;
import edu.mum.cs.domain.User;

import java.util.List;

public interface IUserDao extends IGenericJpaDao<Long, User> {
    public abstract List<User> getUserFollowers(User user);
    public abstract List<User> getUserFollowing(User user);
    public abstract List<User> getUserNearBy(User user);
}
