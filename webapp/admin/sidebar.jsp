<%@page import="entity.Manager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") != null) {
		Manager manager = (Manager) session.getAttribute("adminaccount");
%>
<div id="header" class="navbar navbar-inverse navbar-fixed-top">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="navbar-inner">
		<div class="container-fluid">
			<!-- BEGIN LOGO -->
			<a class="brand" href="<%=request.getContextPath()%>/admin/index">
				<span>BookStory</span>
			</a>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a class="btn btn-navbar collapsed" id="main_menu_trigger"
				data-toggle="collapse" data-target=".nav-collapse"> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="arrow"></span>
			</a>

			<div class="top-nav navbar-form notify-row">
				<script src="<%=request.getContextPath()%>/js/search.js"></script>
				<ul class="nav top-menu">
					<li class="search-wrap">
						<div class="span4"
							style="position: relative; display: inline-block;">
							<!-- style="position: relative; display: inline-block; margin-top: 10px; margin-bottom: 10px; padding: 0"> -->
							<input type="text" id="search" class="input_search span4"
								placeholder="Nhập nội dung cần tìm" autocomplete="off" />
							<div id="search-popup">
								<ul id="search-list-customer"></ul>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="top-nav ">
				<ul class="nav pull-right top-menu">
					<!-- BEGIN SUPPORT -->
					<li class="dropdown mtop5"><a class="dropdown-toggle element"
						data-placement="bottom" data-toggle="tooltip" href="#"
						data-original-title="Chat"> <i class="icon-comments-alt"></i>
					</a></li>
					<li class="dropdown mtop5"><a class="dropdown-toggle element"
						data-placement="bottom" data-toggle="tooltip" href="#"
						data-original-title="Help"> <i class="icon-headphones"></i>
					</a></li>
					<!-- END SUPPORT -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img
							style="max-height: 30px; max-width: 30px;"
							src="<%=request.getContextPath() + manager.getAccounts().getLinkImg()%>"
							alt=""> <span class="username"><%=manager.getAccounts().getName()%></span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a
								href="<%=request.getContextPath()%>/admin/user/profile/<%=manager.getAccountId()%>"><i
									class="icon-user"></i> My Profile</a></li>
							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
							<li><a href="#"><i class="icon-calendar"></i> Calendar</a></li>
							<li class="divider"></li>
							<li><a href="<%=request.getContextPath()%>/admin/logout"><i
									class="icon-key"></i> Log Out</a></li>
						</ul></li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->
			</div>
		</div>
	</div>
	<!-- END TOP NAVIGATION BAR -->
</div>
<div class="row-fluid">
	<div id="sidebar" class="nav-collapse collapse">
		<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		<div class="sidebar-toggler hidden-phone"></div>
		<ul class="sidebar-menu ">
			<li class="active"><a
				href="<%=request.getContextPath()%>/admin/dashboard" class=""><span
					class="icon-box"><i class="icon-dashboard"></i></span>Thống kê </a></li>
			<li class="has-sub"><a href="javascript:;" class=""> <span
					class="icon-box"><i class="icon-user"></i></span>Quản lý User<span
					class="arrow"></span>
			</a>
				<ul class="sub">
					<li><a class=""
						href="<%=request.getContextPath()%>/admin/user/user/1">Quản lý
							User</a></li>
					<li><a class=""
						href="<%=request.getContextPath()%>/admin/user/author/1">Quản
							lý Author</a></li>
					<%
						if (session.getAttribute("masteraccount") != null) {
					%>
					<li><a class=""
						href="<%=request.getContextPath()%>/admin/user/administrator/1">Quản
							lý Admin</a></li>
					<%
						}
					%>
				</ul></li>
			<li class="has-sub"><a href="javascript:;" class=""><span
					class="icon-box"><i class="icon-book"></i></span>Quản lý truyện<span
					class="arrow"></span></a>
				<ul class="sub">
					<li><a class=""
						href="<%=request.getContextPath()%>/admin/book/1">Danh sách
							truyện</a></li>
					<li><a class=""
						href="<%=request.getContextPath()%>/admin/book/checklist">Kiểm
							duyệt truyện</a></li>
				</ul></li>
			<li><a class=""
				href="<%=request.getContextPath()%>/admin/logout"><span
					class="icon-box"><i class="icon-signout"></i></span> Logout</a></li>
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
</div>
<div class="space15"></div>
<div class="space15"></div>
<div class="space15"></div>
<%
	}
%>