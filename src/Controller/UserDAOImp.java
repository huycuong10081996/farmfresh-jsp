package Controller;

import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImp implements UserDAO {
    @Override
    public void addUser(User u) {
        Connection con = null;
        con = ConnectionDB.connect();
        String sql = "insert into user value(?,?,?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, u.getUserId());
            ps.setString(2, u.getFirstName());
            ps.setString(3, u.getLastName());
            ps.setString(4, u.getFirstName() +  " " + u.getLastName());
            ps.setString(5, u.getEmail());
            ps.setString(6, u.getUserPassword());
            ps.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean checkUser(String email) throws SQLException, ClassNotFoundException {
        Connection con = ConnectionDB.connect();
        String sql = "select * from user where user_email='" + email + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                con.close();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean login(String email, String password)  {
        Connection con = null;
        con = ConnectionDB.connect();
        String sql = "select * from user where user_email='" + email
                + "' and user_password='" + password + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                con.close();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public void updateUser(User u) throws SQLException, ClassNotFoundException {
        Connection con = ConnectionDB.connect();
        String sql = "update user set user_id=?, user_firstName=?, user_lastName=?, user_fullName=?, user_email=?, user_password=? where user_email=?";
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, u.getUserId());
            ps.setString(2, u.getFirstName());
            ps.setString(3, u.getLastName());
            ps.setString(4, u.getFirstName() +  " " + u.getLastName());
            ps.setString(5, u.getEmail());
            ps.setString(6, u.getUserPassword());
            ps.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public User getUser(String email) {
        Connection con = null;
        con = ConnectionDB.connect();
        String sql = "select * from user where user_email='" + email + "'";
        User u = new User();
        try {
            PreparedStatement ps = (PreparedStatement) con
                    .prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String userId = rs.getString(1);
                String userFirstName = rs.getString(2);
                String userLastName = rs.getString(3);
                String userFullName = rs.getString(4);
                String userEmail = rs.getString(5);
                String userPassword = rs.getString(6);
                u = new User(userId, userFirstName, userLastName, userEmail, userPassword);
            }
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }
}
