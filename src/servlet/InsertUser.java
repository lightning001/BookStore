package servlet;

import java.io.IOException;
import java.util.Date;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDAO;
import dao.AuthorDAO;
import dao.ManagerDAO;
import entity.Accounts;
import entity.Author;
import entity.Manager;
import util.ParseURI;

/**
 * Servlet implementation class InsertUser
 */
@WebServlet({ "/admin/user/insert/user", "/admin/user/insert/admin", "/admin/user/insert/author" })
public class InsertUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertUser() {
		super();
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
		String object = ParseURI.getParam(request.getRequestURI());
		try {
			String uploadPath = getServletContext().getRealPath("") + "/img/upload/profile";
			UploadFile upload = new UploadFile(request, response, uploadPath);
			Hashtable<Object, Object> param = upload.upload(uploadPath);
			if (param != null) {
				String name = (String) param.get("name");
				String username = (String) param.get("username");
				String email = (String) param.get("email");
				String password = (String) param.get("password");
				boolean gender = Boolean.parseBoolean((String) param.get("gender"));
				String linkImg = (String) param.get("linkfileAfterUpload");
				Date createDate = new Date(System.currentTimeMillis());
				Accounts account = new Accounts(name, username, gender, email, linkImg, password, false, createDate,
						(float) 0, 0);
				account.setIsActive(true);
				if ("user".equalsIgnoreCase(object.trim())) {
					if (AccountDAO.insert(account)) {
						request.getRequestDispatcher("/admin/user/user/1").forward(request, response);
						return;
					}
				}
				if ("author".equalsIgnoreCase(object.trim())) {
					String authorName = (String) param.get("authorName");
					String biography = (String) param.get("biography");
					Author author = new Author(account, authorName, biography);
					if (AuthorDAO.insert(author)) {
						request.getRequestDispatcher("/admin/user/author/1").forward(request, response);
						return;
					}
				}
				if ("admin".equalsIgnoreCase(object.trim())) {
					String level = (String) param.get("levels");
					if (level == null || "".equals(level))
						level = "3";
					int lv = Integer.parseInt(level);
					account.setLevels(lv);
					account.setIsActive(true);
					Manager manager = new Manager(account);
					if (ManagerDAO.insert(manager)) {
						request.getRequestDispatcher("/admin/user/administrator/1").forward(request, response);
						return;
					}
				}
			} else {
				object = "admin".equals(object) ? "administrator" : "user";
				request.setAttribute("error", "Lỗi upload file");
				request.setAttribute("link", "admin/user/" + object + "/1");
				request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			object = "admin".equals(object) ? "administrator" : "user";
			request.setAttribute("link", "admin/user/" + object + "/1");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		}

	}

}
