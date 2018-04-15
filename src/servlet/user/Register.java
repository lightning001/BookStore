package servlet.user;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDAO;
import entity.Accounts;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
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
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String activeCode = request.getParameter("code");
		// check dung khong neu dung isactive = true

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (!email.equals("") && !username.equals("") && !password.equals("")) {
			Accounts acc = new Accounts();
			acc.setEmail(email);
			acc.setUsername(username);
			acc.setPasswords(password);
			acc.setIsActive(false);
			UUID uuid = UUID.randomUUID();
			acc.setActiveCode(uuid.toString());
			AccountDAO.insert(acc);
			// send emamil content: link to /register?email=...&code=...

			request.getRequestDispatcher("/index").forward(request, response);
		}
		request.getRequestDispatcher("/user/register.jsp").forward(request, response);
	}

}
