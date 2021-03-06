package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountDAO;
import entity.Accounts;

/**
 * Servlet implementation class LoginUser
 */
@WebServlet("/LoginUser")
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginUser() {
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
		HttpSession session = request.getSession();
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");

		if (userName != null && !"".equals(userName) && pass != null && !"".equals(pass)) {
			Accounts ac = AccountDAO.login(userName, pass);
			System.out.println(ac);
			if (ac != null) {
				session.setAttribute("account", ac);
				response.sendRedirect("user/index.jsp");
			} else {
				request.setAttribute("loginerror", "Email or Password is incorrect or You not have access page");
				response.sendRedirect("user/login.jsp");
			}
		} else {
			request.setAttribute("loginerror", "Error");
			response.sendRedirect("user/login.jsp");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
