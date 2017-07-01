<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entity.Statistic"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("adminaccount") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/Login.jsp");
	} else {
		Statistic statistic = (Statistic) request.getAttribute("statistic");
		List<Statistic> list = (List<Statistic>) request.getAttribute("list");
%>
<jsp:include page="header.jsp">
	<jsp:param value="Trang chủ" name="title" />
</jsp:include>
<body class="fixed-top">
	<jsp:include page="sidebar.jsp"></jsp:include>
	<div id="main-content">
		<div class="container-fluid">
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
					<h3 class="page-title">Thống kê</h3>
					<ul class="breadcrumb">
						<li><a href="<%=request.getContextPath()%>/admin/index"><i
								class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
						<li><a href="#">Thống kê</a> <span class="divider-last">&nbsp;</span></li>
					</ul>
				</div>
			</div>

			<div id="page" class="dashboard">
				<div class="row-fluid circle-state-overview">
					<%
						if (statistic != null) {
					%>
					<div class="span2 responsive" data-tablet="span3"
						data-desktop="span2">
						<div class="circle-stat block">
							<div class="visual">
								<div class="circle-state-icon">
									<i class="icon-user turquoise-color" aria-hidden="true"></i>
								</div>
								<input class="knob" data-width="100" data-height="100"
									data-displayPrevious=true data-thickness=".2" value="35"
									data-fgColor="#4CC5CD" data-bgColor="#ddd">
							</div>
							<div class="details">
								<div class="number"><%=statistic.getCreateaccount()%></div>
								<div class="title">New Users</div>
							</div>

						</div>
					</div>
					<div class="span2 responsive" data-tablet="span3"
						data-desktop="span2">
						<div class="circle-stat block">
							<div class="visual">
								<div class="circle-state-icon">
									<i class="icon-book purple-color" aria-hidden="true"></i>
								</div>
								<input class="knob" data-width="100" data-height="100"
									data-displayPrevious=true data-thickness=".2" value="30"
									data-fgColor="#b677ea" data-bgColor="#ddd" />
							</div>
							<div class="details">
								<div class="number"><%=statistic.getWritebook()%></div>
								<div class="title">Write Book</div>
							</div>

						</div>
					</div>
					<div class="span2 responsive" data-tablet="span3"
						data-desktop="span2">
						<div class="circle-stat block">
							<div class="visual">
								<div class="circle-state-icon">
									<i class="icon-columns gray-color" aria-hidden="true"></i>
								</div>
								<input class="knob" data-width="100" data-height="100"
									data-displayPrevious=true data-thickness=".2" value="30"
									data-fgColor="#a6a8a8" data-bgColor="#ddd" />
							</div>
							<div class="details">
								<div class="number"><%=statistic.getWritechapter()%></div>
								<div class="title">Write Chapter</div>
							</div>

						</div>
					</div>
					<div class="span2 responsive" data-tablet="span3"
						data-desktop="span2">
						<div class="circle-stat block">
							<div class="visual">
								<div class="circle-state-icon">
									<i class="icon-eye-open red-color" aria-hidden="true"></i>
								</div>
								<input class="knob" data-width="100" data-height="100"
									data-displayPrevious=true data-thickness=".2" value="30"
									data-fgColor="#fb040b" data-bgColor="#ddd" />
							</div>
							<div class="details">
								<div class="number"><%=statistic.getReadbook()%></div>
								<div class="title">Read</div>
							</div>

						</div>
					</div>
					<div class="span2 responsive" data-tablet="span3"
						data-desktop="span2">
						<div class="circle-stat block">
							<div class="visual">
								<div class="circle-state-icon">
									<i class="icon-thumbs-up blue-color" aria-hidden="true"></i>
								</div>
								<input class="knob" data-width="100" data-height="100"
									data-displayPrevious=true data-thickness=".2" value="30"
									data-fgColor="#5ca3f8" data-bgColor="#ddd" />
							</div>
							<div class="details">
								<div class="number"><%=statistic.getLikebook()%></div>
								<div class="title">Like</div>
							</div>
						</div>
					</div>
					<div class="span2 responsive" data-tablet="span3"
						data-desktop="span2">
						<div class="circle-stat block">
							<div class="visual">
								<div class="circle-state-icon">
									<i class="icon-money green-color" aria-hidden="true"></i>
								</div>
								<input class="knob" data-width="100" data-height="100"
									data-displayPrevious=true data-thickness=".2" value="30"
									data-fgColor="#5aed56" data-bgColor="#ddd" />
							</div>
							<div class="details">
								<div class="number"><%=statistic.getExchanges()%></div>
								<div class="title">Exchanges</div>
							</div>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>
			<%
				if (list != null && list.size() > 0) {
			%>
			<div class="row-fluid">
				<div class="span12 responsive">
					<!-- BEGIN DYNAMIC CHART PORTLET-->
					<div class="widget">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Thống kê
							</h4>
						</div>
						<div class="widget-body">
							<div class="chart" style="padding: 0px; position: relative;">
								<canvas id="chart_statistic" width="650" height="190"
									style="display: block;"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript"
				src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
			<script>
				var config_newuser = {
					type : 'line',
					data :
			<%=Statistic.createChart(list)%>
				,
					options : {
						responsive : true,
						title : {
							display : true,
							text : 'Thống kê truyện trong 6 tháng'
						},
						tooltips : {
							mode : 'index',
							intersect : false,
						},
						hover : {
							mode : 'nearest',
							intersect : true
						},

					}
				};

				window.onload = function() {
					var context_newuser = document.getElementById(
							"chart_statistic").getContext("2d");
					window.myLine1 = new Chart(context_newuser, config_newuser);

				};
			</script>

			<%
				}
					List<Statistic> listAll = new ArrayList<Statistic>();
					if (request.getAttribute("all") != null) {
						listAll = (List<Statistic>) request.getAttribute("all");
					}
			%>
			<div class="row-fluid">
				<div class="span12 responsive">
					<div class="widget">
						<div class="widget-title">
							<h4>
								<i class="icon-reorder"></i> Thống kê toàn bộ
							</h4>
						</div>
						<div class="widget-body">
							<div class="span8">
								<div class="span4">
									<label class="control-label">Thời gian bắt đầu</label>
									<div class="controls" tabindex="1">
										<select class="input-medium m-wrap" name="timestart"
											id="start">
											<%
														for (Statistic st : listAll) {
													%>
											<option value="<%=st.getMonth() + "/" + st.getYear()%>"><%=st.getMonth() + "/" + st.getYear()%></option>
											<%
														}
													%>
										</select>
									</div>
								</div>
								<div class="span4">
									<label class="control-label">Thời gian kết thúc</label>
									<div class="controls" tabindex="4">
										<select class="input-medium m-wrap" name="timestop" id="stop">
											<%
														for (Statistic st : listAll) {
													%>
											<option value="<%=st.getMonth() + "/" + st.getYear()%>"><%=st.getMonth() + "/" + st.getYear()%></option>

											<%
														}
													%>
										</select>
									</div>
								</div>
							</div>

							<table class="table table-triped">
								<thead>
									<tr>
										<th>STT</th>
										<th>Thời gian</th>
										<th>New User</th>
										<th>Write Book</th>
										<th>Write Chapter</th>
										<th>Read</th>
										<th>Like</th>
										<th>Exchange</th>
									</tr>
								</thead>
								<tbody id="table_body">
									<%
										int count = 1;
											for (Statistic st : listAll) {
									%>
									<tr>
										<td><%=count%></td>
										<td><%=st.getMonth() + "/" + st.getYear()%></td>
										<td><%=st.getCreateaccount()%></td>
										<td><%=st.getWritebook()%></td>
										<td><%=st.getWritechapter()%></td>
										<td><%=st.getReadbook()%></td>
										<td><%=st.getLikebook()%></td>
										<td><%=st.getExchanges()%></td>
									</tr>
									<%
										count++;
											}
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
			document.addEventListener('change',function() {
			    document.querySelector('select[name="timestart"]').onchange=changeEventHandlerStart;
			},false);

			function changeEventHandlerStart(event) {
				var e = document.getElementById("stop");
				var st = e.options[e.selectedIndex].value;
				$.post('<%=request.getContextPath()%>/changedstatistic',
						{
							start :event.target.value,
							stop : st
						},
					function(data, status) {
						document.getElementById('table_body').innerHTML = data;
					});
			}
			
			document.addEventListener('change',function() {
			    document.querySelector('select[name="timestop"]').onchange=changeEventHandlerStop;
			},false);

			function changeEventHandlerStop(event) {
				var e = document.getElementById("start");
				var st = e.options[e.selectedIndex].value;
				$.post('<%=request.getContextPath()%>/changedstatistic',
						{
							stop :event.target.value,
							start : st
						},
					function(data, status) {
						document.getElementById('table_body').innerHTML = data;
					});
			}
			</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%
	}
%>
