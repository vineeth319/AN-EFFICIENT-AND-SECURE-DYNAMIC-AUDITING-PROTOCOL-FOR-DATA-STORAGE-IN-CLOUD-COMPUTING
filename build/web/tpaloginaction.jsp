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
ResultSet rs = st.executeQuery("select * from tpa where username='"+username+"'and password='"+password+"' ");
if(rs.next()){
 %>
 <script type="text/javascript">
 window.alert("TPA login succesfully"); 
 window.location="TPAhome.jsp";
 </script>
 <%
     session.setAttribute("username", username); 
}
else
{
%>
 <script type="text/javascript">
 window.alert("TPA login failed"); 
 window.location="TPALogin.jsp";
 </script>
 <%
    
}
}
catch(Exception e)
{
 out.println(e);   
}
%>