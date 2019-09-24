package edu.mum.cs.dao;

import edu.mum.cs.domain.Post;

public class PostDao extends GenericDao implements IAbstractDao {

    public PostDao(){
        typeParameterClass = Post.class;
    }

}
