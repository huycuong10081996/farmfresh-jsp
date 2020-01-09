package Controller;

import Model.Admin;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAOImp implements AdminDAO {
    @Override
    public boolean checkAdmin(String adminEmail) {
        String sql = "select * from admin where admin_email = '" + adminEmail + "' ";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            int i = resultSet.getRow();
            if (i == 1) {
                resultSet.first();
                if (adminEmail.equals(resultSet.getString(5))) {
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
    public void addAdmin(Admin admin) {
        String sql = "insert into admin value(?,?,?,?,?)";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, admin.getAdminId());
            preparedStatement.setString(2, admin.getAdminName());
            preparedStatement.setString(3, admin.getAdminPassword());
            preparedStatement.setInt(4, admin.getPermission());
            preparedStatement.setString(5, admin.getAdminEmail());
            preparedStatement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void editAdmin(Admin admin) {
        String sql = "update admin set admin_name = ?, admin_password = ?, admin_permission = ? where admin_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, admin.getAdminName());
            preparedStatement.setString(2, admin.getAdminPassword());
            preparedStatement.setInt(3, admin.getPermission());
            preparedStatement.setString(4, admin.getAdminId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removeAdmin(String adminId) {
        String sql = "delete from admin where admin_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, adminId);
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
