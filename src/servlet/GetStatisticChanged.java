package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StatisticDAO;
import entity.Statistic;

/**
 * Servlet implementation class GetStatisticChanged
 */
@WebServlet("/changedstatistic")
public class GetStatisticChanged extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetStatisticChanged() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		ServletOutputStream out = response.getOutputStream();
		try {
			String start = request.getParameter("start");
			String stop = request.getParameter("stop");
			System.out.println("start: " + start + " stop: " + stop);
			List<Statistic> result = StatisticDAO.statisticPeriod(start, stop);
			int count = 1;
			for (Statistic st : result) {
				out.print("<tr>");
				out.print("<td>" + count + "</td>");
				out.print("<td>" + st.getMonth() + "/" + st.getYear() + "</td>");
				out.print("<td>" + st.getCreateaccount() + "</td>");
				out.print("<td>" + st.getWritebook() + "</td>");
				out.print("<td>" + st.getWritechapter() + "</td>");
				out.print("<td>" + st.getReadbook() + "</td>");
				out.print("<td>" + st.getLikebook() + "</td>");
				out.print("<td>" + st.getExchanges() + "</td>");
				out.print("</tr>");
				count++;
			}
			return;
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Không thể lấy dữ liệu");
			request.setAttribute("link", "admin/index");
			request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
		}
	}

}
