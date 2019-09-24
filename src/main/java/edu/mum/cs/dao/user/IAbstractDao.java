package edu.mum.cs.dao.user;

import java.util.List;

public interface IAbstractDao<T> {
    List<T> findAll();
    T findById(long id);
    void save(T t);
    void delete(T t);
}