<%@page import="java.sql.*"%>
<%@page import="com.database.connection.DBConnection" %>
<%
    String email=(String)session.getAttribute("email");
    
           %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>An Efficient and Secure Dynamic Auditing</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<!-- Homepage Only Scripts -->
<script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
<script src="jquery.min.js">
<script type="text/javascript">
$(function() {
    $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
        timeout: 5000,
        fx: 'fade',
        pager: '#fs_pagination',
        pause: 1,
        pauseOnPagerHover: 0
    });
});
</script>
<!-- End Homepage Only Scripts -->
<style>
  
    table{
        margin-top:50px;
    }
    table tr th{
        border:1px solid black;
    }
    table tr td{
        border:1px solid black;
    }
    
</style>
</head>
<body>
<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      <div class="topbox">
        <h2>An Efficient and Secure Dynamic Auditing</h2>
        <p align="justify">In cloud computing, data owners host their data on cloud servers and users (data consumers) can access the data
from cloud servers. Due to the data outsourcing, however, this new paradigm of data hosting service also introduces new security
challenges, which requires an independent auditing service to check the data integrity in the cloud. Some existing remote integrity

</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div class="topbox">
       
      </div>
      <div class="topbox last">
        
      </div>
      <br class="clear" />
    </div>
    
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
        <h2><a href="index.html">An Efficient and Secure Dynamic Auditing </a><span>Protocol for Data Storage in Cloud Computing</span><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="ClientHome.jsp">Home</a></li>
        <li><a href="UploadFile.jsp">Upload File</a></li>
        <li><a href="PacketSending.jsp">Packet Sending</a></li>
        <li><a href="Download.jsp">Download</a></li>
        <li class="last"><a href="Client.jsp">Logout</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div class="featured_box"><a href="#"><img src="images/demo/450x300.jpg" alt="" /></a>
      <div class="floater">
        <h3>An Efficient and Secure Dynamic Auditing Protocol for Data Storage in Cloud Computing</h3>
        </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/demo/500x300.jpg" alt="" /></a>
      <div class="floater">
        <h2>Abstract</h2>
        <p align="justify">In cloud computing, data owners host their data on cloud servers and users (data consumers) can access the data
from cloud servers. Due to the data outsourcing, however, this new paradigm of data hosting service also introduces new security
challenges, which requires an independent auditing service to check the data integrity in the cloud. Some existing remote integrity</p>
  <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images\demo\existing picture.jpg" alt="" /></a>
      <div class="floater">
        <h2>Existing System</h2>
        <p align="justify">To solve the data privacy problem, existing method is to generate an encrypted proof with the challenge stamp by using the Bilinearity property of the bilinear pairing, such that the auditor cannot decrypt it but can verify the correctness of the proof. Without using the mask technique, this method does not require any trusted organizer during the batch auditing for multiple clouds. Therefore, existing method can greatly reduce the computing loads of the auditor by moving it to the cloud server.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/demo/600x300.jpg" alt="" /></a>
      <div class="floater">
        <h2>Proposed System</h2>
        <p align="justify">To improve the draw backs of existing system a modified dynamic auditing protocol is introduced, This protocol contains 1.Time stamp value to verify the validity of data 2.Index table for dynamic owner as well as data. This system includes 4 modules 1. Multi cloud storages 2. Modified dynamic auditing 3. Data Integrity and Third Party Auditor 4. Dynamic auditing.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
   
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
    <div class="fl_left">
      <div class="column2">
          
       <!--write data here-->
       <h1><center><u> File Sending With Meta Key</u></center></h1>
       <%
      try{
          String filename=null; 
           String data=null; 
          Connection con=DBConnection.getConnection();
          Statement st=con.createStatement();
          String fname=(String)session.getAttribute("fname");
          ResultSet rs1=st.executeQuery("select * from files where owner='"+email+"' and filename='"+fname+"'");
          while(rs1.next()){
            filename=rs1.getString("filename");    
data=rs1.getString("filedata"); 
          }
       int lendth=data.length();
       float f=(float)lendth;
       float l=f/5;
       %>
       <table>
           <tr><th>Blocks</th>
           <th>Secrete Key</th>
            <th>Metadata Key</th>
           <th>Status</th>
            <th>Send</th>
           </tr>
           <form action="Block1.jsp" method="post">
           
               <%String query="select b1.skey,b1.status,b1.metadatakey, b2.skey,b2.status,b2.metadatakey,b3.skey,b3.status,b3.metadatakey from block1 b1,block2 b2,block3 b3 where b1.owner='"+email+"'=b3.owner='"+email+"' and b1.filename='"+fname+"' and b2.filename='"+fname+"' and b3.filename='"+fname+"'";
             
               
   Statement st1=con.createStatement();
   ResultSet rs=st1.executeQuery(query);
 if(rs.next()){
     String skey=rs.getString("b1.skey");
     String status=rs.getString("b1.status");
      String metadatakey=rs.getString("b1.metadatakey");
%>
<tr>
 <td><input type="text" name="block1" value="Block1" readonly="" style="color:green;border:none;"></input></td>      
 <td><input type="text" name="skey" readonly="" value="<%=skey%>"></td>
               <td><%=metadatakey%></td>
               <td><%=status%></td><td></td></tr>
               <tr>
 <td><input type="text" name="block2" value="Block2" readonly="" style="color:green;border:none;"></input></td>      
 <td><input type="text" name="skey" readonly="" value="<%=rs.getString("b2.skey")%>"></td>
               <td><%=rs.getString("b2.metadatakey")%></td>
               <td><%=rs.getString("b2.status")%></td><td></td></tr>
               <tr>
 <td><input type="text" name="block2" value="Block3" readonly="" style="color:green;border:none;"></input></td>      
 <td><input type="text" name="skey" readonly="" value="<%=rs.getString("b3.skey")%>"></td>
               <td><%=rs.getString("b3.metadatakey")%></td>
               <td><%=rs.getString("b3.status")%></td><td></td></tr>
                
<%
   }       
     %>
                       </form>
           <form action="Block4.jsp" method="post">
           <tr>
               
               <td><input type="text" name="block3" value="Block4" readonly="" style="color:red;border:none;"></input></td>      
               <td><input type="text" name="skey" required=""</td>
               <td></td><td></td><td><input type="submit" value="Send" style="background:red;"></td></tr>
           </form>
                       
       </table>
       
       <table>
           <tr><td>Each Block Size</tD><td><%=l%> Bytes</td></tr>
           <tr><td>Total Size</td><td><%=f%> Bytes</td></tr>
      <tr><td><a href="PacketSending.jsp">Back</a></tD></tr> 
       </table>
      
       <%
       }catch(Exception e){
    out.println(e);
    }
        
       
       %>
       
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

</body>
</html>