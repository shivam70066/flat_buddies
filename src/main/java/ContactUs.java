
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContactUs() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		String message = request.getParameter("message");
		
		System.out.print(name + email + number + message);
		
		Connection con = null;
		RequestDispatcher dispatcher = null;

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection("jdbc:sqlserver://flatbuddies1.database.windows.net:1433;database=flatbuddies;user=flatbuddies1@flatbuddies1;password=Shivam.1;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
			String sqlQuery = "insert into contactData(name,email,number,message) values (?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sqlQuery);
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, number);
			pst.setString(4, message);

			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("contact.jsp");
			if (rowCount > 0) {
				request.setAttribute("statuss", "success");
			} else {
				request.setAttribute("statuss", "failed");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
				
	}

}
