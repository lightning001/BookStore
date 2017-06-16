package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AccountDAO;
import DAO.AuthorDAO;
import DAO.ManagerDAO;
import entity.Accounts;
import entity.Author;
import entity.Manager;
import util.ParseURI;

/**
 * Servlet implementation class GetInforUser
 */
@WebServlet({ "/admin/user/edit/user/*", "/admin/user/edit/author/*", "/admin/user/edit/admin/*" })
public class GetInforUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetInforUser() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String[] param = ParseURI.getListParam(request.getRequestURI());
		String object = param[param.length - 2];
		try {
			String page = param[param.length - 1];
			int id = Integer.parseInt(page);
			switch (object) {
			case "user":
				Accounts account = AccountDAO.getAccount(id);
				request.setAttribute("account", account);
				break;
			case "author":
				Author author = AuthorDAO.getAuthor(id);
				request.setAttribute("account", author);
				break;
			case "admin":
				Manager manager = ManagerDAO.getManager(id);
				request.setAttribute("account", manager);
				break;
			default:
				break;
			}
			request.setAttribute("object", object);
			request.getRequestDispatcher("/admin/usermanagement/updateuser.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			request.setAttribute("link", "admin/dashboard");
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
