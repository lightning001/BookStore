<%@page import="dao.BookDAO"%>
<%@page import="entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/a.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/yamm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/chosen.css" rel="stylesheet">
<link rel="icon" type="image/png" href="img/favicon.png" />
<link href="https://plus.google.com/103281900225927837176/" rel="author">
<script src="js/jquery-1.12.4.js"></script>
<script src="js/chosen.jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/csrf.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%
		List<Book> list = BookDAO.getListAgeUp(18);
	%>

	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="row wrapper">
					<div class="span2 YY">
						<ul class="nav nav-list">
							<li class="YY"><a href="index.jsp" tppabs=" ">Trang Chủ</a></li>
							<li class="moi"><a href="#">Truyện Mới Nhất</a></li>
							<li class="hot"><a href="tablehot.jsp">Truyện Hot Nhất</a></li>
							<li class="hay"><a href="#">Truyện Hay Nhất</a></li>
							<li class="rd"><a href="#">Truyện Ngẫu Nhiên</a></li>
							<li class="divider"></li>
						</ul>
						<div class="well well-small hide-x">
							<ul class="nav nav-list">
								<li class="dich"><a href="#">Truyện Dịch</a></li>
								<li class="convert"><a href="#">Truyện Convert</a></li>
								<li class="kh"><a href="#">Truyện Kiếm Hiệp</a></li>
								<li class="th"><a href="#">Truyện Tiên Hiệp</a></li>
								<li class="sh"><a href="#">Truyện Sắc Hiệp</a></li>
								<li class="hh"><a href="#">Truyện Huyền Huyễn</a></li>
								<li class="dt"><a href="#">Truyện Đô Thị</a></li>
								<li class="dg"><a href="#">Truyện Dị Giới</a></li>
								<li class="nt"><a href="#">Truyện Ngôn Tình</a></li>
							</ul>
						</div>
						<div class="hide-x">
							<div id="facebook">FACEBOOK</div>
						</div>
					</div>
					<div class="span10">
						<div class="inner">
							<ul class="thumbnails">
								<%
									for (int i = 0; i < list.size(); i++) {
								%>
								<li class="span2"><a href="detail.jsp" class="thumbnail"
									target="_blank"> <img alt="Đại Chúa Tể" width="160"
										height="210" src="<%=list.get(i).getLinkImg()%>">
								</a>
									<div class="caption">
										<a target="_blank">
											<h2>
												<a href="detail.jsp"> <%=list.get(i).getBookName()%>
												</a>
											</h2> <i class="icon-star-empty star"></i> <span
											class="label label-warning">Chương 1434</span> <br> <br>

											&nbsp<i class="fa fa-thumbs-o-up" style="color: blue"></i> <a
											class="label label-default"
											href="<%=request.getContextPath()%>/LikeBookServlet?idBook=<%=list.get(i).getBookId()%>"
											style="color: #fe0f0f">Yêu thích</a> <br> <br> <a
											href="<%=request.getContextPath()%>/PurchaseServlet?idBook=<%=list.get(i).getBookId()%>"
											class="btn btn-danger add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</a>
									</div></li>
								<%
									}
								%>

							</ul>
						</div>
					</div>
				</div>




			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>