package Controller;

import Model.User;

public interface UserDAO {
    public void addUser(User u);

    public boolean checkUser(String userEmail);

    public boolean login(String email, String password);

    public void updateUser(User u);

    public User getUser(String username);
}
