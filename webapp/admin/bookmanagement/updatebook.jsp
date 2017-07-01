<%@page import="entity.Accounts"%>
<%@page import="entity.Book"%>
<%@page import="entity.Author"%>
<%@page import="entity.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/Login.jsp");
		return;
	}
	int currentPage = request.getAttribute("currentPage") != null
			? (int) request.getAttribute("currentPage")
			: 1;
	List<Category> listCategory = (List<Category>) request.getAttribute("listCategory");
	List<Author> listAuthor = (List<Author>) request.getAttribute("listAuthor");
	Book book = (Book) request.getAttribute("book");
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Sửa truyện" name="title" />
</jsp:include>
<link href="<%=request.getContextPath()%>/css/usermanagement.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/admin/assets/chosen-bootstrap/chosen/chosen.css" />
<body class="fixed-top">
	<jsp:include page="../sidebar.jsp"></jsp:include>
	<div id="main-content">
		<!-- BEGIN PAGE CONTAINER-->
		<div class="container-fluid">
			<!-- BEGIN PAGE HEADER-->
			<div class="row-fluid">
				<div class="span12">
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
					<h3 class="page-title">Sửa truyện</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý</a> <span class="divider">&nbsp;</span></li>
						<li><a href="<%=request.getContextPath()%>/admin/book/1">Quản
								lý truyện</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Sửa truyện</a><span class="divider-last">&nbsp;</span></li>
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget box blue">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Form sửa truyện
							</h4>
						</div>
						<%
							if (book != null) {
						%>
						<div class="widget-body form">
							<form enctype="multipart/form-data" method="post"
								class="form-horizontal"
								action="<%=request.getContextPath()%>/admin/book/update">
								<input type="hidden" name="bookId" value="<%=book.getBookId()%>">
								<input type="hidden" name="currentPage" value="<%=currentPage%>">
								<div class="form-wizard">
									<div class="control-group">
										<label class="control-label">Tên truyện</label> <input
											type="text" maxlength="200" class="span6" name="bookName"
											placeholder="Nhập tên truyện" value="<%=book.getBookName()%>"
											required>
									</div>
									<div class="control-group">
										<label class="control-label">Độ tuổi</label> <input
											type="number" min="1" class="span6" name="age"
											placeholder="Nhập độ tuổi" value="<%=book.getAge()%>">
									</div>
									<div class="control-group">
										<label class="control-label">Thể loại</label>
										<div class="controls">
											<select data-placeholder="Các thể loại" class="chosen span6"
												multiple tabindex="-1" name="categories">
												<%
													for (Category c : listCategory) {
															String select = "";
															ab : for (Category ca : book.getCategories()) {
																if (ca.getCategoryId() == c.getCategoryId()) {
																	select = "selected";
																	break ab;
																}
															}
												%>
												<option value="<%=c.getCategoryId()%>" <%=select%>><%=c.getCategoryName()%></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">Tác giả</label>
										<div class="controls">
											<select data-placeholder="Các tác giả" class="chosen span6"
												multiple tabindex="-1" name="authors">
												<%
													for (Author c : listAuthor) {
															String select = "";
															if (book.getBook_author() != null)
																ab : for (Accounts ac : book.getBook_author()) {
																	if (ac.getAccountId() == c.getAccountId()) {
																		select = "selected";
																		break ab;
																	}
																}
												%>
												<option value="<%=c.getAccountId()%>" <%=select%>><%=c.getAuthorName()%></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
									<%
										String intro = book.getIntroduction() != null && !"".equals(book.getIntroduction())
													? book.getIntroduction()
													: "Chưa có giới thiệu";
									%>
									<div class="control-group">
										<label class="control-label">Giới thiệu</label>
										<textarea class="span6" rows="6" name="introduction"><%=intro%></textarea>
									</div>
									<div class="control-group">
										<label class="control-label">Trạng thái </label> <select
											class="span6" name="status">
											<option value="false" <%=!book.getState() ? "selected" : ""%>>On
												going</option>
											<option value="true" <%=book.getState() ? "selected" : ""%>>Complete</option>
										</select>
									</div>
									<%
										String country = book.getCountry() != null ? book.getCountry() : "";
									%>
									<div class="control-group">
										<label class="control-label">Quốc gia</label> <input
											type="text" maxlength="50" class="span6" name="country"
											placeholder="Nhập quốc gia" value="<%=country%>">
									</div>
									<div class="control-group">
										<label class="control-label">Giá</label> <input type="number"
											min="0" class="span6" name="price" placeholder="Nhập giá"
											value="<%=book.getPrice()%>" required>
									</div>

									<div class="control-group">
										<label class="control-label">Ảnh bìa</label>

										<div id="filePath"></div>
										<div class="span4">
											<img src="<%=request.getContextPath()+book.getLinkImg()%>"
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
											href="<%=request.getContextPath()%>/admin/book/<%=currentPage%>">
											<button class="btn btn-default" type="button">
												<i class="icon-angle-left"></i> Trở về
											</button>
										</a>
										<button type="reset" class="btn btn-default">Nhập lại</button>
										<button type="submit" class="btn btn-success button-submit">
											Lưu chỉnh sửa<i class="icon-save"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/admin/assets/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
	<script type="text/javascript">
		$("#file-choose").change(function() {
			document.getElementById('filePath').innerHTML = $(this).val();
		});
	</script>
</body>
</html>