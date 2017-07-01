package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CategoryDAO;
import entity.Category;
import util.ParseURI;

/**
 * Servlet implementation class DeleteCategory
 */
@WebServlet("/admin/category/delete/*")
public class DeleteCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteCategory() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String slug = ParseURI.getParam(request.getRequestURI());
			Category category = CategoryDAO.getCategory(slug);
			if (category != null) {
				if (CategoryDAO.delete(category)) {
					request.getRequestDispatcher("/admin/book/1").forward(request, response);
					return;
				}
			}
			request.setAttribute("error", "Thể loại này chưa có");
			request.setAttribute("link", "admin/book/1");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			request.setAttribute("link", "admin/book/1");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		}
	}

}
