package chitkara.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import chitkara.dao.ComplaintDao;
import chitkara.dao.NoticeDao;
import chitkara.dao.UserDao;
import chitkara.db.DbConnection;

public class UserOperation {
	
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	
	
	public static UserDao login(UserDao user) {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from resume where uid=?");
			stmt.setString(1, user.getUid());
			
			rs=stmt.executeQuery();
			if(rs.next()) {
				//System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
				user.setUid(rs.getString("uid"));
			
				return user;
			}
			else
			{
				user=null;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	
	public static int addEmployee(UserDao user)
	{
		int i=0;
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("insert into resume(name,email,pno,college,yog,skill,uid) values(?,?,?,?,?,?,?)");
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getEmail());
			stmt.setString(3, user.getPno());
			stmt.setString(4, user.getCollege());
			stmt.setString(5, user.getYog());
			stmt.setString(6, user.getSkill());
			stmt.setString(7, user.getUid());
			i=stmt.executeUpdate();
	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	
	}
	
	
	public static int addnotice(NoticeDao notice)
	{
		int i=0;
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("insert into notice(date,message) values(?,?)");
			stmt.setString(1,notice.getDate());
			stmt.setString(2,notice.getMessage());
			i=stmt.executeUpdate();
	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
		
		
	}
	
	
	public static int addComplaint(ComplaintDao notice)
	{
		int i=0;
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("insert into complaint(name,email,message) values(?,?,?)");
			stmt.setString(1,notice.getName());
			stmt.setString(2,notice.getEmail());
			stmt.setString(3,notice.getMessage());
		
			i=stmt.executeUpdate();
	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
		
		
	}
	
	
	
	

}
