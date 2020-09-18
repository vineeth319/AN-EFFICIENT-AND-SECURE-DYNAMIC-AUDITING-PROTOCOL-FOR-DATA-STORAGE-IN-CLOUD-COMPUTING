<%@page import="java.sql.*" %>
<%
String username = request.getParameter("uname");
session.setAttribute("username",username);
String password = request.getParameter("password");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic_auditing","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from cloud where username='"+username+"'and password='"+password+"' ");
if(rs.next()){
 %>
 <script type="text/javascript">
 window.alert("Cloud Server login succesfully"); 
 window.location="CloudHome.jsp";
 </script>
 <%
     session.setAttribute("username", username); 
}
else
{
%>
 <script type="text/javascript">
 window.alert("Cloud Server login failed"); 
 window.location="CloudServer.jsp";
 </script>
 <%
    
}
}
catch(Exception e)
{
 out.println(e);   
}
%>