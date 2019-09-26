package edu.mum.cs.dao.user;

import edu.mum.cs.dao.GenericJpaDao;
import edu.mum.cs.dao.post.IPostDao;
import edu.mum.cs.domain.Follow;
import edu.mum.cs.domain.Post;

public class FollowDao extends GenericJpaDao<Long, Follow> implements IFollowDao {

    public FollowDao(){
        entityClass = Follow.class;
    }
}
