/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author shiva
 */
public class DBConnection {
    
    public Connection con;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rst;
    public DBConnection(){
      
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/service_provider", "root", "root");
    }catch(Exception e){
        e.printStackTrace();
    }
    }
}
