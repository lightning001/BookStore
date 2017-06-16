<%@page import="entity.Manager"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
	}
	if(session.getAttribute("masteraccount")==null){
		response.sendRedirect(request.getContextPath() + "/admin/index");
	}
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Quản lý Quản trị viên" name="title" />
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
						<small> Quản lý </small> Admin
					</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý Admin</a><span class="divider-last">&nbsp;</span></li>
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
			<%
				String object = (String) request.getAttribute("object");
				request.setAttribute("object", "admin");
			%>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Danh sách
								<%=object%>
							</h4>
						</div>
						<div class="widget-body">
							<div class="portlet-body">
								<div class="clearfix">
									<div class="btn-group">
										<a
											href="<%=request.getContextPath()%>/admin/user/insertform/admin">
											<button id="sample_editable_1_new" class="btn green">
												Thêm mới <i class="icon-plus"></i>
											</button>
										</a>
									</div>
								</div>
								<br>
								<div class="clearfix">
									<div class="btn-group">
										<a
											href="<%="administrator".equals(object) ? "#" : request.getContextPath() + "/admin/user/administrator/1"%>">
											<button class="btn btn-default">Administrator</button>
										</a> <a
											href="<%="moderator".equals(object) ? "#" : request.getContextPath() + "/admin/user/moderator/1"%>">
											<button class="btn btn-default">Moderator</button>
										</a> <a
											href="<%="publisher".equals(object) ? "#" : request.getContextPath() + "/admin/user/publisher/1"%>">
											<button class="btn btn-default">Publisher</button>
										</a>
									</div>
								</div>
								<div class="space15"></div>
								<%
									List<Manager> list = (List<Manager>) request.getAttribute("list");
									int currentPage = (int) request.getAttribute("currentPage");
									request.setAttribute("currentPage", currentPage);
									long pageSize = (long) request.getAttribute("pageSize");
									if (list != null && list.size() > 0) {
								%>
								<table class="table table-hover">
									<thead>
										<tr class="row" align="justify">
											<th align="left">STT</th>
											<th align="center">Mã</th>
											<th align="center">Hình ảnh</th>
											<th align="center">Tên người dùng</th>
											<th align="center">Email</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<%
											for (int i = 0; i < list.size(); i++) {
										%>
										<tr class="row">
											<td><%=i + 1 + ((currentPage - 1) * i)%></td>
											<td>AM00<%=list.get(i).getAccounts().getAccountId()%></td>
											<td><img class="img-administrator img-circle"
												alt="admin figure" <%String linkImg = "";%>
												src="<%=request.getContextPath() + list.get(i).getAccounts().getLinkImg()%>"></td>
											<td><%=list.get(i).getAccounts().getName()%></td>
											<td><%=list.get(i).getAccounts().getEmail()%></td>
											<%
												String icon = (list.get(i).getAccounts().getIsLock() == true)
																? "<a class=\"btn btn-danger\" href=\"" + request.getContextPath()
																		+ "/admin/user/lock/admin/" + list.get(i).getAccountId()
																		+ "\"><i class=\"icon-lock\"></i></a>"
																: "<a class=\"btn btn-success\" href=\"" + request.getContextPath()
																		+ "/admin/user/lock/admin/" + list.get(i).getAccountId()
																		+ "\"><i class=\"icon-unlock\"></i></a>";
											%>
											<td><a class="btn btn-default"
												href="<%=request.getContextPath()%>/admin/user/profile/<%=list.get(i).getAccounts().getAccountId()%>"><i
													class="icon-credit-card"></i> </a> <a class="btn btn-default"
												href="<%=request.getContextPath()%>/admin/user/edit/admin/<%=list.get(i).getAccountId()%>"><i
													class="icon-edit"></i></a> <a class="btn btn-default"
												href="<%=request.getContextPath()%>/admin/user/delete/admin/<%=list.get(i).getAccountId()%>"><i
													class="icon-trash"></i></a> <%=icon%></td>

										</tr>

										<%
											}
										%>
									</tbody>
								</table>
								<div class="row-fluid">
									<div class="span6 btn-group">
										<div class="center ">
											<ol class="pagination">
												<li class="btn<%=currentPage == 1 ? " disabled" : ""%>"><a
													href="<%=request.getContextPath()%>/admin/user/<%=object%>/1">
														<span><i class="icon-arrow-left"></i> Đầu tiên</span>
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
													href="<%=request.getContextPath()%>/admin/user/<%=object%>/<%=i%>"><span><%=i%></span></a></li>
												<%
													}
														}
												%>
												<li
													class="btn<%=currentPage == pageSize ? " disabled" : ""%>"><a
													href="<%=request.getContextPath()%>/admin/user/<%=object%>/<%=pageSize%>"><span>Cuối
															cùng <i class="icon-arrow-right"></i>
													</span> </a></li>
											</ol>
										</div>
									</div>
								</div>
								<%
									}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>