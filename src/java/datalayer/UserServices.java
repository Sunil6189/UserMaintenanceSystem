/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datalayer;

import beans.UserBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Sunil.Bansal
 */
public class UserServices {
     public ArrayList getAllUserDetails()
    {
     
        ArrayList alstUser=new ArrayList();
         
        try
        {
               Connection con=ConnectDB.getConnection();
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from list");
            while(rs.next())
            {
                UserBean objBean=new UserBean();
                objBean.setAge(rs.getInt("age"));
                objBean.setUsername(rs.getString("username"));
                objBean.setUserId(rs.getInt("id"));
                objBean.setPassword(rs.getString("password"));
                objBean.setStatus(rs.getString("status"));
                alstUser.add(objBean);

            }
        }
        catch(Exception e)
        {
            System.out.println("Exception in getAllUserDetails of userServices:"+e);
        }
        
        return alstUser;
    }
    public UserBean getUserDetailById(int userId)
    {
       
        UserBean objBean=new UserBean();
        
        try
        {
             Connection con=ConnectDB.getConnection();
           Statement stmt=con.createStatement();
          ResultSet rs=stmt.executeQuery("select * from list where id="+userId);
            if(rs.next())
            {
                objBean.setAge(rs.getInt("age"));
                objBean.setUsername(rs.getString("username"));
                objBean.setUserId(rs.getInt("id"));
                objBean.setPassword(rs.getString("password"));
                objBean.setStatus(rs.getString("status"));
             }
        }
        catch(Exception e)
        {
            System.out.println("Exception in getAllUserDetailById of userServices:"+e);
        }
       
        return objBean;
    }
    }
