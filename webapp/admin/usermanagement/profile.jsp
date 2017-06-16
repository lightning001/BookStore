<%@page import="entity.Accounts"%>
<%@page import="entity.Manager"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
	}
%>
<jsp:include page="../header.jsp">
	<jsp:param value="Profile" name="title" />
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
					<h3 class="page-title">Profile</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Profile</a><span class="divider-last">&nbsp;</span></li>
					</ul>
				</div>
			</div>
			<%
				String object = (String) request.getAttribute("object");
				Accounts account = (Accounts) request.getAttribute("account");
			%>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Profile
							</h4>
						</div>
						<div class="widget-body">
							<div class="span3">
								<div class="text-center profile-pic">
									<img class="img-responsive col-md-4 img-thumbnail"
										src="<%=request.getContextPath() + account.getLinkImg()%>"
										alt="profile picture">
								</div>
								<ul class="nav nav-tabs nav-stacked">
									<li><a href="#"><i class="icon-strikethrough"></i> <b>Lịch
												sử giao dịch</b></a></li>
									<li><a href="#"><i class="icon-money"></i><b>Số
												tiền trong tài khoản:</b> <%=account.getMoney()%></a></li>
								</ul>
							</div>
							<div class="span6">
								<h4><%=account.getName()%><br> <small> <%
 	if (account.getLevels() == 0)
 		out.print("User/Author");
 	else if (account.getLevels() == 1)
 		out.print("Administrator Master");
 	else if (account.getLevels() == 2)
 		out.print("Moderator");
 	else if (account.getLevels() == 3)
 		out.print("Publisher");
 %>
									</small>
								</h4>
								<table class="table table-borderless">
									<tbody>
										<tr>
											<td class="span2">Họ và tên :</td>
											<td><%=account.getName()%></td>
										</tr>
										<tr>
											<td class="span2">Giới tính :</td>
											<td><%=account.getGender() ? "Nữ" : "Nam"%></td>
										</tr>
										<tr>
											<td class="span2">Email :</td>
											<td><%=account.getEmail()%></td>
										</tr>
										<tr>
											<td class="span3">Ngày tạo tài khoản :</td>
											<td><%=account.getCreateDate()%></td>
										</tr>
									</tbody>
								</table>

							</div>
							<div class="span3">
								<ul class="nav nav-tabs nav-stacked">
									<li><a href="#"><i class="icon-book"></i> Truyện đã
											mua</a></li>
									<li><a href="#"><i class="icon-book"></i> Truyện đã
											thích</a></li>
									<li><a href="#"><i class="icon-book"></i> Truyện đã
											viết</a></li>
									<li><a href="#"><i class="icon-book"></i> Truyện đang
											theo dõi</a></li>
								</ul>
							</div>
							<div class="space5"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>