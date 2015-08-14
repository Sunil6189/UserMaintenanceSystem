<%-- 
    Document   : AddEditUserController
    Created on : Aug 13, 2015, 11:55:26 PM
    Author     : Sunil.Bansal
--%>

<%@page import="datalayer.UserServices" %>
<jsp:useBean id="objBean" class="beans.UserBean">
    <jsp:setProperty name="objBean" property="*"/>
</jsp:useBean>
<%
       
          String str = request.getParameter("sbtnSave");
        if (str != null && str.equalsIgnoreCase("Save")) {
            UserServices obj = new UserServices();
            String result = obj.addUser(objBean);
            
            if (result.equalsIgnoreCase("saved")) {
               
                response.sendRedirect("UserMaintenance.jsp");
            } else {
                 session.setAttribute("msg", "UserId Already Exist");
                response.sendRedirect("AddUser.jsp");
            }
            
        }
        if (str != null && str.equalsIgnoreCase("Update")) {
            
        
            UserServices obj = new UserServices();
            String result = obj.editUser(objBean);
            if (result.equalsIgnoreCase("updated")) {
                response.sendRedirect("UserMaintenance.jsp");
            } else {
                response.sendRedirect("EditUser.jsp");
            }
            out.println("update");
            
        }
         if (str != null && str.equalsIgnoreCase("Delete")) {
            
        
            UserServices obj = new UserServices();
            String result = obj.deleteUser(objBean);
            if (result.equalsIgnoreCase("deleted")) {
                response.sendRedirect("UserMaintenance.jsp");
            } else {
                response.sendRedirect("DeleteUser.jsp");
            }
            out.println("deleted");
            
        }
%>

