<%-- 
    Document   : UserMaintenance
    Created on : Aug 6, 2015, 11:15:49 PM
    Author     : Sunil.Bansal
--%>
<%@page import="beans.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="datalayer.UserServices"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Maintenance</title>
    </head>
    <body>
        <% UserServices obj=new UserServices();
        ArrayList alstUser=obj.getAllUserDetails();%>
        <form name="frmUserMaintenance" action="#">
        <table frame="border" align="center">
           <tr>
               <td align="left"><a href="AddUser.jsp">Add User</a></td>
               <td></td>
               <td></td>
            
           </tr>
           <tr>
               <td colspan="4">
                   <table border="1">
                     <tr>
                         
                         <th>Username</th>
                        
                        
                         <th>Status</th>
                         <th>Maintenance</th>
                         
                      </tr>
                      <% for(int i=0;i<alstUser.size();i++)
                          {
                            UserBean objBean=(UserBean)alstUser.get(i);

                       %>
                      <tr>
                         
                          <td><%=objBean.getUsername()%></td>
                          
                          <td><%=objBean.getStatus()%></td>
                          <td><a href="ViewUser.jsp?id=<%=objBean.getUserId()%>">View User</a>|<a href="EditUser.jsp?id=<%=objBean.getUserId()%>">Edit User</a>|<a href="DeleteUser.jsp?id=<%=objBean.getUserId()%>">Delete User</a></td>
                       </tr>
                       <% }%>
                   </table>
               </td>
            </tr>
       </table>
    </body>
    
</html>
