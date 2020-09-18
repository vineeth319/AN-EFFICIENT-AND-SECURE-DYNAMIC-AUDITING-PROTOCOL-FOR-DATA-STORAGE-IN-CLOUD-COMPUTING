<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
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
        <li><a href="DownloadHistory.jsp">History</a></li>
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
              <%String fid=request.getParameter("fid");
              session.setAttribute("fid",fid);
              String filename=request.getParameter("filename");
              session.setAttribute("fname",filename);%>
          <table>
           <tr><th>Blocks</th>
           <th>Secrete Key</th>
       
           </tr>
           <form action="Down.jsp" method="post">
           <tr>
               
               <td><input type="text" name="block1" value="Block1" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey1" required=""</td></tr>
                <tr><td><input type="text" name="block1" value="Block2" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey2" required=""</td></tr>
                <tr><td><input type="text" name="block1" value="Block3" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey3" required=""</td></tr>
               <tr> <td><input type="text" name="block1" value="Block4" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey4" required=""</td></tr>
                <tr><td><input type="text" name="block1" value="Block5" style="color:red;border:none;" readonly=""></input></td>      
               <td><input type="text" name="skey5" required=""</td></tr>
           
               <td></td><td><input type="submit" value="Download" style="background:red;"/></td></tr>
           </form>
              
       </table>
      
         
         

    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

</div>

</body>
</html>