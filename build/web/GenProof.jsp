<%@page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.connection.DBConnection"%>
<%

String fid=request.getParameter("fid");

try{
    String pubkey=RandomStringUtils.random(10, 0, 20, true, true, "bj81G5RDED3DC6142kasok".toCharArray());
   Connection con=DBConnection.getConnection();
   Statement st=con.createStatement();
  
    int ii=st.executeUpdate("update tpareq set proof='"+pubkey+"'where fid='"+fid+"'");
    
    if(ii>0){
        response.sendRedirect("TPARequ.jsp?msg=success");
      
    }else{
    response.sendRedirect("TPARequ.jsp?msg=filed");
    }
    
}catch(Exception e){
    out.println(e);
}


%>