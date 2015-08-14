<%-- 
    Document   : EditUser
    Created on : 6/08/2015, 5:17:19 PM
    Author     : Sunil.Bansal
--%>

<%@page import="beans.UserBean"%>
<%@page import="datalayer.UserServices"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
    </head>
    <body>
        
        <form name="frmDeleteUser" action="AddEditUserController.jsp" method="post">
            <table frame="border" align="center">
                <tr>
                    <td colspan="2" align="center"><h4>Delete User</h4><td>
                </tr>
                <tr>
                    <th>User Id</th><td><input type="text" name="userId" id="txtUserId" readonly="readonly"  value="<%=objBean.getUserId()%>"></td>
                </tr>
                <tr>
                    <th>Username</th><td><input type="text" name="username" id="txtUsername" readonly="readonly"  value="<%=objBean.getUsername()%>"></td>
                </tr>
                <tr>
                    <th>Password</th><td><input type="password" name="password" id="txtPassword" readonly="readonly"    value="<%=objBean.getPassword()%>"></td>
                </tr>
                <tr>
                    <th>Age</th><td><input type="text" name="age" id="txtAge" readonly="readonly"   value="<%=objBean.getAge()%>"></td>
                </tr>
                 <tr>
                    <th>Status</th><td><input type="text" name="status" id="txtStatus" readonly="readonly"   value="<%=objBean.getStatus()%>"></td>
                </tr>
                
                <tr>
                    <td></td> <td><input type="Submit" name="sbtnSave" value="Delete"/><input type="button" name="btnCancel" value="Cancel"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
