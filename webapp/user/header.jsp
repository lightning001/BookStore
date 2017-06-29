<%@page import="DAO.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%> --%>
<%-- 	<a4j:ajax> --%>
<%-- 	</a4j:ajax> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/yamm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/chosen.css" rel="stylesheet">
<link href="css/mystyle.css" rel="stylesheet">
<link rel="icon" type="image/png" href="img/favicon.png" />
<link href="https://plus.google.com/103281900225927837176/" rel="author">
<script src="js/jquery-1.12.4.js"></script>
<script src="js/chosen.jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/csrf.js"></script>

</script>
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
	<div class="yamm navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand truyenyy-logo" href="index.jsp">MyBook</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a href="index.jsp"><i
								class="icon-home"></i> Trang chủ</a></li>
						<li class="dropdown"><a href="javascript:"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="icon-book"></i> Danh Mục<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="yamm-content">
									<!-- <ul class="span2 unstyled" style="width: 158px;">
										<li><input type="hidden" value="1"><a href="#">Kiếm
												Hiệp</a></li>
									</ul> --> <%
 	for (int i = 0; i < CategoryDAO.getAllCategory().size(); i++) {
 %>
									<ul class="span2 unstyled" style="width: 158px;">
										<li><input type="hidden" value="1"><a href="#"><%=CategoryDAO.getAllCategory().get(i).getCategoryName()%></a></li>
									</ul> <%
 	}
 %>
								</li>
							</ul></li>
						<li><a href="index.jsp"><i class="fa fa-list-alt"
								aria-hidden="true"></i> Điều khoản</a></li>

						<li><a href="index.jsp"><i class="fa fa-phone"
								aria-hidden="true"></i> Liên hệ</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="	fa fa-child">Chọn Tuổi</i></a>
							<ul class="dropdown-menu">
								<li><a href="ageDown.jsp"><i class="fa fa-venus-double"
										style="color: blue;"></i> 18</a></li>
								<li><a href="ageUp.jsp"><i class="fa fa-mars-double"
										style="color: red"></i> 18+</a></li>

							</ul></li>

					</ul>

					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="fa fa-address-book"
								style="font-size: 24px; color: blue"></i></a>
							<ul class="dropdown-menu">
								<li><a href="login.jsp"><i class="icon-arrow-right"></i>
										Đăng Nhập</a></li>
								<li><a href="register.jsp"><i class="icon-refresh"></i>
										Đăng Ký</a></li>
								<li><a href="user.jsp"><i class="	fa fa-address-card"
										style="color: green;"></i>Trang User</a></li>
								<li><a href="cart.jsp"><i class="fa fa-shopping-cart"
										style="color: red;"></i> Cart</a></li>
								<li><a href="dangtruyen.jsp"><i
										class="fa fa-address-card-o" style="color: green;"></i> Đăng
										truyện</a></li>
							</ul></li>

					</ul>

					<div class="navbar-search form-search pull-right">
						<script src="<%=request.getContextPath()%>/js/searchbook.js"></script>
						<ul class="nav top-menu">
							<li class="search-wrap">
								<div class="input-append"
									style="position: relative; display: inline-block;">
									<input type="text" id="search" class="input_search span2"
										placeholder="Nhập tên truyện" autocomplete="off" />
									<button class="btn" type="submit" value="">
										<i class="icon-search"></i>
									</button>
									<div id="search-popup">
										<ul id="search-list-customer"></ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>