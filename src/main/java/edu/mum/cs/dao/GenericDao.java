package edu.mum.cs.dao;

import edu.mum.cs.hibernate.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;

public abstract class GenericDao<T> {

    public SessionFactory sessionFactory;
    public Class<T> typeParameterClass;

    public GenericDao(){
        sessionFactory = HibernateUtil.getSessionFactory();
    }

    public List<T> findAll() {
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = builder.createQuery(typeParameterClass);
        criteriaQuery.from(typeParameterClass);
        List<T> ts = session.createQuery(criteriaQuery).getResultList();
        session.close();
        return ts;
    }

    public void save(T t){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.saveOrUpdate(t);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(T t) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(t);
        session.getTransaction().commit();
        session.close();
    }

}
