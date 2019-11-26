package Controller;

import Model.User;

import java.sql.SQLException;

public interface UserDAO {

    public void addUser(User u) throws SQLException, ClassNotFoundException;

    public boolean checkUser(String email) throws SQLException, ClassNotFoundException;

    public boolean login(String email, String password) throws SQLException, ClassNotFoundException;

    public void updateUser(User u) throws SQLException, ClassNotFoundException;

    public User getUser(String email) throws SQLException, ClassNotFoundException;

}
