package Controller;

import vn.edu.nlu.fit.DB.ConnectionDB;

import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.*;
import java.util.Calendar;
import java.util.Map;

public class BlogDAO {

    public int getCount() {
        int count = 0;
        try {
            String sql = "select * from blogs";
            PreparedStatement statement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                count++;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return count;
    }
}

