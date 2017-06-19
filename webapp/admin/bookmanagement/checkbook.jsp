<%@page import="entity.Accounts"%>
<%@page import="entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
	}
	List<Book> list = (List<Book>) request.getAttribute("list");
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Kiểm duyệt truyện" name="title" />
</jsp:include>
<link href="<%=request.getContextPath()%>/css/usermanagement.css"
	rel="stylesheet">
<body class="fixed-top">
	<jsp:include page="../sidebar.jsp"></jsp:include>
	<div id="main-content">
		<!-- BEGIN PAGE CONTAINER-->
		<div class="container-fluid">
			<!-- BEGIN PAGE HEADER-->
			<div class="row-fluid">
				<div class="span12">
					<!-- BEGIN THEME CUSTOMIZER-->
					<div id="theme-change" class="hidden-phone">
						<i class="icon-cogs"></i> <span class="settings"> <span
							class="text">Theme:</span> <span class="colors"> <span
								class="color-default" data-style="default"></span> <span
								class="color-gray" data-style="gray"></span> <span
								class="color-purple" data-style="purple"></span> <span
								class="color-navy-blue" data-style="navy-blue"></span>
						</span>
						</span>
					</div>
					<!-- END THEME CUSTOMIZER-->
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">Kiểm duyệt truyện</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="<%=request.getContextPath()%>/admin/book/1">Quản
								lý</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Kiểm duyệt truyện</a><span
							class="divider-last">&nbsp;</span></li>
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Danh sách truyện chưa duyệt
							</h4>
						</div>
						<div class="widget-body">
							<%
								int count = 0;
								for (Book book : list) {
									if (count % 4 == 0) {
							%>
							<div class="row-fluid">
								<%
									}
								%>
								<div class="span3">
									<div class="widget">
										<div class="widget-title">
											<%
												String titles = (book.getBookName() != null && book.getBookName().length() > 20)
															? book.getBookName().substring(0, 18) + "..." : book.getBookName();
											%>


											<h4 data-placement="bottom" title="<%=book.getBookName()%>">
												<%=titles%>
											</h4>
											<span class="tools"><a
												href="<%=request.getContextPath()%>/admin/book/checkbook/<%=book.getBookId()%>"
												class="icon-ok red-color"></a> </span>
										</div>
										<div class="widget-body">
											<%
												StringBuilder bookAuthor = new StringBuilder();
													if (book.getBook_author() != null) {
														for (Accounts author : book.getBook_author()) {
															bookAuthor.append(author.getUsername() + " ");
														}
													}
											%>
											<span> Bởi <a href="#"><%=bookAuthor.toString().trim()%></a>
											</span>
											<div class="thumbnail">
												<img alt="Photo"
													style="max-height: 140px; overflow: hidden; width: auto;"
													src="<%=request.getContextPath() + book.getLinkImg()%>" />
											</div>
										</div>
									</div>
								</div>
								<%
									if (count % 4 == 3) {
								%>
							</div>
							<%
								}
									count++;
								}
							%>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>