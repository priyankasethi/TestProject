package common;
import java.sql.Connection;
import java.sql.DriverManager;
public class DB_Connection {
	public static void main(String []args) {
		
	
	try {
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useSSL=false", "root", "");
		System.out.println("connection succesful");
	}
	catch(Exception e) {
		System.err.println(e);
	}
	}
	

}
