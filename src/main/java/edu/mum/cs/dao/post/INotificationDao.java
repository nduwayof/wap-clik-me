package edu.mum.cs.dao.post;

import edu.mum.cs.dao.IGenericJpaDao;
import edu.mum.cs.domain.Advertisement;
import edu.mum.cs.domain.Notification;
import edu.mum.cs.domain.User;

import java.util.List;

public interface INotificationDao extends IGenericJpaDao<Long, Notification> {
    public  abstract  List<Notification> getNotificationsByUser(User user);
    public abstract   void updateNotifications(List<Notification> notifications);
}
