package edu.mum.cs.dao.user;

import edu.mum.cs.dao.GenericJpaDao;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;

import javax.persistence.Query;
import java.util.List;

public class UserDao extends GenericJpaDao<Long, User> implements IUserDao {

    public UserDao(){
        entityClass = User.class;
    }

    @Override
    public List<User> getUserFollowers(User user) {
        String uid = ""+user.getId();
        String sql = "SELECT users.* from users,follow where users.id = follow.followed_ID and follow.follower_ID = " + uid + " order by follow.followTime desc";
        Query q = manager.createNativeQuery(sql, User.class);
        List<User> users = q.getResultList();
        return users;
    }

    @Override
    public List<User> getUserFollowing(User user) {
        String uid = ""+user.getId();
        String sql = "SELECT users.* from users,follow where wapdb.users.id = follow.follower_ID and follow.followed_ID = \" + uid + \" order by follow.followTime desc";
        Query q = manager.createNativeQuery(sql, User.class);
        List<User> users = q.getResultList();
        return users;
    }

    @Override
    public List<User> getUserNearBy(User user) {
        String uid = ""+user.getId();
        String sql = "select * from users where users.id != \" + user + \" order by rand()";
        Query q = manager.createNativeQuery(sql, User.class);
        List<User> users = q.getResultList();
        return users;
    }
}
