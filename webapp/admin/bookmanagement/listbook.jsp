<%@page import="entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
	}
	List<Book> list = (List<Book>) request.getAttribute("list");
	int currentPage = (int) request.getAttribute("currentPage");
	long pageSize = (long) request.getAttribute("pageSize");
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Quản lý Truyện" name="title" />
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
					<h3 class="page-title">
						<small> Quản lý </small> Truyện
					</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý truyện</a><span class="divider-last">&nbsp;</span></li>
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Danh sách truyện
							</h4>
						</div>
						<div class="widget-body">
							<div class="portlet-body">
								<div class="clearfix">
									<div class="btn-group">
										<a href="<%=request.getContextPath()%>/admin/book/insertform">
											<button class="btn green">
												Thêm mới <i class="icon-plus"></i>
											</button>
										</a>
									</div>
								</div>
								<div class="space15"></div>
								<div class="span10">
									<div class="inner">
										<ul class="thumbnails">
											<%
												for (Book book : list) {
											%>
											<li class="span2"><a href="#" class="thumbnail"
												target="_blank"> <img alt="image" width="160"
													height="210"
													src="<%=request.getContextPath() + book.getLinkImg()%>">
											</a>
												<div class="caption">
													<a href="#" target="_blank"> <abbr
														title="<%=book.getBookName()%>"><h2><%=book.getBookName()%></h2></abbr>
														<i class="icon-star-empty star"></i> <span
														class="label label-warning">Số chương <%=book.getChapters().size()%></span>
													</a>
												</div></li>
											<%
												}
											%>
										</ul>
									</div>
								</div>
								<div class="row-fluid">
									<div class="span6 btn-group">
										<div class="center ">
											<ol class="pagination">
												<li class="btn<%=currentPage == 1 ? " disabled" : ""%>"><a
													href="<%=request.getContextPath()%>/admin/book/1"> <span><i
															class="icon-arrow-left"></i> Đầu tiên</span>
												</a></li>
												<%
													for (int i = 1; i <= pageSize; i++) {
														if (currentPage == i) {
												%>
												<li class="btn btn-primary"><%=i%></li>
												<%
													} else {
												%>
												<li class="btn"><a
													href="<%=request.getContextPath()%>/admin/book/<%=i%>"><span><%=i%></span></a></li>
												<%
													}
													}
												%>
												<li
													class="btn<%=currentPage == pageSize ? " disabled" : ""%>"><a
													href="<%=request.getContextPath()%>/admin/book/<%=pageSize%>"><span>Cuối
															cùng <i class="icon-arrow-right"></i>
													</span> </a></li>
											</ol>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>