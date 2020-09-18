<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
 String email=(String)session.getAttribute("email");
 String key=request.getParameter("key");
 try{
        Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic_auditing","root","root");
Statement st = con.createStatement();
ResultSet r=st.executeQuery("select * from client where skey='"+key+"'and email='"+email+"'");
if(r.next()){
   response.sendRedirect("ClientHome.jsp?msg=success"); 
}else{
   response.sendRedirect("KVerify.jsp?msg=success");   
}
 }catch(Exception e){
   out.println(e);  
 }



%>