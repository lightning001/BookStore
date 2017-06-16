package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AccountDAO;
import util.ParseURI;

/**
 * Servlet implementation class LockUser
 */
@WebServlet(urlPatterns = {"/admin/user/lock/admin/*", "/admin/user/lock/author/*","/admin/user/lock/user/*"})
public class LockUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LockUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String[]param = ParseURI.getListParam(request.getRequestURI());
		String i = param[param.length-1];
		String object = param[param.length-2];
		int currentPage =1;
		if ("admin".equals(object))
			object = "administrator";
		int id = Integer.parseInt(i);
		try {
			AccountDAO.lockUnlock(id);
			request.getRequestDispatcher("/admin/user/" + object + "/" + currentPage).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Không khóa được");
			request.setAttribute("link", "admin/user/" + object + "/" + currentPage);
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
