<%@page import="entity.Chapter"%>
<%@page import="entity.Book"%>
<%@page import="DAO.BookDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="fb:app_id" content="376408899112473" />
<meta name="description"
	content="Truyện Hot 24h hay nhất và mới nhất. Đọc truyện online nhiều thể loại tại TruyệnYY - Kho truyện được tuyển chọn và biên tập tốt nhất.">
<meta name="keywords"
	content="Doc truyen online, truyen kiem hiep, truyen tien hiep, truyen sac hiep, truyen ngon tinh, truyen trinh tham, vong du, truyen convert full text">
<link rel="alternate" type="application/atom+xml"
	title="Đọc Truyện Online - Truyện Kiếm Hiệp"
	href="http://feeds.feedburner.com/truyenyy">
<!--  <link href="css/bootstrap.min.css" rel="stylesheet">-->
<link
	href="<%=request.getContextPath() %>/admin/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath() %>/admin/assets/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/yamm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/chosen.css" rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/admin/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="icon" type="image/png" href="img/favicon.png" />
<link href="https://plus.google.com/103281900225927837176/" rel="author">
<!-- <script src="js/jquery-1.12.4.js"></script>-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/chosen.jquery.js"></script>
<!-- <script src="js/bootstrap.min.js"></script>-->
<script type="text/javascript" src="js/csrf.js"></script>
<style>
body {
	padding-top: 60px;
	padding-bottom: 40px;
	height: auto;
}
</style>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-37191528-1' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		List<Book> likes = BookDAO.getNewBook(6);
		List<Book> subcribes = BookDAO.getNewBook(6);
		List<Book> boughts = BookDAO.getNewBook(3);
	%>
	<%!public String create(Book book, String contextPath) {
		StringBuilder s = new StringBuilder();
		s.append("<div class=\"span4 thumbnail\">\n");
		s.append("<div class=\"pull-left\">\n");
		s.append("<a href=\"#\">\n");
		s.append("<img src=\"" + contextPath + book.getLinkImg() + "\">\n");
		s.append("<div class=\"caption\">\n");
		String bookName = book.getBookName().length() > 30 ? book.getBookName().substring(0, 27) + "..."
				: book.getBookName();
		s.append("<strong>" + bookName + "</strong>\n");
		if (book.getState())
			s.append("<span class=\"label label-success\">Đã hoàn thành</span>\n");
		else {
			s.append("<span class=\"label label-warning\">Chưa hoàn thành</span>\n");
			int newest = book.getNewestChapter();
			if (newest == 0)
				s.append("<span> Chưa có chapter " + "</span>\n");
			else
				s.append("<span><a href=\"#\"> Chapter mới nhất " + newest + "</a></span>\n");
		}
		s.append("</div>\n");
		s.append("</a>\n");
		s.append("</div>\n");
		
		
		s.append("<div class=\"pull-right\">\n");
		s.append("<ul class=\"list-group\">\n");
		int count = 0;
		for (Chapter c : book.getChapters()) {
			if (count < 5) {
				s.append("<li class=\"list-group-item\"><a href=\"#\"><i class=\"icon-book\"></i> Chương " + c.getOrders() + "</a></li>\n");
			} else
				break;
		}
		s.append("</ul>\n");
		s.append("</div>\n");
		s.append("</div>\n");
		return s.toString();

	}%>
	<div class="clearfix"></div>
	<h2>Truyện đã thích</h2>
	<div>
		<%
			int count1 = 0;
			for (Book book : likes) {
				if (count1 % 3 == 0)
					out.println("<div class=\"row-fluid\">");
				out.print(create(book, request.getContextPath()));
				if (count1 % 3 == 2)
					out.println("</div>");
				count1++;
			}
		%>
	</div>
	<div class="clearfix"></div>
	<h2>Truyện đang theo dõi</h2>
	<div>
		<%
			int count2 = 0;
			for (Book book : subcribes) {
				if (count2 % 3 == 0)
					out.println("<div class=\"row-fluid\">");
				out.print(create(book, request.getContextPath()));
				if (count2 % 3 == 2)
					out.println("</div>");
				count2++;
			}
		%>
	</div>
	<div class="clearfix"></div>
	<h2>Truyện đã mua</h2>
	<div>
		<%
			int count3 = 0;
			for (Book book : subcribes) {
				if (count3 % 3 == 0)
					out.println("<div class=\"row-fluid\">");
				out.print(create(book, request.getContextPath()));
				if (count3 % 3 == 2)
					out.println("</div>");
				count3++;
			}
		%>
	</div>
	<div class="clearfix"></div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>