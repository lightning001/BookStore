package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDAO;
import entity.Book;
import util.ParseURI;

/**
 * Servlet implementation class GetBook
 */
@WebServlet(urlPatterns = { "/admin/book/*" })
public class GetBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetBook() {
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
		int maxsize = 12;
		try {
			String page = ParseURI.getParam(request.getRequestURI());
			int p = Integer.parseInt(page);
			long pageSize = BookDAO.getPageCount(maxsize);
			if (pageSize < p)
				p = (int) pageSize;
			List<Book> list = BookDAO.paging(p, maxsize);
			request.setAttribute("currentPage", p);
			request.setAttribute("pageSize", pageSize);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/admin/bookmanagement/listbook.jsp").forward(request, response);
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
