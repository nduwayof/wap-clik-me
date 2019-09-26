package edu.mum.cs.dao.advert;

import edu.mum.cs.dao.GenericJpaDao;
import edu.mum.cs.dao.post.IPostDao;
import edu.mum.cs.domain.Advertisement;
import edu.mum.cs.domain.Post;

public class AdvertDao extends GenericJpaDao<Long, Advertisement> implements IAdvertDao {

    public AdvertDao() {
        entityClass = Advertisement.class;
    }
}