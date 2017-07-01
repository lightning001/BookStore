package servlet.user;

import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDAO;
import DAO.CategoryDAO;
import entity.Accounts;
import entity.Book;
import entity.Category;
import servlet.TextFormat;
import servlet.UploadFile;

/**
 * Servlet implementation class DangTruyen
 */
@WebServlet("/dangtruyen")
public class DangTruyen extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangTruyen() {
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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String uploadPath = getServletContext().getRealPath("") + "/img/book";
			UploadFile upload = new UploadFile(request, response, uploadPath);
			Hashtable<Object, Object> param = upload.upload(uploadPath);
			if (param != null) {
				String bookName = (String) param.get("bookName");
				int age = Integer.parseInt((String) param.get("age"));
				String cate = (String) param.get("cat");
				Category ca = CategoryDAO.getCategory(Integer.parseInt(cate));
				Set<Category> setcate = new HashSet<Category>();
				setcate.add(ca);
				System.out.println("cate: " + cate);
				Accounts au = (Accounts) request.getSession().getAttribute("user");
				String slug = TextFormat.createKeyWord(bookName + "-" + TextFormat.createKeyWord(au.getUsername()));
				Set<Accounts> setAuthor = new HashSet<>();
				setAuthor.add(au);
				String introduction = (String) param.get("introduction");
				Float price = Float.parseFloat((String) param.get("price"));
				String linkImg = (String) param.get("linkfileAfterUpload");
				Book book = new Book(bookName, slug, false, age, introduction, new Date(System.currentTimeMillis()),
						linkImg, "", price, false, 0, null, setAuthor, setcate);
				if (BookDAO.insert(book)) {
					request.setAttribute("book", book);
					request.getRequestDispatcher("/user/ThemChuong.jsp").forward(request, response);
					return;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			request.setAttribute("link", "admin/book/1");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);

		}
	}

}
