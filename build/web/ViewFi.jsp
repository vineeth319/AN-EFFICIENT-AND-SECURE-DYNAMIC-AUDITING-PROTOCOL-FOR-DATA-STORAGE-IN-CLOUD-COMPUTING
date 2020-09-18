<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.connection.DBConnection"%>
<%

String fid=request.getParameter("fid");
String fname=request.getParameter("fname");
String fsize=request.getParameter("fsize");
String date=request.getParameter("date");
try{
   Connection con=DBConnection.getConnection();
   Statement st1=con.createStatement();
   Statement st=con.createStatement();
   ResultSet rs=st1.executeQuery("select count(*)from tpareq where fid='"+fid+"' and fname='"+fname+"'");
   int count=0;
   while(rs.next()){
     count=rs.getInt(1);  
   if(count==0){
    int ii=st.executeUpdate("insert into tpareq values('"+fid+"','"+fname+"','"+fsize+"','"+date+"','waiting','waiting')");   
    if(ii>0){
      %>
       <script type="text/javascript">
           window.alert("TPA Requested for GenProof to the Server");
           window.location="AlrtMessg.jsp";
           </script>
       <%
    }else{
    %>
       <script type="text/javascript">
           window.alert("TPA Requested sending is failed");
           window.location="AlrtMessg.jsp";
           </script>
       <% 
    }
       
   }else{
       %>
       <script type="text/javascript">
           window.alert("File Already Sent To Server");
           window.location="AlrtMessg.jsp";
           </script>
       <%
   }
}
}catch(Exception e){
    out.println(e);
}


%>