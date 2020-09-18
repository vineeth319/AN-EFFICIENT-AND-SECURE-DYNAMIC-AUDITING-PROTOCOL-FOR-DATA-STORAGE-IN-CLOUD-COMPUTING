package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class ClientLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");

    
    String uname=request.getParameter("uname");
    String password=request.getParameter("password");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic_auditing","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from client where email='"+uname+"' and password='"+password+"'");
if(rs.next())
{
    String email=rs.getString("email");
    session.setAttribute("email",email);
    
      out.write("\n");
      out.write("      <script type=\"text/javascript\">\n");
      out.write("          window.alert(\"Client Login Sucessfully\");\n");
      out.write("          window.location=\"Client2.jsp\";\n");
      out.write("          </script>\n");
      out.write("      ");

          
}
else
{

      out.write("\n");
      out.write("      <script type=\"text/javascript\">\n");
      out.write("          window.alert(\"Client Login Fail\");\n");
      out.write("          window.location=\"Client.jsp\";\n");
      out.write("          </script>\n");
      out.write("      ");

}
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
