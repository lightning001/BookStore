package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDAO;
import dao.AuthorDAO;
import dao.ManagerDAO;
import entity.Accounts;
import entity.Author;
import entity.Manager;
import util.ParseURI;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet(urlPatterns = { "/admin/user/delete/user/*", "/admin/user/delete/admin/*",
		"/admin/user/delete/author/*" }, description = "servlet xóa các loại tài khoản trong hệ thống")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteUser() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String[] param = ParseURI.getListParam(request.getRequestURI());
		if (!"delete".equalsIgnoreCase(param[param.length - 3])) {
			return;
		}
		Integer accountId = Integer.parseInt(param[param.length - 1]);
		String object = param[param.length - 2];
		try {
			if ("admin".equalsIgnoreCase(object)) {
				Manager account = ManagerDAO.getManager(accountId);
				if (account != null) {
					if (ManagerDAO.delete(account)) {
						request.getRequestDispatcher("/admin/user/administrator/1").forward(request, response);
						return;
					}
				}
			} else if ("user".equalsIgnoreCase(object)) {
				Accounts account = AccountDAO.getAccount(accountId);
				if (account != null) {
					if (AccountDAO.delete(account)) {
						request.getRequestDispatcher("/admin/user/user/1").forward(request, response);
						return;
					}
				}
			} else if ("author".equalsIgnoreCase(object)) {
				Author account = AuthorDAO.getAuthor(accountId);
				if (account != null) {
					if (AuthorDAO.delete(account)) {
						request.getRequestDispatcher("/admin/user/author/1").forward(request, response);
						return;
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			request.setAttribute("link", "admin/user/" + object + "/1");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		}

	}

}
