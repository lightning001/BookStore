package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AuthorDAO;
import dao.CategoryDAO;
import entity.Author;
import entity.Category;

/**
 * Servlet implementation class ForwardInsertBook
 */
@WebServlet(urlPatterns = { "/admin/book/insertform" })
public class ForwardInsertBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForwardInsertBook() {
		super();
		// TODO Auto-generated constructor stub
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
		List<Category> listCate = CategoryDAO.getAllCategory();
		List<Author> listAuthor = AuthorDAO.getAllAuthor();
		request.setAttribute("listCategory", listCate);
		request.setAttribute("listAuthor", listAuthor);
		request.getRequestDispatcher("/admin/bookmanagement/insertbook.jsp").forward(request, response);
	}

}
