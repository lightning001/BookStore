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
	int currentPage = 1;
	List<Category> listCategory = (List<Category>) request.getAttribute("listCategory");
	List<Author> listAuthor = (List<Author>) request.getAttribute("listAuthor");
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Thêm truyện" name="title" />
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
					<h3 class="page-title">Thêm truyện</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý truyện</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Thêm truyện</a><span class="divider-last">&nbsp;</span></li>
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget box blue">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Form thêm truyện
							</h4>
						</div>
						<div class="widget-body form">
							<form enctype="multipart/form-data" method="post"
								class="form-horizontal"
								action="<%=request.getContextPath()%>/admin/book/insert">
								<div class="form-wizard">
									<div class="control-group">
										<label class="control-label">Tên truyện</label> <input
											type="text" maxlength="200" class="span6" name="bookName"
											placeholder="Nhập tên truyện" required>
									</div>
									<div class="control-group">
										<label class="control-label">Độ tuổi</label> <input
											type="number" min="1" class="span6" name="age"
											placeholder="Nhập độ tuổi">
									</div>
									<div class="control-group">
										<label class="control-label">Thể loại</label>
										<div class="controls">
											<select data-placeholder="Các thể loại" class="chosen span6"
												multiple tabindex="-1" name="categories">
												<%
													for (Category c : listCategory) {
												%>
												<option value="<%=c.getCategoryId()%>"><%=c.getCategoryName()%></option>
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
												%>
												<option value="<%=c.getAccountId()%>"><%=c.getAuthorName()%></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">Giới thiệu</label>
										<textarea rows="5" class="span6" name="introduction"></textarea>
									</div>
									<div class="control-group">
										<label class="control-label">Giá</label> <input type="number"
											min="0" class="span6" name="price" placeholder="Nhập giá"
											required>
									</div>

									<div class="control-group">
										<label class="control-label">Ảnh bìa</label>

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
											href="<%=request.getContextPath()%>/admin/book/<%=currentPage%>">
											<button class="btn btn-default" type="button">
												<i class="icon-angle-left"></i> Trở về
											</button>
										</a>
										<button type="reset" class="btn btn-default">Nhập lại</button>
										<button type="submit" class="btn btn-success button-submit">
											Thêm truyện <i class="icon-ok"></i>
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
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/admin/assets/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
	<script type="text/javascript">
		var config = {
			'.chosen-select' : {},
			'.chosen-select-deselect' : {
				allow_single_deselect : true
			},
			'.chosen-select-no-single' : {
				disable_search_threshold : 10
			},
			'.chosen-select-no-results' : {
				no_results_text : 'Oops, nothing found!'
			},
			'.chosen-select-width' : {
				width : "100%"
			}
		}
		for ( var selector in config) {
			$(selector).chosen(config[selector]);
		}
	</script>
	<script type="text/javascript">
		$("#file-choose").change(function() {
			document.getElementById('filePath').innerHTML = $(this).val();
		});
	</script>
</body>
</html>