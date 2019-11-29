package vn.edu.nlu.fit.DB;

import java.sql.*;

public class ConnectionDB {
    static Connection con;
    private static String URL = "jdbc:mysql://localhost:3306/farmfresh?useUnicode=true&characterEncoding=utf-8";
    private static String UNAME = "root";
    private static String PASS = "";

    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, UNAME, PASS);
        }
        return con.prepareStatement(sql);
    }

    public static Statement getStatement() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, UNAME, PASS);
        }
        return con.createStatement();
    }

    public static void main(String[] args) throws Exception {
    }

}
