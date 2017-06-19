package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDAO;
import DAO.CategoryDAO;
import entity.Book;
import entity.Category;
import util.ParseURI;

/**
 * Servlet implementation class GetBook
 */
@WebServlet(urlPatterns = { "/admin/book/*", "/admin/book/checklist" })
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
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String[] param = ParseURI.getListParam(request.getRequestURI());
			String object = param[param.length - 1];
			if (!"checklist".equals(object)) {
				int maxsize = 5;
				int p = Integer.parseInt(object);
				long pageSize = BookDAO.getPageCount(maxsize);
				if (pageSize < p)
					p = (int) pageSize;
				List<Book> list = BookDAO.paging(p, maxsize);
				List<Category> listCate = CategoryDAO.getAllCategory();
				List<Book> newBook = BookDAO.getNewBook(4);
				List<Book> topBook = BookDAO.getTop10BookLike();
				request.setAttribute("currentPage", p);
				request.setAttribute("pageSize", pageSize);
				request.setAttribute("list", list);
				request.setAttribute("listCategory", listCate);
				request.setAttribute("newBooks", newBook);
				request.setAttribute("topBook", topBook);
				request.getRequestDispatcher("/admin/bookmanagement/listbook.jsp").forward(request, response);
			} else if ("checklist".equals(object) && "book".equals(param[param.length - 2])) {
				List<Book> list = BookDAO.getCheckBook();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/admin/bookmanagement/checkbook.jsp").forward(request, response);

			} else {
				request.setAttribute("error", "Không tìm thấy trang");
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
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
