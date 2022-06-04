package com.mushfiqur.rahman.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import java.sql.Connection;
import java.sql.Statement;


/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// Define datasource/ connection pool for Resource Injection
	@Resource(name="jdbc/web_student_tracker")
	private DataSource dataSource;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// step 1: set up the print writer
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		
		// step 2: get a connection to database
		Connection myConn= null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			myConn= dataSource.getConnection();
			
			// step 3: create a sql statements
			String sql = "select * from student";
			myStmt= myConn.createStatement();
			
		
			// step 4: execute sql query
			myRs = myStmt.executeQuery(sql);
		
			// step 5: process the result set
			while(myRs.next()) {
				String email= myRs.getString("email");
				out.println(email);
				out.println("<br>");
				
			}
		}
		catch(Exception exc) {
			exc.printStackTrace();
		}
		
	}

}
