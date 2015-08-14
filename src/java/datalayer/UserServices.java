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
    
    public  String addUser(UserBean objBean)
    {
       
       
       String result ="failed";
        try {
          Connection   con = ConnectDB.getConnection();
           Statement  stmt = con.createStatement();
            String q = "insert into list(id,username,Password,Status,age)values('"+objBean.getUserId()+"','"+objBean.getUsername()+"','"+objBean.getPassword()+"','"+objBean.getStatus()+"','"+objBean.getAge()+"')";
            int i = stmt.executeUpdate(q);
            if(i>0)
            {
                result="saved";
            }
        } catch (Exception e) {
            System.out.println("Exception in getAllUserDetails of UserServices" + e);
        } 
     
        return result;
    }   
     public  String editUser(UserBean objBean)
    {
       
       String result ="failed";
        try {
          Connection con = ConnectDB.getConnection();
                
            String q = "update list SET username=?,Password=?,Status=?,age=? where id=?";
             PreparedStatement ps = con.prepareStatement(q);
          
           
           ps.setString(1, objBean.getUsername());
           System.out.println(objBean.getUsername());
            ps.setString(2, objBean.getPassword());
            System.out.println(objBean.getPassword());
             ps.setString(3, objBean.getStatus());
             System.out.println("updated3");
              ps.setInt(4, objBean.getAge());
              System.out.println("updated4");
               ps.setInt(5, objBean.getUserId());
               System.out.println(objBean.getUserId());
               int i = ps.executeUpdate();
          //Statement stmt = con.createStatement();
           // String q = "update list set username='"+objBean.getUsername()+"',Password='"+objBean.getPassword()+"',Status='"+objBean.getStatus()+"',age='"+objBean.getAge()+"' where id='"+objBean.getUserId()+"'";
           //int i = stmt.executeUpdate(q);
            if(i>0)
            {
                result="updated";
                System.out.println("updated");
            }
        } catch (Exception e) {
            System.out.println("Exception in getAllUserDetails of UserServices" + e);
        } 
         return result;
        }
    
     public  String deleteUser(UserBean objBean)
    {
       
       
       String result ="failed";
        try {
          Connection   con = ConnectDB.getConnection();
           Statement  stmt = con.createStatement();
            String q = "delete from list where id=?";
                PreparedStatement ps = con.prepareStatement(q);
                ps.setInt(1, objBean.getUserId());
            int i = ps.executeUpdate();
            if(i>0)
            {
                result="deleted";
            }
        } catch (Exception e) {
            System.out.println("Exception in getAllUserDetails of UserServices" + e);
        } 
     
        return result;
    }   
    }
