package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ManagerDAO;
import dao.ObjectDAO;
import entity.Manager;
import util.ParseURI;

/**
 * Servlet implementation class AdminController
 */
@WebServlet(urlPatterns = { "/admin/user/administrator/*", "/admin/user/moderator/*", "/admin/user/publisher/*" })
public class GetAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetAdmin() {
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
			String object = param[param.length - 2];
			String page = param[param.length - 1];
			int p = Integer.parseInt(page);
			int maxsize = 8;
			if (object != null) {
				List<Manager> list = new ArrayList<>();
				long pageSize = 0;
				switch (object) {
				case "administrator":
					pageSize = ManagerDAO.getPageCount(maxsize, ObjectDAO.ADMINISTATOR);
					if (pageSize < p)
						p = (int) pageSize;
					list.addAll(ManagerDAO.paging(p, maxsize, ObjectDAO.ADMINISTATOR));
					break;
				case "moderator":
					pageSize = ManagerDAO.getPageCount(maxsize, ObjectDAO.MODERATOR);
					if (pageSize < p)
						p = (int) pageSize;
					list.addAll(ManagerDAO.paging(p, maxsize, ObjectDAO.MODERATOR));
					break;
				case "publisher":
					pageSize = ManagerDAO.getPageCount(maxsize, ObjectDAO.PUBLISHER);
					if (pageSize < p)
						p = (int) pageSize;
					list.addAll(ManagerDAO.paging(p, maxsize, ObjectDAO.PUBLISHER));
					break;
				default:
					pageSize = ManagerDAO.getPageCount(maxsize, ObjectDAO.ADMINISTATOR);
					if (pageSize < p)
						p = (int) pageSize;
					list.addAll(ManagerDAO.paging(p, maxsize, ObjectDAO.ADMINISTATOR));
					break;
				}
				request.setAttribute("object", object);
				request.setAttribute("currentPage", p);
				request.setAttribute("pageSize", pageSize);
				request.setAttribute("list", list);
				request.getRequestDispatcher("/admin/usermanagement/admin.jsp").forward(request, response);
			} else {
				request.setAttribute("error", "Không tìm thấy link");
				request.setAttribute("link", "admin/dashboard");
				request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
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
