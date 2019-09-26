package edu.mum.cs.dao.post;

import edu.mum.cs.dao.GenericJpaDao;
import edu.mum.cs.domain.Notification;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;

import javax.persistence.Query;
import java.util.List;

public class NotificationDao extends GenericJpaDao<Long, Notification> implements INotificationDao {

    public NotificationDao() {
        entityClass = Notification.class;
    }

    @Override
    public List<Notification> getNotificationsByUser(User user) {
        String uid = ""+ user.getId();
        String sql = "SELECT  notifications.* from notifications where notifications.USER_ID = " + uid+ " and seen = 0 ORDER BY notifications.notTime desc";
        Query q = manager.createNativeQuery(sql,Notification.class);
        List<Notification> notifications = q.getResultList();
        return notifications;
    }

    @Override
    public void updateNotifications(List<Notification> notifications) {
        for (Notification notification: notifications){
            notification.setSeen(true);
            update(notification);
        }
    }
}