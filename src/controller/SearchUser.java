package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SearchDAO;
import entity.Book;

/**
 * Servlet implementation class SearchUser
 */
@WebServlet("/search/book")
public class SearchUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchUser() {
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
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String key = request.getParameter("key");
		if (key != null && !"".equals(key)) {
			List<Book> books = SearchDAO.searchBook(key);
			StringBuilder result = new StringBuilder();
			result.append("{");
			result.append("\"books\":[");
			if (books != null) {
				for (int i = 0; i < books.size(); i++) {
					if (i > 0)
						result.append(",");
					result.append("{\"name\":\"" + books.get(i).getBookName() + "\"");
					result.append(",\"slug\":\"" + books.get(i).getSlug() + "\"");
					result.append(",\"image\":\"" + request.getContextPath() + books.get(i).getLinkImg() + "\"}");
				}
			}
			result.append("]}");

			response.getWriter().write(result.toString());

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
