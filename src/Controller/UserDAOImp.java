package Controller;

import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

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
        String sql = "update `user` set user_firstName = ?, user_lastName = ?, user_fullName = ?, user_email = ?, user_password = ?, user_phone = ? where user_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, u.getFirstName());
            preparedStatement.setString(2, u.getLastName());
            preparedStatement.setString(3, u.getFullName());
            preparedStatement.setString(4, u.getEmail());
            preparedStatement.setString(5, u.getUserPassword());
            preparedStatement.setString(6, u.getUserPhone());
            preparedStatement.setString(7, u.getUserId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateUserInformation(User u) {
        String sql = "update `user` set user_firstName = ?, user_lastName = ?, user_fullName = ?, user_phone = ? where user_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, u.getFirstName());
            preparedStatement.setString(2, u.getLastName());
            preparedStatement.setString(3, u.getFullName());
            preparedStatement.setString(4, u.getUserPhone());
            preparedStatement.setString(5, u.getUserId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateEmail(User user) {
        String sql = "update `user` set user_email = ? where user_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getUserId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updatePassword(User user) {
        String sql = "update `user` set user_password = ? where user_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, user.getUserPassword());
            preparedStatement.setString(2, user.getUserId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removeUser(String userId) {
        String sql = "delete from user where user_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, userId);
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
