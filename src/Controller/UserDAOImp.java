package Controller;

import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImp implements UserDAO {

    @Override
    public void addUser(User u) {
        String sql = "insert into user value(?,?,?,?,?,?,?)";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, u.getUserId());
            preparedStatement.setString(2, u.getFirstName());
            preparedStatement.setString(3, u.getLastName());
            preparedStatement.setString(4, u.getFullName());
            preparedStatement.setString(5, u.getEmail());
            preparedStatement.setString(6, u.getUserPassword());
            preparedStatement.setString(7, u.getUserPhone());
            preparedStatement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean checkUser(String userEmail) {
        String sql = "select * from user where user_email = '" + userEmail + "' ";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            int i = resultSet.getRow();
            if (i == 1) {
                resultSet.first();
                if (userEmail.equals(resultSet.getString(5))) {
                    return true;
                } else {
                    return false;
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean login(String email, String password) {

        return false;
    }

    @Override
    public void updateUser(User u) {
        String sql = "update user set user_id = ?, user_firstName = ?, user_lastName = ?, user_fullName = ?, user_email = ?, user_password = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, u.getUserId());
            preparedStatement.setString(2, u.getFirstName());
            preparedStatement.setString(3, u.getLastName());
            preparedStatement.setString(4, u.getFullName());
            preparedStatement.setString(5, u.getEmail());
            preparedStatement.setString(6, u.getUserPassword());
            preparedStatement.setString(7, u.getUserPhone());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User getUser(String username) {
        return null;
    }
}
