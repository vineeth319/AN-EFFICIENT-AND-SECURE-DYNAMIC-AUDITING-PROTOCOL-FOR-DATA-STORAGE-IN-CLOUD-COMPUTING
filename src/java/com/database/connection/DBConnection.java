
package com.database.connection;



import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection con=null;
   public static Connection getConnection(){
       try{
          Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic_auditing","root","root");
 
       }catch(Exception e){
        System.out.println("connection error:"+e);
       }
        
       return con;
   } 
}
