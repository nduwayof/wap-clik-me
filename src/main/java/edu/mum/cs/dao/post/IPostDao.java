package edu.mum.cs.dao.post;

import edu.mum.cs.dao.IGenericJpaDao;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;

import java.util.List;

public interface IPostDao extends IGenericJpaDao<Long, Post> {
    public abstract List<Post> getPostsUserHome(User userId);
    public abstract List<Post> getPostsUserHomePaged(User userId,Integer start,Integer interval);
    public abstract List<Post> getPostsByUser(User user);
}
