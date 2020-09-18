<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.connection.DBConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<% String username=(String)session.getAttribute("username");%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>An Efficient and Secure Dynamic Auditing</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<!-- Homepage Only Scripts -->
<script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
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
</head>
<body>
<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      
     
      <br class="clear" />
    </div>
    <div id="loginpanel">
      
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
        <li><a href="CloudHome.jsp">Home</a></li>
        <li><a href="KeyRequestMessage.jsp">Key Request Message</a></li>
       <li class="active"><a href="TPARequ.jsp">TPA Request</a></li>
       <li><a href="cloudhistory.jsp">Download History</a></li>
        <li class="last"><a href="index.html">Logout</a></li>
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
        <h3>Welcome </h3>
        <p><h3>Cloud</h3></p>
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
    <div class="center">
      
          <style>
              table tr th{
                  background: red;
                  color:white;
              }
              table tr td{
                  background:#E7E6E6;
                  color:#298cdf;
              }
              </style>
          <table>
              <tr>
                   <th>File ID</th>
                  <th>File Name</th>
                  <th>Total Bytes</th>
                   <th>Date</th>
                   <th>Generate Proof</th>
              </tr>  
        <%
       try{
          Connection con=DBConnection.getConnection();
          Statement st1=con.createStatement();
            Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from tpareq where proof='waiting'");
           while(rs.next()){
        
             String fid=rs.getString("fid");
               String filename1=rs.getString("fname");
               String size=rs.getString("fsize");
                 String date=rs.getString("fdate");
             %>
             <tr>
                 <td><%=fid%></td>
                 <td><%=filename1%></td>
                 <td><%=size%></td>
                 <td><%=date%></td>
                 <td><a href="GenProof.jsp?fid=<%=fid%>"><input type="button" value="Generate GenProof of this file"></input></a></td>
             </tr>
             
             
             
          <% } 
             
               
           
       }catch(Exception e){
           out.println(e);
       }
        
        
        
        %>
          </table> 
          
    </div>
    <div class="fl_right">
      
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="footer">
   
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

</body>
</html>