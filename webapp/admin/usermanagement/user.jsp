<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="entity.Accounts"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
	}
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Quản lý Người dùng" name="title" />
</jsp:include>
<link href="<%=request.getContextPath()%>/css/usermanagement.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/font-awesome.min.css"
	rel="stylesheet" />
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
					<h3 class="page-title">Quản lý User</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý</a> <span class="divider">&nbsp;</span></li>
						<li><a href="#">Quản lý User</a><span class="divider-last">&nbsp;</span></li>
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Danh sách user
							</h4>
						</div>
						<div class="widget-body">
							<div class="portlet-body">
								<div class="clearfix">
									<div class="btn-group">
										<a
											href="<%=request.getContextPath()%>/admin/user/insertform/user">
											<button class="btn">
												Thêm mới <i class="icon-plus"></i>
											</button>
										</a>
									</div>
								</div>
								<br>
								<%
									List<Accounts> list = (List<Accounts>) request.getAttribute("list");
									int currentPage = (Integer) request.getAttribute("currentPage");
									request.setAttribute("currentPage", currentPage);
									long pageSize = (long) request.getAttribute("pageSize");
									request.setAttribute("object", "user");
									if (list != null && list.size() > 0) {
								%>
								<div class="space15"></div>
								<div class="panel-body">
									<table class="table table-hover table-responsive">
										<thead>
											<tr class="row" align="justify">
												<th align="left">STT</th>
												<th align="center">Mã</th>
												<th align="center">Hình ảnh</th>
												<th align="center">Tên người dùng</th>
												<th align="center">Email</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (int i = 0; i < list.size(); i++) {
											%>
											<tr class="row">
												<td><%=i + 1 + (12 * (currentPage - 1))%></td>
												<td>00<%=list.get(i).getAccountId()%></td>
												<%
													String linkImg = list.get(i).getLinkImg();
															boolean gender = list.get(i).getGender();
															if (linkImg == null || "".equals(linkImg))
																linkImg = (gender) ? "/img/woman.png" : "/img/men.png";
												%>
												<td><img class="img-administrator img-circle"
													alt="user figure"
													src="<%=request.getContextPath() + linkImg%>"></td>
												<td><%=list.get(i).getName()%></td>
												<td><%=list.get(i).getEmail()%></td>
												<%
													String icon = (list.get(i).getIsLock() == true)
																	? "<a class=\"btn btn-danger\" href=\"" + request.getContextPath()
																			+ "/admin/user/lock/user/" + list.get(i).getAccountId()
																			+ "\"><i class=\"icon-lock\"></i></a>"
																	: "<a class=\"btn btn-success\" href=\"" + request.getContextPath()
																			+ "/admin/user/lock/user/" + list.get(i).getAccountId()
																			+ "\"><i class=\"icon-unlock\"></i></a>";
												%>
												<td><a class="btn"
													href="<%=request.getContextPath()%>/admin/user/profile/<%=list.get(i).getAccountId()%>"><i
														class="icon-credit-card"></i> </a> <a class="btn"
													href="<%=request.getContextPath()%>/admin/user/edit/user/<%=list.get(i).getAccountId()%>"><i
														class="icon-edit"></i></a> <a class="btn"
													href="<%=request.getContextPath()%>/admin/user/delete/user/<%=list.get(i).getAccountId()%>"><i
														class="icon-trash"></i></a> <%=icon%></td>
											</tr>
											<%
												}
											%>
										</tbody>

									</table>
								</div>
								<div class="row-fluid">
									<div class="span6">
										<div class="text-center pagination">
											<ol class="btn-group">
												<li class="btn<%=currentPage == 1 ? " disabled" : ""%>"><a
													href="<%=request.getContextPath()%>/admin/user/user/1">
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
													href="<%=request.getContextPath()%>/admin/user/user/<%=i%>"><span><%=i%></span></a></li>
												<%
													}
														}
												%>
												<li
													class="btn<%=currentPage == pageSize ? " disabled" : ""%>"><a
													href="<%=request.getContextPath()%>/admin/user/user/<%=pageSize%>"><span>Cuối
															cùng <i class="icon-arrow-right"></i>
													</span></a></li>
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