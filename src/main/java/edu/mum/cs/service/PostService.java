package edu.mum.cs.service;

import edu.mum.cs.dao.post.*;
import edu.mum.cs.dao.user.IUserDao;
import edu.mum.cs.dao.user.UserDao;
import edu.mum.cs.domain.Notification;
import edu.mum.cs.domain.Post;
import edu.mum.cs.domain.User;

import java.time.LocalDateTime;
import java.util.List;

public class PostService {
    IPostDao postDao = new PostDao();
    ICommentDao commentDao = new CommentDao();
    public List<Post> getPostsUserHome(User user) {
        List<Post> posts = postDao.getPostsUserHome(user);
        for (Post post : posts){
                post.setComments(commentDao.findCommentsByPost(post));
        }
        return  posts;
    }
    public List<Post> getPostsByUser(User user){
        List<Post> posts =  postDao.getPostsByUser(user);
        for (Post post : posts){
            post.setComments(commentDao.findCommentsByPost(post));
        }
        return posts;
    }
    public void addPostNotification(Post post){
        INotificationDao notificationDao = new NotificationDao();
        UserService userService = new UserService();
        IUserDao userDao = new UserDao();

        User postUser = post.getUser();
        // add self notification
        Notification notification = new Notification();
        notification.setDetails("You Added a new Post");
        notification.setPost(post);
        notification.setUser(postUser);
        notificationDao.create(notification);

        String details = postUser.getFirstName() + " " + postUser.getFirstName() + "  Added a new post";

        //send post notification
        for(User user : userDao.getUserFollowers(post.getUser())) {
            if (user.getId() != postUser.getId() ) {
                notificationDao.create(new Notification(details, LocalDateTime.now(), post, user));
            }
        }
    }
}
