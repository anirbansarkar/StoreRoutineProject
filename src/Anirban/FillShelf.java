package Anirban;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class FillShelf {
	public void updateShelf() {
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","tejendra");
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("update shelf s join ordered o on s.pid=o.pid set s.quantity=s.quantity+o.quantity");
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	public void updateWarehouse() {
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","tejendra");
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("update warehouse w join ordered o on w.pid=o.pid set w.quantity=w.quantity-o.quantity");
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	public void resetOrder() {
		
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","tejendra");
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("update ordered set quantity="+0+"");
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
}
