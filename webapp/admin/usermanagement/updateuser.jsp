<%@page import="entity.Manager"%>
<%@page import="entity.Author"%>
<%@page import="entity.Accounts"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
	}
	String object = (String) request.getAttribute("object");
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Sửa user" name="title" />
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
						Sửa
						<%=object.toUpperCase()%>
					</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý <%=object%></a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Sửa <%=object%></a><span class="divider-last">&nbsp;</span></li>
					</ul>
				</div>
			</div>
			<%
				Accounts account = null;
				Manager manager = null;
				Author author = null;
				switch (object) {
				case "user":
					account = (Accounts) request.getAttribute("account");
					break;
				case "author":
					author = (Author) request.getAttribute("account");
					account = author.getAccounts();
					break;
				case "admin":
					manager = (Manager) request.getAttribute("account");
					account = manager.getAccounts();
					break;
				}
				int currentPage = request.getAttribute("currentPage") != null ? (int) request.getAttribute("currentPage")
						: 1;
				if (account != null) {
			%>

			<div class="row-fluid">
				<div class="span12">
					<div class="widget box blue">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Form chỉnh sửa
								<%=object%>
							</h4>
						</div>
						<div class="widget-body form">
							<form enctype="multipart/form-data" method="post"
								class="form-horizontal"
								action="<%=request.getContextPath()%>/admin/user/update/<%=object%>">
								<!-- Modal content-->
								<div class="sr-only">
									<input type="hidden" name="object" value="<%=object%>"
										class="sr-only"> <input type="hidden" name="id"
										value="<%=account.getAccountId()%>" class="sr-only">
								</div>
								<div class="control-group">
									<label class="control-label">Tên người dùng</label> <input
										type="text" class="span6" name="name"
										placeholder="Nhập tên người dùng"
										value="<%=account.getName()%>" required>
								</div>
								<div class="control-group">
									<label class="control-label">Email</label> <input type="email"
										class="span6" name="email" placeholder="Nhập email"
										value="<%=account.getEmail()%>" required>
								</div>
								<div class="control-group">
									<label class="control-label">Giới tính</label>

									<div class="controls">
										<label class="radio"> <input type="radio"
											name="gender" value="false"
											<%=account.getGender() ? "" : "checked"%>> Nam
										</label> &nbsp;&nbsp;<label class="radio"> <input type="radio"
											name="gender" value="true"
											<%=account.getGender() ? "checked" : ""%>> Nữ
										</label>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Khóa tài khoản này? </label>
									<div class="controls">
										<label class="radio"><input type="radio" name="isLock"
											value="true" <%=account.getIsLock() ? "checked" : ""%>>Đồng
											ý</label> &nbsp;&nbsp; <label class="checkbox"> <input
											type="radio" name="isLock" value="false"
											<%=account.getIsLock() ? "checked" : ""%>>Không
										</label>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Số tiền trong tài khoản</label> <input
										type="number" class="span6" name="money"
										placeholder="Nhập số tiền" value="<%=account.getMoney()%>">
								</div>

								<%
									if (author != null) {
								%>
								<div class="control-group">
									<label class="control-label">Bút danh</label> <input
										type="text" class="span6" name="authorName"
										placeholder="Nhập bút danh"
										value="<%=author.getAuthorName()%>" />
								</div>
								<%
									String bio = author.getBiography() != null ? author.getBiography() : "";
								%>
								<div class="control-group">
									<label class="control-label">Tiểu sử</label>
									<textarea class="span6" name="biography"
										placeholder="Nhập tiểu sử"><%=bio%></textarea>
								</div>
								<%
									} else if (manager != null) {
											int level = manager.getAccounts().getLevels();
								%>

								<div class="control-group">
									<label class="control-label">Level</label> <select
										class="span6" name="levels">
										<option value="0" <%=level == 0 ? "selected" : ""%>>User/Author</option>
										<option value="3" <%=level == 3 ? "selected" : ""%>>Publisher</option>
										<option value="2" <%=level == 2 ? "selected" : ""%>>Moderator</option>
										<option value="1" <%=level == 1 ? "selected" : ""%>>Administrator
											Master</option>
									</select>
								</div>
								<%
									} else if (manager == null) {
								%>
								<input type="hidden" name="levels" class="sr-only" value="0">
								<%
									}
								%>
								<div class="control-group">
									<label class="control-label">Ảnh đại diện</label>

									<div id="filePath"></div>
									<div class="span4">
										<img
											src="<%=request.getContextPath() + account.getLinkImg()%>"
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
										href="<%=request.getContextPath()%>/admin/user/<%=object + "/" + currentPage%>">
										<button class="btn btn-default" type="button">
											<i class="icon-angle-left"></i> Trở về
										</button>
									</a>
									<button type="reset" class="btn btn-default">Nhập lại</button>
									<button type="submit" class="btn btn-success button-submit">
										Lưu chỉnh sửa <i class="icon-ok"></i>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>