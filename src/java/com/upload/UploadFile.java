/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.http.HttpSession;

@MultipartConfig(maxFileSize=1024*1024*50)
public class UploadFile extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession();
        String email=(String)session.getAttribute("email");
        PrintWriter out = response.getWriter();
        final String filepath = "D:\\";
        try{
            MultipartRequest m = new MultipartRequest(request, filepath);
         String fid=m.getParameter("fid");  
         String subject=m.getParameter("subject");
         
      
        File f=m.getFile("file");
         String filename=f.getName();
         long fsize=f.length();
        
      
        
         System.out.println("filename:"+filename);
         
         BufferedReader br=new BufferedReader(new FileReader(f));
             StringBuffer sb = new StringBuffer();
            String temp = null;

            while ((temp = br.readLine()) != null) {
                sb.append(temp);
                
            }
           String data=sb.toString();
          System.out.println("++++++"+data);
          
          
          KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);
          
         
         
          String cipher=new encryption().encrypt(data,s);
          Date d=new Date();
            SimpleDateFormat s1=new SimpleDateFormat("dd-MM-yyyy");
            String da=s1.format(d);
            
            String query="insert into files values('"+fid+"','"+email+"','"+filename+"','"+subject+"','"+data+"','"+cipher+"','"+skey+"','"+da+"','"+fsize+"','Waiting')";
            
            Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic_auditing","root","root");
Statement st = con.createStatement();
       int i=st.executeUpdate(query);     
            if(i>0){
           File f1 = new File("D:\\",filename);
                                FileWriter fw = new FileWriter(f1);
                                fw.write(cipher);
                                fw.close();
                                Ftpcon ftpcon = new Ftpcon();
                                ftpcon.upload(f1, filename);
                                
                response.sendRedirect("UploadFile.jsp?msg=success");
            }else{
              response.sendRedirect("UploadFile.jsp?msg=failed");  
            }
            
            
      
         response.sendRedirect("Up_Encrypt.jsp");
         
        }catch(Exception e){
            out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
