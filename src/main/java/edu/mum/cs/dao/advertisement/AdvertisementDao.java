package edu.mum.cs.dao.advertisement;

import edu.mum.cs.dao.GenericJpaDao;
import edu.mum.cs.domain.Advertisement;

public class AdvertisementDao  extends GenericJpaDao<Long, Advertisement> implements IAdvertisementDao {

    public AdvertisementDao(){
        entityClass = Advertisement.class;
    }

}
