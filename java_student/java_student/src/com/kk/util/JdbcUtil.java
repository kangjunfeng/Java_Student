package com.kk.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.sun.org.apache.regexp.internal.recompile;

public class JdbcUtil {
	private static String DRIVER 	="com.mysql.jdbc.Driver";
	private static String USER   	="root";
	private static String PASSWORD ="root";
	private static String URL    	="jdbc::mysql//127.0.0.1:3306/localhost";
	
	static{
		try {
			Class.forName(DRIVER);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/**
	 * ��ȡ����
	 * @return
	 */
	public static Connection getConnection() {
		try {
		    Connection	conn = DriverManager.getConnection(URL, USER, PASSWORD);
			return conn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * �ر�
	 * @param conn
	 * @param stmt
	 * @param rSet
	 */
	public static  void release(Connection conn,Statement stmt,ResultSet rSet) {
		if(rSet != null){
            try {
            	rSet.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if(stmt != null){
            try {
                stmt.close() ;
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        
        if(conn != null){
            try {
                conn.close() ;
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }  
	}
	
}
