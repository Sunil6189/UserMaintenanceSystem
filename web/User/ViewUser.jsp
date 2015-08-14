
<%@page import="beans.UserBean"%>
<%@page import="datalayer.UserServices"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View User</title>
    </head>
    <body>
         <% UserServices obj=new UserServices();
            int userId=Integer.parseInt(request.getParameter("id"));
         UserBean objBean=obj.getUserDetailById(userId);%>
      <form name="frmEditUser" action="#">
            <table frame="border" align="center">
                <tr>
                    <td colspan="2" align="center"><h4>View User</h4><td>
                </tr>
                <tr>
                    <th>User Id</th><td><input type="text" name="txtUserId" id="txtUserId" readonly="readonly" value="<%=objBean.getUserId()%>"></td>
                </tr>
                <tr>
                    <th>Username</th><td><input type="text" name="txtUsername" id="txtUsername" readonly="readonly" value="<%=objBean.getUsername()%>"></td>
                </tr>
                <tr>
                    <th>Password</th><td><input type="password" name="txtPassword" id="txtPassword" readonly="readonly" value="<%=objBean.getPassword()%>"></td>
                </tr>
                <tr>
                    <th>Age</th><td><input type="text" name="txtAge" id="txtAge" readonly="readonly" value="<%=objBean.getAge()%>"></td>
                </tr>
                <tr>
                    <th>Status</th><td><input name="ddlStatus" value="<%=objBean.getStatus()%>" ></td>
                </tr>
                <tr>
                    <td></td> <td><input type="button" name="btnBack" value="Back" onClick="history.go(-1);return true;"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

            <table frame="border" align="center">
                <tr>
                    <td colspan="2" align="center"><h4>View User</h4><td>
                </tr>
                <tr>
                    <th>User Id</th><td><input type="text" name="txtUserId" id="txtUserId" readonly="readonly" value="<%=objBean.getUserId()%>"></td>
                </tr>
                <tr>
                    <th>Username</th><td><input type="text" name="txtUsername" id="txtUsername" readonly="readonly" value="<%=objBean.getUsername()%>"></td>
                </tr>
                <tr>
                    <th>Password</th><td><input type="password" name="txtPassword" id="txtPassword" readonly="readonly" value="<%=objBean.getPassword()%>"></td>
                </tr>
                <tr>
                    <th>Age</th><td><input type="text" name="txtAge" id="txtAge" readonly="readonly" value="<%=objBean.getAge()%>"></td>
                </tr>
                <tr>
                    <th>Status</th><td><input name="ddlStatus" value="<%=objBean.getStatus()%>" ></td>
                </tr>
                <tr>
                    <td></td> <td><input type="button" name="btnBack" value="Back" onClick="history.go(-1);return true;"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
