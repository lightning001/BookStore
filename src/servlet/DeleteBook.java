package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDAO;
import entity.Book;
import util.ParseURI;

/**
 * Servlet implementation class DeleteBook
 */
@WebServlet(urlPatterns = { "/admin/book/delete/*" })
public class DeleteBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteBook() {
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
			int id = Integer.parseInt(ParseURI.getParam(request.getRequestURI()));
			Book book = BookDAO.getBook(id);
			if (BookDAO.delete(book)) {
				request.getRequestDispatcher("admin/book/1").forward(request, response);
				return;
			} else {
				request.setAttribute("error", "Không xóa được");
				request.setAttribute("link", "admin/book/1");
				request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
			}
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			request.setAttribute("error", e);
			request.setAttribute("link", "admin/book/1");
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
