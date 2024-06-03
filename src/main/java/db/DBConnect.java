package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
    private static Connection conn;

    public static Connection getConn(){

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver connect");
            String url="jdbc:mysql://localhost:3306/coiffeur";
            String user="root";
            String pwd="";

             conn = DriverManager.getConnection(url,user,pwd);
            System.out.println("Connxion bien etablie");
        }catch (Exception e){
            e.printStackTrace();
        }

        return conn;
    }
	
	

}
