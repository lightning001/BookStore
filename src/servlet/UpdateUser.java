package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Hashtable;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AccountDAO;
import DAO.AuthorDAO;
import DAO.ManagerDAO;
import entity.Accounts;
import entity.Author;
import entity.Book;
import entity.Exchanges;
import entity.Library;
import entity.Manager;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet({ "/admin/user/update/user", "/admin/user/update/admin", "/admin/user/update/author" })
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUser() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String uploadPath = getServletContext().getRealPath("") + File.separator + "img" + File.separator + "upload"
					+ File.separator + "profile";
			UploadFile upload = new UploadFile(request, response, uploadPath);
			Hashtable<Object, Object> param = upload.upload(uploadPath);
			if (param != null) {
				String accountId = (String) param.get("id");
				Integer id = Integer.parseInt(accountId);
				String object = (String) param.get("object");
				Accounts old = null;
				Manager manager = null;
				Author author = null;
				switch (object) {
				case "user":
					old = AccountDAO.getAccount(id);
					System.out.println("old: " + old);
					break;
				case "author":
					author = AuthorDAO.getAuthor(id);
					System.out.println("author: " + author);
					old = author.getAccounts();
					break;
				case "admin":
					manager = ManagerDAO.getManager(id);
					System.out.println("manager: " + manager);
					old = manager.getAccounts();
					break;
				}
				if (old != null) {
					String name = (String) param.get("name");
					String username = old.getUsername();
					String email = (String) param.get("email");
					String password = old.getPasswords();
					boolean isLock = Boolean.parseBoolean((String) param.get("isLock"));
					Date createDate = old.getCreateDate();
					boolean gender = Boolean.parseBoolean((String) param.get("gender"));
					Float money = Float.parseFloat((String) param.get("money"));
					String level = old.getLevels() + "";
					if (param.get("levels") != null && !"".equals((String) param.get("levels")))
						level = (String) param.get("levels");
					String linkImg = (String) param.get("linkfileAfterUpload");
					if (linkImg == null || "".equals(linkImg)) {
						linkImg = "".equals(old.getLinkImg()) ? ((gender == true) ? "/img/woman.png" : "/img/men.png")
								: old.getLinkImg();
					}
					int levels = Integer.parseInt(level);
					Set<Exchanges> exchangeses = old.getExchangeses();
					Set<Library> libraries = old.getLibraries();
					Set<Book> books = old.getBooks();

					Accounts accountNew = new Accounts(id, name, username, gender, email, linkImg, password, isLock,
							createDate, money, levels, exchangeses, libraries, books);
					if (author != null) {
						String authorName = (String) param.get("authorName");
						String biography = (String) param.get("biography");
						Author authorNew = new Author(accountNew, authorName, biography);
						if (AuthorDAO.update(authorNew)) {
							request.getRequestDispatcher("/admin/user/author/1").forward(request, response);
							return;
						}
					} else if (manager != null) {
						if (AccountDAO.update(accountNew)) {
							request.getRequestDispatcher("/admin/user/administrator/1").forward(request, response);
							return;
						}
					} else {
						if (AccountDAO.update(accountNew)) {
							request.getRequestDispatcher("/admin/user/user/1").forward(request, response);
							return;
						}
					}
				} else {
					out.write("Không tìm thấy tài khoản này");
					return;
				}
			} else {
				out.write("Lỗi upload file");
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			request.setAttribute("link", "admin/index");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		}
	}

}
