package CrudJsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CrudDao {

	public static Connection getconnection() {
		Connection con = null;
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://192.168.1.116:3306/training","admin","newpwd");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return con;
	}
	
	public static int save(CrudBean c) {
		int status=0;
		
		try {
			Connection con = getconnection();
			PreparedStatement ps = con.prepareStatement("insert into user9(name,password,email,country)values(?,?,?,?)");
			ps.setString(1,c.getName());
			ps.setString(2,c.getPassword());
			ps.setString(3,c.getEmail());
			ps.setString(4,c.getCountry());
			
			status = ps.executeUpdate();
			
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return status;
	}
	public static List<CrudBean> view(){
		List<CrudBean> user = new ArrayList<CrudBean>();
		
		try {
			
			Connection con = getconnection();
			PreparedStatement ps = con.prepareStatement("select * from user9");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String password = rs.getString("password");
				String email = rs.getString("email");
				String country = rs.getString("country");
				
				CrudBean us = new CrudBean(id,name, password, email, country);
				user.add(us);
				
			}
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return user;
	}
	
	public static int delete(String id){
		int status=0;
		try {
		Connection con = getconnection();
		
		PreparedStatement ps = con.prepareStatement("delete  from user9 where id=?");
		ps.setString(1,id);
		status = ps.executeUpdate();
		
		
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return status;
		
	}
	
	public static int edit(CrudBean e) {
		int status=0;
		try {
			Connection con = getconnection();
			PreparedStatement ps = con.prepareStatement("update user9 set name=? , password=? , email=? , country=? where id=?");
			ps.setString(1,e.getName());
			ps.setString(2,e.getPassword());
			ps.setString(3,e.getEmail());
			ps.setString(4,e.getCountry());
			ps.setInt(5, e.getId());
			System.out.println(e.getId());
			
		 status = 	ps.executeUpdate();
			
		}catch(Exception l) {
			System.out.println(e);
		}
		return status;
	}
	
	
}
