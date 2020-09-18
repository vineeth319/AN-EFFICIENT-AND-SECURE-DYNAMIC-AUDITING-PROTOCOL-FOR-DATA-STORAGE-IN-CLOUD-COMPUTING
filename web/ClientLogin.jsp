

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    
    String uname=request.getParameter("uname");
    String password=request.getParameter("password");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic_auditing","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from client where email='"+uname+"' and password='"+password+"'");
if(rs.next())
{
    String email=rs.getString("email");
    session.setAttribute("email",email);
    %>
      <script type="text/javascript">
          window.alert("Client Login Sucessfully");
          window.location="Client2.jsp";
          </script>
      <%
          
}
else
{
%>
      <script type="text/javascript">
          window.alert("Client Login Fail");
          window.location="Client.jsp";
          </script>
      <%
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>