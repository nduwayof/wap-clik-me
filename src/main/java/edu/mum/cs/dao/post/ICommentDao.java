package edu.mum.cs.dao.post;

import edu.mum.cs.dao.IGenericJpaDao;
import edu.mum.cs.domain.Comment;
import edu.mum.cs.domain.Post;

import java.util.List;

public interface ICommentDao extends IGenericJpaDao<Long , Comment> {
    List<Comment> findCommentsByPost(Post post);
}
