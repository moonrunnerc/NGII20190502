
package DBAccess;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DBHelper {
	    public static final String url = "jdbc:mysql://10.32.129.36:3306/device?useUnicode=true&characterEncoding=utf-8";  
	    public static final String name = "com.mysql.jdbc.Driver";  
	    public static final String user = "zz";  
	    public static final String password = "Zz@2017";  
	    public java.sql.Statement stmt = null;
	    public Connection conn = null;  
	    public PreparedStatement pst = null;  
	    public boolean tag = false;
	    public DBHelper(String sql) {  
	        try {  
	            Class.forName(name);//指定连接类型  
	            conn = DriverManager.getConnection(url, user, password);//获取连接  
	            pst = conn.prepareStatement(sql);//准备执行语句  
	            stmt = conn.createStatement();
	            tag=true;
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	    }  
	    public DBHelper() {  
	        try {  
	        	System.out.println("begin");
	            Class.forName(name);//指定连接类型 
	        	System.out.println("begin1");
	            conn = DriverManager.getConnection(url, user, password);//获取连接  
	        	System.out.println("begin2");
	            stmt = conn.createStatement();
	        	System.out.println("begin3");
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	    }  
	  
	    public void close() {  
	        try {  
	        	this.stmt.close();
	            this.conn.close();  
	            if(tag)this.pst.close();  
	            } 
	        catch (SQLException e) 
	            {  
	            e.printStackTrace();  
	            }  
	    }  
}
