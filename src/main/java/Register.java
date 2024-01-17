
import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.dbcp.dbcp2.PStmtKey;

import com.mysql.cj.exceptions.RSAException;

/**
 * Servlet implementation class registe
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
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
		String pass = request.getParameter("pass");
		String mobNo = (String) request.getParameter("mobNo");
		Connection con = null;
		RequestDispatcher dispatcher = null;

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection("jdbc:sqlserver://flatbuddies1.database.windows.net:1433;database=flatbuddies;user=flatbuddies1@flatbuddies1;password=Shivam.1;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
			
			String sqlQueryForCheckUserString = "select * from users where email=?";
			PreparedStatement pst1 = con.prepareStatement(sqlQueryForCheckUserString);
			pst1.setString(1, email);
			ResultSet rSet = pst1.executeQuery();
			dispatcher = request.getRequestDispatcher("register.jsp");
			if(rSet.next()) {
				request.setAttribute("status", "failed");
			}
			else {
				request.setAttribute("status", "success");
			}
		
			dispatcher.forward(request, response);
			
			
			
			
			
			
			String sqlQuery = "insert into users(name,email,mobNo,pass) values (?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sqlQuery);
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, mobNo);
			pst.setString(4, pass);
////
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("register.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}

	}

}
