package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import entity.Accounts;
import entity.Book;
import util.MailTemplete;
import util.ParseURI;
import util.SendMail;

/**
 * Servlet implementation class CheckBook
 */
@WebServlet(urlPatterns = { "/admin/book/checkbook/*", "/admin/book/checkbook2/*" })
public class CheckBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckBook() {
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
			String slug = param[param.length - 1];
			Book book = BookDAO.getBook(slug);
			book.setChecked(true);
			if (BookDAO.update(book)) {
				for (Accounts au : book.getBook_author()) {
					SendMail.sendMail(au.getEmail(),
							MailTemplete
									.checkBook(request.getContextPath() + "/user/Detail?idBook=" + book.getBookId()),
							"[ĐĂNG TRUYỆN TẠI BOOKSTORE]");
				}
				if ("checkbook".equals(param[param.length - 2])) {
					request.getRequestDispatcher("/admin/book/checklist").forward(request, response);
					return;
				} else if ("checkbook2".equals(param[param.length - 2])) {
					request.getRequestDispatcher("/admin/book/1").forward(request, response);
					return;
				}
			} else {
				request.setAttribute("error", "Không duyệt được");
				request.setAttribute("link", "admin/book/checklist");
				request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
			}
		} catch (Exception e) {
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
