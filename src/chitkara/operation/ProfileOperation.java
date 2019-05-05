package chitkara.operation;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import chitkara.db.DbConnection;

public class ProfileOperation {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public ResultSet showProfile() {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from resume");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public ResultSet show(String uid) {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from profile where uid=?");
			stmt.setString(1, uid);
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public ResultSet shownotice() {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from notice");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet showcomplaint() {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from complaint");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

}
