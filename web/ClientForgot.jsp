<%@page import="com.mail.Mail"%>
<%@page import="com.database.connection.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<%
Random r=new Random();
int i=r.nextInt(10000000-50000)+4000;
String sss=""+i;
String msg="Your OTP is:"+i;

    
String email=request.getParameter("email");

try{
     Connection con=DBConnection.getConnection();
          Statement st1=con.createStatement();
 
           ResultSet rs=st1.executeQuery("select * from client where email='"+email+"'");
           
           int count=0;
           if(rs.next()){
             Statement st=con.createStatement();
 
           ResultSet rs1=st.executeQuery("select count(*) from otp where email='"+email+"'");
           while(rs1.next()){
                    count=rs1.getInt(1);
               if(count==0){
              int ii=st.executeUpdate("insert into otp values('"+email+"','"+sss+"','waiting')");
              if(ii>0){
               Mail.secretMail(msg, email,email);
           response.sendRedirect("OTPVerify.jsp?msg=success");   
              }else{
               response.sendRedirect("forgot.jsp?msg=failed to insert values");    
              }
               }else{
                   Statement stt=con.createStatement();
                   int n=stt.executeUpdate("update otp set otp='"+sss+"',status='waiting' where email='"+email+"'");
                   if(n>0){
                    Mail.secretMail(msg, email,email);
           response.sendRedirect("OTPVerify.jsp?msg=success");    
                   }else{
                    response.sendRedirect("forgot.jsp?msg=failed to update values");     
                   }
               }
           
           }
           }else{
             response.sendRedirect("forgot.jsp?msg=email does't exist");  
           }
        
}catch(Exception e){
 out.println(e);   
}



%>