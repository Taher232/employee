package com.example.javaprojet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.NamingException;

public class DBUtil {
    public static Connection getConnection() throws ClassNotFoundException, SQLException, NamingException {
        Connection conn = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:postgresql://localhost:5432/tutdb";
        conn = DriverManager.getConnection(url, "postgres", "2020");
        return conn;
    }
}