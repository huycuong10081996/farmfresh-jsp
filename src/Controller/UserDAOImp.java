package Controller;

import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAOImp implements UserDAO {
    @Override
    public void addUser(User u) {
        String sql = "insert into user value(?,?,?,?,?,?)";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, u.getUserId());
            preparedStatement.setString(2, u.getFirstName());
            preparedStatement.setString(3, u.getLastName());
            preparedStatement.setString(4, u.getFullName());
            preparedStatement.setString(5, u.getEmail());
            preparedStatement.setString(6, u.getUserPassword());
            preparedStatement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean checkUser(String username) {
        return false;
    }

    @Override
    public boolean login(String username, String password) {
        return false;
    }

    @Override
    public void updateUser(User u) {

    }

    @Override
    public User getUser(String username) {
        return null;
    }
}
