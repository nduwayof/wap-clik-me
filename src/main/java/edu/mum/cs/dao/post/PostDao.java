package edu.mum.cs.dao.post;

import edu.mum.cs.dao.GenericDao;
import edu.mum.cs.dao.IAbstractDao;
import edu.mum.cs.domain.Post;

public class PostDao extends GenericDao implements IAbstractDao {

    public PostDao(){
        typeParameterClass = Post.class;
    }

}
