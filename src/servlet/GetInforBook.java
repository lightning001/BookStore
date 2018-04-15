package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AuthorDAO;
import dao.BookDAO;
import dao.CategoryDAO;
import entity.Author;
import entity.Book;
import entity.Category;
import util.ParseURI;

/**
 * Servlet implementation class GetInforBook
 */
@WebServlet("/admin/book/edit/*")
public class GetInforBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetInforBook() {
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
		try {
			String slug = ParseURI.getParam(request.getRequestURI());
			Book book = BookDAO.getBook(slug);
			List<Category> listCate = CategoryDAO.getAllCategory();
			List<Author> listAuthor = AuthorDAO.getAllAuthor();
			request.setAttribute("book", book);
			request.setAttribute("listCategory", listCate);
			request.setAttribute("listAuthor", listAuthor);
			request.getRequestDispatcher("/admin/bookmanagement/updatebook.jsp").forward(request, response);
			return;

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
