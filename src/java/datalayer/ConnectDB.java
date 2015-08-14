/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datalayer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author cc
 */
public class ConnectDB {
     public static Connection getConnection()
    {
        Connection con=null;
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql:///USERMAINTENANCE","root","sunil");
           //  String db = "jdbc:ucanaccess://C:/Users/cc/Documents/UserMaintenance.accdb";
           // con = DriverManager.getConnection(db);
          System.out.println("Connected!");
        } catch(ClassNotFoundException | SQLException e)
         {
            System.out.println("exception in getconnection of connectDb class"+e);
         }
        return con;
    }
    
}
