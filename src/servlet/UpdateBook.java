package servlet;

import java.io.IOException;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AccountDAO;
import DAO.BookDAO;
import DAO.CategoryDAO;
import entity.Accounts;
import entity.Book;
import entity.Category;

/**
 * Servlet implementation class UpdateBook
 */
@WebServlet(urlPatterns = { "/admin/book/update" })
public class UpdateBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateBook() {
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
			String uploadPath = getServletContext().getRealPath("") + "/img/book";
			UploadFile upload = new UploadFile(request, response, uploadPath);
			Hashtable<Object, Object> param = upload.upload(uploadPath);
			if (param != null) {
				int id = Integer.parseInt((String) param.get("bookId"));
				Book old = BookDAO.getBook(id);
				if (old != null) {
					System.out.println("old" + old);
					String bookName = param.get("bookName") != null && !"".equals(param.get("bookName"))
							? (String) param.get("bookName") : old.getBookName();
					int age = param.get("age") != null && !"".equals(param.get("age"))
							? Integer.parseInt((String) param.get("age")) : old.getAge();
					String cate = (String) param.get("categories");
					Set<Category> setcate = new HashSet<Category>();
					if (cate != null && !"".equals(cate)) {
						Category ca = CategoryDAO.getCategory(Integer.parseInt(cate));
						setcate.add(ca);
					}
					String auth = (String) param.get("authors");
					Set<Accounts> setAuthor = new HashSet<>();
					if (auth != null && !"".equals(auth)) {
						Accounts au = AccountDAO.getAccount(Integer.parseInt(auth));
						setAuthor.add(au);
					}
					String slug = TextFormat.createKeyWord(bookName + "-" + auth);
					String introduction = (String) param.get("introduction");
					boolean status = Boolean.parseBoolean((String) param.get("status"));
					String country = (String) param.get("country");
					Float price = Float.parseFloat((String) param.get("price"));
					String linkImg = ("".equals(param.get("linkfileAfterUpload"))
							|| param.get("linkfileAfterUpload") == null) ? old.getLinkImg()
									: (String) param.get("linkfileAfterUpload");
					System.out.println("OK!!!!!!!!!!!");
					Book book = new Book(id, bookName, slug, status, age, introduction, old.getPostDate(), linkImg,
							country, price, true, old.getLikes(), old.getSubcribe(), old.getExchangeses(),
							old.getLikelib(), old.getChapters(), setAuthor, old.getSubcribelib(), setcate);
					System.out.println("book " + book);
					if (BookDAO.update(book)) {
						request.getRequestDispatcher("/admin/book/1").forward(request, response);
						return;
					}
				} else {
					request.setAttribute("error", "Truyện này chưa có");
					request.setAttribute("link", "admin/book/1");
					request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);

				}
			} else {
				request.setAttribute("error", "Chưa gửi được dữ liệu");
				request.setAttribute("link", "admin/book/1");
				request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);

			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			request.setAttribute("link", "admin/book/1");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		}
	}
}
