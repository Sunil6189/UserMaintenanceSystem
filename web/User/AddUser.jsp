<%-- 
    Document   : AddUser
    Created on : 6/08/2015, 5:17:10 PM
    Author     : Tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User</title>
    </head>
    <body>
    
        <form name="frmAddUser" action="AddEditUserController.jsp" method="post">
      
            <table frame="border" align="center">
                <tr>
                    <td colspan="2" align="center"><h4>Add User</h4><td>
                </tr>
                <tr>
                    <th>User Id</th><td><input type="text" name="userId" id="userId"</td>
                </tr>
                 <tr>
                    <th>Username</th><td><input type="text" name="txtUsername" id="username"></td>
                </tr>
                 <tr>
                    <th>Password</th><td><input type="password" name="username" id="password"></td>
                </tr>
                 <tr>
                    <th>Age</th><td><input type="text" name="age" id="age"></td>
                </tr>
                 <tr>
                    <th>Status</th><td><Select name="status" id="status"><option value="select">Select</option><option value="Active">Active</option><option value="Inactive">Inactive</option></select></td>
                </tr>
                <tr>
                   <td></td> <td><input type="Submit" name="sbtnSave" value="Save"/><input type="button" name="btnCancel" value="Cancel"></td>
                    </tr>
            </table>
        </form>
    </body>
</html>
