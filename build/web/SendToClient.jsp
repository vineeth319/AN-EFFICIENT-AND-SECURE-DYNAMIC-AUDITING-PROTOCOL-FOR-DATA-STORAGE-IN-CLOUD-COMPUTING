<%@page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.connection.DBConnection"%>
<%

String fid=request.getParameter("fid");

try{
    
   Connection con=DBConnection.getConnection();
   Statement st=con.createStatement();
  
    int ii=st.executeUpdate("update tpareq set tpaperm='Granted' where fid='"+fid+"'");
    
    if(ii>0){
        response.sendRedirect("KeyResponse.jsp?msg=success");
      
    }else{
    response.sendRedirect("KeyResponse.jsp?msg=filed");
    }
    
}catch(Exception e){
    out.println(e);
}


%>