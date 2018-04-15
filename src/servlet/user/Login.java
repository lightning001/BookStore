package servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ManagerDAO;
import entity.Manager;

/**
 * Created by congphuong on 7/1/17.
 */
@WebServlet("/Login")
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
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("username");
		String passwd = request.getParameter("password");

		if (email != null && !"".equals(email) && passwd != null && !"".equals(passwd)) {
			Manager u = ManagerDAO.login(email, passwd);
			if (u != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", u);
				request.getRequestDispatcher("/index").forward(request, response);
			} else {
				request.setAttribute("loginerror", "Email or Password is incorrect or You not have access page");
				request.getRequestDispatcher("/admin/Login.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("loginerror", "Error");
			request.getRequestDispatcher("/user/Login.jsp").forward(request, response);
		}
	}
}
