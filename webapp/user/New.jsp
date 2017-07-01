<%@page import="java.util.List"%>
<%@page import="entity.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>đăng truyện mới</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/yamm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/chosen.css" rel="stylesheet">
<link rel="icon" type="image/png" href="img/favicon.png" />
<link href="https://plus.google.com/103281900225927837176/" rel="author">
<script src="js/jquery-1.12.4.js"></script>
<script src="js/chosen.jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/csrf.js"></script>
<script src="https://cdn.ckeditor.com/4.7.0/standard/ckeditor.js"></script>
<style>
body {
	padding-top: 60px;
	padding-bottom: 40px;
	height: auto;
}
</style>
<script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-37191528-1']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();
    </script>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">

		<div id="contanier">
			<!--U1AHEADER1Z-->
			<div id="top_page">
				<div id="main_top"></div>
			</div>
			<div id="logoBlock"></div>
			<!--/U1AHEADER1Z-->
		</div>
		<div id="contentforum">
			<div id="ndchinh">
				<div itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"
					style="float: left;">
					<a itemprop="url" class="fNavLink" title="Đọc Truyện"
						href="http://kenhtruyen.com/"><span itemprop="title">Trang
							chủ</span></a> »
				</div>
				<div itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
					<a itemprop="url" class="fNavLink chuxl"
						href="/news/0-0-0-0-1?lV4Qi3" title="Đăng Truyện Ngắn Mới"><span
						itemprop="title">Đăng Truyện Mới</span></a>
				</div>

				<div class="canhgiua chudo">
					<h1>Đăng Truyện Mới</h1>
				</div>
				<br> <br>
				<div class="canhgiua"></div>
				<div class="bodychinh">
					<style>
form#addEntForm span[id*="iCode"] {
	background: #fff;
}

form#addEntForm span[id*="gbut"] {
	background: #fff url('/.s/src/moder_panel/moder.png') no-repeat -20px
		-20px;
}
</style>
					<form method="POST" id="addEntForm" name="addform" action="<%=request.getContextPath()%>/dangtruyen"
						style="margin: 0px" onsubmit="openery(); return false;">
						<input type="hidden" name="jkd498" value="1"> <input
							type="hidden" name="jkd428" value="1">
						<table border="0" width="100%" cellspacing="1" cellpadding="2"
							class="manTable" id="nwM16">
							<tbody>
								<tr id="nwM28">
									<td class="manTd1">Chuyên Mục:</td>
									<td class="manTd2"><select name="cat">
									<% List<Category> cates = CategoryDAO.getAllCategory();
									for(int i = 0; i< cates.size() ; i++ ){
									%>
											<option value="<%= cates.get(i).getCategoryId() %>"><%= cates.get(i).getCategoryName() %></option>
											<%} %>
									</select></td>
								</tr>
								<tr id="nwM17">
									<td class="manTd1" id="nwM18">Tên Truyện <font color="red">*</font>:
									</td>
									<td class="manTd2" id="nwM19"><input id="nwF1" type="text"
										class="manFlTitle" size="35" name="bookName" maxlength="140"></td>
								</tr>


								<tr id="nwM22">
									<td colspan="2" class="manTdText" id="nwM23"><div
											id="txtPart555message">
											<script type="text/javascript" src="/.s/src/bbcodes.js?2"></script>
											<div style="padding-bottom: 3px;">
												Nội Dung Truyện:
											</div>
											<div>
												<textarea name="introduction" id="editor1" rows="100" cols="80">
                    This is my textarea to be replaced with CKEditor.
                </textarea>
												<script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace('editor1');
                </script>
											
										</div></td>
								</tr>

								<tr id="nwM33">
									<td class="manTd1" id="nwM34">Entry date:</td>
									<td class="manTd2" id="nwM35">Thứ 4, 14/06/2017, 17:16</td>
								</tr>


								<tr id="nwM61">
									<td class="manTd1" id="nwM62">URL Ảnh Bìa Truyện :</td>
									<td class="manTd2" id="nwM63"><input id="nwF13"
										class="manFlOth1" name="other1" maxlength="150" type="text"
										size="35"></td>
								</tr>
								<tr id="nwM64">
									<td class="manTd1" id="nwM65">Tuổi:</td>
									<td class="manTd2" id="nwM66"><input id="nwF14"
										class="manFlOth2" name="age" maxlength="150" type="text"
										size="35"></td>
								</tr>
								<tr id="nwM64">
									<td class="manTd1" id="nwM65">Giá bán:</td>
									<td class="manTd2" id="nwM66"><input id="nwF14"
										class="manFlOth2" name="price" maxlength="150" type="text"
										size="35"></td>
								</tr>


								<tr>
									<td height="10" class="manTdSep" colspan="2"><hr
											class="manHr"></td>
								</tr>
								<tr id="sbsctr">
									<td class="manTd1">Cài Đặt Cá Nhân:</td>
									<td class="manTd2"><label><input type="checkbox"
											id="sbsc" name="sbcr" value="1"> Receive
											notifications about comments</label></td>
								</tr>


							</tbody>
						</table>

						<center>
							<input type="submit" style="display: none;" id="doSmbBt"><input
								type="button" class="manFlSbm" id="nwF7"
								style="font-weight: bold;" value="Add"
								onclick="document.getElementById('doSmbBt').click();"> <input
								class="manFlRst" type="reset" id="nwF10" value="Clear"
								onclick="">
						</center>
						<input type="hidden" name="a" value="2"> <input
							type="hidden" name="ssid" value="qyXE49Io">
					</form>
					<br>

				</div>
				<script> var exittraffic_splashalertmessage = "Bạn đã xem hết trang web chưa!";</script>
				<script type="text/javascript"> var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1; var is_firefox = navigator.userAgent.toLowerCase().indexOf('firefox') > -1; function DisableExitTraffic() { PreventExitSplash = true; } function addLoadEvent(func) { var oldonload = window.onload; if (typeof window.onload != 'function') { window.onload = func; } else { window.onload = function() { if (oldonload) { oldonload(); } func(); } } } function addClickEvent(a, i, func) { if (typeof a[i].onclick != 'function') { a[i].onclick = func; } } theBody = document.body; if (!theBody) { theBody = document.getElementById("body"); if (!theBody) { theBody = document.getElementsByTagName("body")[0]; } } var PreventExitSplash = false; var LightwindowOpening = false; function DisplayExitSplash() { if (PreventExitSplash == false) { window.scrollTo(0, 0); if (is_firefox) { } PreventExitSplash = true; if (is_chrome||is_firefox) { timeout_variable = setTimeout("exittraffic_change_url();", 1000); } else { document.location.href = exittraffic_RedirectUrl; } return exittraffic_splashalertmessage; } } var a = document.getElementsByTagName('A'); for (var i = 0; i< a.length; i++) { if (a[i].target !== '_blank') { addClickEvent(a, i, function() { PreventExitSplash = true; }); } else { addClickEvent(a, i, function() { PreventExitSplash = false; }); } } disablelinksfunc = function() { var a = document.getElementsByTagName('A'); for (var i = 0; i< a.length; i++) { if (a[i].target !== '_blank') { addClickEvent(a, i, function() { PreventExitSplash = true; }); } else { addClickEvent(a, i, function() { PreventExitSplash = false; }); } } } addLoadEvent(disablelinksfunc); disableformsfunc = function() { // Makes that clicking on the links on the page will not cause this popup to appear var f = document.getElementsByTagName('form'); for (var i = 0; i< f.length; i++) { if (!f[i].onclick) { f[i].onclick = function() { if (LightwindowOpening == false) { PreventExitSplash = true; } } } else if (!f[i].onsubmit) { f[i].onsubmit = function() { PreventExitSplash = true; } } } } function exittraffic_change_url() { disable_confirmation = false; clearTimeout(timeout_variable); // just to make sure document.location.href=exittraffic_RedirectUrl; } addLoadEvent(disableformsfunc); window.onbeforeunload = DisplayExitSplash;</script>
				<b>Chú Ý :&nbsp;</b>
				<div>
					<b>+ Truyện sau khi bấm<span style="color: rgb(0, 0, 205);">Add</span>
						phải chờ Ban Quản Trị<span style="color: rgb(148, 0, 211);">xét
							duyệt</span> thì mới hiển thị lên Trang Chủ. Vì vậy,&nbsp;<span
						style="color: rgb(255, 20, 147);">Mỗi Truyện chỉ bấm Add 1
							lần duy nhất</span>, rồi chờ thời gian để admin duyệt. Đừng Bấm Add
						nhiều lần cho cùng 1 truyện.<br></b>
					<div>
						<br>
					</div>
				</div>

				<div id="binhluanfb" class="nennoibat2"></div>
				<br>
			</div>

		</div>
		<!--U1BFOOTER1Z-->



	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>