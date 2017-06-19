<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="<%=request.getContextPath()%>/admin/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<title>Error</title>
</head>
<style>
body {
	/* 	background: rgb(240, 240, 240); */
	margin: auto;
}

a {
	text-decoration: none;
	color: infotext;
}

a:hover {
	color: blue;
}
</style>
<body>
	<%
		int currentPage = 1;
		if (request.getAttribute("page") != null)
			currentPage = (Integer) request.getAttribute("page");
		request.setAttribute("currentPage", currentPage);
	%>
	<div style="margin: 20px 50px;">
		<a href="<%=request.getContextPath()%>/admin/index"><span
			style="font-size: 32px;">Book Store | Admin</span></a>
	</div>
	<hr>
	<div style="width: 450px; height: 320px; margin: 60px auto;">
		<p align="center"
			style="color: red; font-size: 70px; line-spacing: 15px;">Error
		<p>
		<p>
			<%
				if (request.getAttribute("error") != null)
					out.print(request.getAttribute("error"));
			%>
		</p>
		<div class="clearfix"></div>
		<p align="center">
			<a class=""
				<%if (request.getAttribute("link") != null)
				out.print("href=\"" + request.getContextPath() + "/" + request.getAttribute("link") + "\"");%>><button
					class="btn btn-warning">Back</button></a>
		</p>
	</div>
	<script
		src="<%=request.getContextPath()%>/admin/js/jquery-1.8.2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/admin/assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>