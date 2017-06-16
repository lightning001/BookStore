package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ManagerDAO;
import entity.Manager;

/**
 * Servlet implementation class Login
 */
@WebServlet("/admin/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");

		if (email != null && !"".equals(email) && passwd != null && !"".equals(passwd)) {
			Manager u = ManagerDAO.login(email, passwd);
			if (u != null) {
				HttpSession session = request.getSession();
				if ("admin".equalsIgnoreCase(u.getOffice())) {
					session.setAttribute("masteraccount", u);
				}
				session.setAttribute("adminaccount", u);
				request.getRequestDispatcher("/admin/index").forward(request, response);
			} else {
				request.setAttribute("loginerror", "Email or Password is incorrect or You not have access page");
				request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("loginerror", "Error");
			request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
		}
	}

}
