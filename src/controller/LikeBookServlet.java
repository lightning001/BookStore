package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BookDAO;
import entity.Accounts;
import entity.Book;

/**
 * Servlet implementation class LikeBookServlet
 */
@WebServlet("/LikeBookServlet")
public class LikeBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LikeBookServlet() {
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
		int idBook = Integer.parseInt(request.getParameter("idBook"));
		Book book;
		HttpSession session = request.getSession();
		Accounts c = (Accounts) session.getAttribute("account");

		try {

			book = BookDAO.getBook(idBook);

			BookDAO.likeListBook().add(book);
			if (c == null) {
				response.sendRedirect(request.getContextPath() + "/user/login.jsp");
			} else {
				response.sendRedirect(request.getContextPath() + "/user/user.jsp");
			}

		} catch (Exception e) {
			System.err.println("HERE TODO " + e.getMessage());
			e.printStackTrace();
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
