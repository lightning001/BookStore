package servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StatisticDAO;
import entity.Statistic;

/**
 * Servlet implementation class Statistic
 */
@WebServlet(urlPatterns = { "/admin/dashboard", "/admin/index" })
public class GetStatistic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetStatistic() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			Statistic statistic = StatisticDAO.getStatisTicOnMonth(new Date(System.currentTimeMillis()));
			List<Statistic> list6month = StatisticDAO.statistic6MonthToday();
			List<Statistic> all = StatisticDAO.getAllStatistic();
			request.setAttribute("statistic", statistic);
			request.setAttribute("list", list6month);
			request.setAttribute("all", all);
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Không thể lấy dữ liệu");
			request.setAttribute("link", "");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
