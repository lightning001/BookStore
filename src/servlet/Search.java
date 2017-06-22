package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SearchDAO;
import entity.Accounts;
import entity.Author;
import entity.Book;
import entity.Chapter;

/**
 * Servlet implementation class Search
 */
@WebServlet("/admin/search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Search() {
		super();
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
			List<Author> authors = SearchDAO.searchAuthor(key);
			List<Accounts> accounts = SearchDAO.searchAccount(key);
			List<Chapter> chapters = SearchDAO.searchChapter(key);
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
			result.append("],");

			result.append("\"chapters\":[");
			if (chapters != null) {
				for (int i = 0; i < chapters.size(); i++) {
					if (i > 0)
						result.append(",");
					result.append("{\"name\":\"" + chapters.get(i).getChapterName() + "\"");
					result.append(",\"slug\":\"" + chapters.get(i).getSlug() + "\"");
					result.append(", \"image\":\"" + request.getContextPath() + chapters.get(i).getBook().getLinkImg()
							+ "\"}");
				}
			}
			result.append("],");

			result.append("\"authors\":[");
			if (authors != null) {
				for (int i = 0; i < authors.size(); i++) {
					if (i > 0)
						result.append(",");
					result.append("{\"name\":\"" + authors.get(i).getAuthorName() + "\"");
					result.append(",\"id\":\"" + authors.get(i).getAccountId() + "\"");
					result.append(", \"image\":\"" + request.getContextPath()
							+ authors.get(i).getAccounts().getLinkImg() + "\"}");
				}
			}
			result.append("],");

			result.append("\"accounts\":[");
			if (accounts != null) {
				for (int i = 0; i < accounts.size(); i++) {
					if (i > 0)
						result.append(",");
					result.append("{\"name\":\"" + accounts.get(i).getName() + "\"");
					result.append(",\"id\":\"" + accounts.get(i).getAccountId() + "\"");
					result.append(", \"image\":\"" + request.getContextPath() + accounts.get(i).getLinkImg() + "\"}");
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
		doGet(request, response);
	}

}
