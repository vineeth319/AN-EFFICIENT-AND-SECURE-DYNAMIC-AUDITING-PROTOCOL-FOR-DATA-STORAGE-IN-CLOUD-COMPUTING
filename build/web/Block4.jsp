<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.connection.DBConnection"%>
<%
String email=(String)session.getAttribute("email");
String skey=request.getParameter("skey");
String fname=(String)session.getAttribute("fname");
String fid=(String)session.getAttribute("fid");
Random r=new Random();
int i=r.nextInt(1000000-100)+1000;
String jj=""+i;
try{
   Connection con=DBConnection.getConnection();
   Statement st1=con.createStatement();
   Statement st=con.createStatement();
   ResultSet rs=st1.executeQuery("select count(*)from block4 where owner='"+email+"' and filename='"+fname+"'");
   int count=0;
   while(rs.next()){
     count=rs.getInt(1);  
   if(count==0){
    int ii=st.executeUpdate("insert into block4 values('"+email+"','"+fname+"','"+fid+"','"+skey+"','"+jj+"','Block4 Sent')");   
    if(ii>0){
      response.sendRedirect("PacketSending5.jsp");  
    }else{
     response.sendRedirect("PacketSending4.jsp");   
    }
       
   }
}
}catch(Exception e){
    out.println(e);
}


%>