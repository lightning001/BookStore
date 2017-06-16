package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AccountDAO;
import DAO.ObjectDAO;
import entity.Accounts;
import util.ParseURI;

/**
 * Servlet implementation class GetUser
 */
@WebServlet({ "/admin/user/user/*" })
public class GetUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetUser() {
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
		try {
			String[] param = ParseURI.getListParam(request.getRequestURI());
			int currentPage = Integer.parseInt(param[param.length - 1]);
			String object = param[param.length - 2];
			int row = 8;
			long pageSize = 0;
			if ("user".equals(object)) {
				pageSize = AccountDAO.getPageCount(row, ObjectDAO.USER);
				if (pageSize < currentPage)
					currentPage = (int) pageSize;
				List<Accounts> listAccount = AccountDAO.paging(currentPage, row, ObjectDAO.USER);
				request.setAttribute("list", listAccount);
				request.setAttribute("object", object);
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("pageSize", pageSize);
				request.getRequestDispatcher("/admin/usermanagement/user.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("/admin/dashboard").forward(request, response);
			}
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
