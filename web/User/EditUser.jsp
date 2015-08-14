<%-- 
    Document   : EditUser
    Created on : 12/08/2015, 03:17:19 PM
    Author     : Basil.Mathew
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
         <% UserServices obj=new UserServices();
            int userId=Integer.parseInt(request.getParameter("id"));
         UserBean objBean=obj.getUserDetailById(userId);%>
        <form name="frmEditUser" action="AddEditUserController.jsp">
            <table frame="border" align="center">
                <tr>
                    <td colspan="2" align="center"><h4>Edit User</h4><td>
                </tr>
                <tr>
                    <th>User Id</th><td><input type="text" name="txtUserId" id="txtUserId" readonly="readonly"  value="<%=objBean.getUserId()%>"></td>
                </tr>
                <tr>
                    <th>Username</th><td><input type="text" name="txtUsername" id="txtUsername" readonly="readonly"  value="<%=objBean.getUsername()%>"></td>
                </tr>
                <tr>
                    <th>Password</th><td><input type="password" name="txtPassword" id="txtPassword"  value="<%=objBean.getPassword()%>"></td>
                </tr>
                <tr>
                    <th>Age</th><td><input type="text" name="txtAge" id="txtAge" value="<%=objBean.getAge()%>"></td>
                </tr>
                <%
                String str=objBean.getStatus();
                String strActive="";
                String strInactive="";
                if(str!=null && str.equalsIgnoreCase("Active"))
                    {
                        strActive="selected";
                     }
                if(str!=null && str.equalsIgnoreCase("Inactive"))
                    {
                        strInactive="selected";
                     }


                %>
                <tr>
                    <th>Status</th><td><Select name="ddlStatus"><option Value="Select">Select</option><option value="Active"<%=strActive%> >Active</option ><option value="Inactive" <%=strInactive%>>Inactive</option></Select></td>
                </tr>
                <tr>
                    <td></td> <td><input type="Submit" name="sbtnSave" value="Save"/><input type="button" name="btnCancel" value="Cancel"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
