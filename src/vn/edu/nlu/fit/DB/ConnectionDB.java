package vn.edu.nlu.fit.DB;

import java.sql.*;

public class ConnectionDB {
    static Connection con;

    public static Connection connect()  {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/farmfresh?useUnicode=true&characterEncoding=utf-8", "root", "" );
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public static void main(String[] args) throws Exception {
        System.out.println(connect());
    }
}
