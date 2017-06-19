<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
		return;
	}
	String object = (String) request.getAttribute("object");
	if ("admin".equals(object)) {
		if (session.getAttribute("masteraccount") == null) {
			response.sendRedirect(request.getContextPath() + "/admin/index");
		}
	}
	int currentPage = 1;
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Thêm user" name="title" />
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
						Thêm
						<%=object%>
					</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý <%=object%></a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Thêm <%=object%></a><span
							class="divider-last">&nbsp;</span></li>
						<!-- 					<li class="pull-right search-wrap"> -->
						<!-- 						<form class="hidden-phone" action="search_result.html"> -->
						<!-- 							<div class="search-input-area"> -->
						<!-- 								<input id=" " class="search-query" type="text" -->
						<!-- 									placeholder="Search"> <i class="icon-search"></i> -->
						<!-- 							</div> -->
						<!-- 						</form> -->
						<!-- 					</li> -->
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget box blue">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Form thêm
								<%=object%>
							</h4>
						</div>
						<div class="widget-body form">
							<form enctype="multipart/form-data" method="post"
								class="form-horizontal"
								action="<%=request.getContextPath()%>/admin/user/insert/<%=object%>">
								<div class="form-wizard">
									<div class="control-group">
										<label class="control-label">Tên người dùng</label> <input
											type="text" maxlength="100" class="span6" name="name"
											placeholder="Nhập tên người dùng" required>
									</div>
									<div class="control-group">
										<label class="control-label">Tên đăng nhập</label> <input
											type="text" maxlength="30" class="span6" name="username"
											placeholder="Nhập tên đăng nhập" required>
									</div>
									<div class="control-group">
										<label class="control-label">Email</label> <input type="email"
											maxlength="50" class="span6" name="email"
											placeholder="Nhập email" required>
									</div>
									<div class="control-group">
										<label class="control-label">Password</label> <input
											type="password" class="span6" name="password"
											placeholder="Nhập password" maxlength="28" required>
									</div>
									<div class="control-group">
										<label class="control-label">Giới tính</label> <label
											class="radio-inline"> <input type="radio"
											name="gender" value="false" checked> Nam
										</label> <label class="radio-inline"> <input type="radio"
											name="gender" value="true"> Nữ
										</label>
									</div>
									<%
										if ("author".equals(object)) {
									%>
									<div class="control-group">
										<label class="control-label">Bút danh</label> <input
											type="text" class="span6" name="authorName"
											placeholder="Bút danh" maxlength="100">
									</div>
									<div class="control-group">
										<label class="control-label">Tiểu sử</label>
										<textarea class="span6" name="biography" placeholder="Tiểu sử"
											maxlength="2000"></textarea>
									</div>

									<%
										} else if ("admin".equals(object)) {
									%>
									<div class="control-group">
										<label class="control-label">Level</label> <select
											class="span6" name="levels">
											<option value="0">User/Author</option>
											<option value="3">Publisher</option>
											<option value="2">Moderator</option>
											<option value="1">Administrator Master</option>
										</select>
									</div>

									<%
										}
									%>
									<div class="control-group">
										<label class="control-label">Ảnh đại diện</label>

										<div id="filePath"></div>
										<div class="span4">
											<img src="<%=request.getContextPath()%>/img/no_image.png"
												id="img-upload" class="img-responsive img-thumbnail" />
										</div>
										<div class="span6">
											<input type="file" name="linkImg" class="controls"
												id="file-choose">
											<p class="help-block">File thuộc định dạng hình ảnh</p>
										</div>
									</div>
									<div class="form-actions clearfix">
										<a
											<% String tmp = "admin".equals(object)? "administrator" : object; %>
											href="<%=request.getContextPath()%>/admin/user/<%=tmp + "/" + currentPage%>">
											<button class="btn btn-default" type="button">
												<i class="icon-angle-left"></i> Trở về
											</button>
										</a>
										<button type="reset" class="btn btn-default">Nhập lại</button>
										<button type="submit" class="btn btn-success button-submit">
											Thêm
											<%=object%>
											<i class="icon-ok"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
	<script type="text/javascript">
		$("#file-choose").change(function() {
			document.getElementById('filePath').innerHTML = $(this).val();
		});
	</script>
</body>
</html>