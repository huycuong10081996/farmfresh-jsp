package Controller;

import Model.User;

public interface UserDAO {
    public void addUser(User u);

    public boolean checkUser(String userEmail);

    public boolean login(String email, String password);

    public void updateUser(User user);

    public void updateUserInformation(User u);

    public void updateEmail(User user);

    public void updatePassword(User user);

    public void removeUser(String userId);

    public User getUser(String username);
}
