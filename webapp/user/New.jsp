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
					<div id="main_top">
						
					</div>
				</div>
				<div id="logoBlock">
					
					
				</div>
				<!--/U1AHEADER1Z-->
			</div>
			<div id="contentforum">
				<div id="ndchinh">
					<div id="fb-root" class=" fb_reset">
						<div
							style="position: absolute; top: -10000px; height: 0px; width: 0px;">
							<div>
								<iframe name="fb_xdm_frame_http" frameborder="0"
									allowtransparency="true" allowfullscreen="true" scrolling="no"
									id="fb_xdm_frame_http" aria-hidden="true"
									title="Facebook Cross Domain Communication Frame" tabindex="-1"
									src="http://staticxx.facebook.com/connect/xd_arbiter/r/0F7S7QWJ0Ac.js?version=42#channel=f3e34aef783ff24&amp;origin=http%3A%2F%2Fkenhtruyen.com"
									style="border: none;"></iframe>
								<iframe name="fb_xdm_frame_https" frameborder="0"
									allowtransparency="true" allowfullscreen="true" scrolling="no"
									id="fb_xdm_frame_https" aria-hidden="true"
									title="Facebook Cross Domain Communication Frame" tabindex="-1"
									src="https://staticxx.facebook.com/connect/xd_arbiter/r/0F7S7QWJ0Ac.js?version=42#channel=f3e34aef783ff24&amp;origin=http%3A%2F%2Fkenhtruyen.com"
									style="border: none;"></iframe>
							</div>
						</div>
						<div
							style="position: absolute; top: -10000px; height: 0px; width: 0px;">
							<div></div>
						</div>
					</div>
					<script>(function(d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.7&appId=381662438555019"; fjs.parentNode.insertBefore(js, fjs);}(document, 'script', 'facebook-jssdk'));</script>
					<div itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"
						style="float: left;">
						<a itemprop="url" class="fNavLink" title="Đọc Truyện"
							href="http://kenhtruyen.com/"><span itemprop="title">Trang chủ</span></a> »
					</div>
					<div itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
						<a itemprop="url" class="fNavLink chuxl"
							href="/news/0-0-0-0-1?lV4Qi3" title="Đăng Truyện Ngắn Mới"><span
							itemprop="title">Đăng Truyện Mới</span></a>
					</div>
				
					<div class="canhgiua chudo">
						<h1>Đăng Truyện Mới</h1>
					</div>
					<br>
					
					<br>
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
						<form method="POST" id="addEntForm" name="addform" action="/news"
							style="margin: 0px" onsubmit="openery(); return false;">
							<input type="hidden" name="jkd498" value="1"> <input
								type="hidden" name="jkd428" value="1">
							<table border="0" width="100%" cellspacing="1" cellpadding="2"
								class="manTable" id="nwM16">
								<tbody>
									<tr id="nwM28">
										<td class="manTd1">Chuyên Mục:</td>
										<td class="manTd2"><select name="cat">
												<option value="0">Select category</option>
												<option value="5">Truyện Ngắn</option>
												<option value="9">Truyện Ma</option>
												<option value="3">Truyện Gay</option>
												<option value="4">Truyện Les</option>
												<option value="1">Truyện Teen</option>
												<option value="19">Tiểu Thuyết</option>
												<option value="33">Truyện Hay</option>
												<option value="2">Truyện Cười</option>
												<option value="7">Câu Đố</option>
												<option value="6">Thơ Chế, Thơ Tình</option>
												<option value="26">Truyện 16+, Truyện VOZ</option>
												<option value="29">Thông Báo, Hướng Dẫn, Quy Định</option>
												<option value="34">Truyện Teen Full</option>
												<option value="35">Truyện Gay, Đam Mỹ Full</option>
												<option value="36">Tiểu Thuyết Full</option>
												<option value="37">Kênh Truyện Radio</option>
												<option value="38">Truyện Les, Bách Hợp Full</option>
										</select></td>
									</tr>
									<tr id="nwM17">
										<td class="manTd1" id="nwM18">Tên Truyện <font
											color="red">*</font>:
										</td>
										<td class="manTd2" id="nwM19"><input id="nwF1"
											type="text" class="manFlTitle" size="35" name="title"
											maxlength="140"></td>
									</tr>


									<tr id="nwM22">
										<td colspan="2" class="manTdText" id="nwM23"><div
												id="txtPart555message">
												<script type="text/javascript" src="/.s/src/bbcodes.js?2"></script>
												<div style="padding-bottom: 3px;">
													Nội Dung Truyện: <span class="cut_helper">$CUT$ <a
														href="javascript://" rel="nofollow"
														onclick="new _uWnd('HelpWd','Help',360,150,{align:'justify',closeonesc:1},{url:'/index/90-11'});return false;"
														class="noun"><b>?</b></a></span>
												</div>
												<div style="padding-bottom: 3px">
													<span style="padding-right: 1px;" id="bc1"><input
														type="button" title="Bold" value="b"
														onclick="simpletag('b','','','message','')"
														class="codeButtons" id="b"
														style="width: 20px; font-weight: bold"></span><span
														style="padding-right: 1px;" id="bc2"><input
														type="button" title="Italic" value="i"
														onclick="simpletag('i','','','message','')"
														class="codeButtons" id="i"
														style="width: 20px; font-style: italic"></span><span
														style="padding-right: 1px;" id="bc3"><input
														type="button" title="Underline" value="u"
														onclick="simpletag('u','','','message','')"
														class="codeButtons" id="u"
														style="width: 20px; text-decoration: underline"></span> <span
														style="padding-right: 1px;" id="bc4"> <select
														id="fsize" class="codeButtons"
														onchange="alterfont(this.options[this.selectedIndex].value,'size','message','');this.selectedIndex=0;">
															<option value="0">SIZE</option>
															<option value="6">6 pt</option>
															<option value="7">7 pt</option>
															<option value="8">8 pt</option>
															<option value="9">9 pt</option>
															<option value="10">10 pt</option>
															<option value="11">11 pt</option>
															<option value="12">12 pt</option>
															<option value="13">13 pt</option>
															<option value="14">14 pt</option>
															<option value="15">15 pt</option>
															<option value="16">16 pt</option>
															<option value="17">17 pt</option>
															<option value="18">18 pt</option>
															<option value="19">19 pt</option>
															<option value="20">20 pt</option>
															<option value="21">21 pt</option>
															<option value="22">22 pt</option>
													</select>
													</span><span style="padding-right: 1px;" id="bc6"> <select
														id="fcolor" class="codeButtons"
														onchange="alterfont(this.options[this.selectedIndex].value, 'color','message','');this.selectedIndex=0;">
															<option value="0">COLOR</option>
															<option value="blue" style="color: Blue">Blue</option>
															<option value="red" style="color: Red">Red</option>
															<option value="purple" style="color: Purple">Purple</option>
															<option value="orange" style="color: Orange">Orange</option>
															<option value="yellow" style="color: Yellow">Yellow</option>
															<option value="gray" style="color: Gray">Gray</option>
															<option value="green" style="color: Green">Green</option>
													</select>
													</span><span style="padding-right: 1px;" id="bc7" class=""><input
														type="button" title="URL" value="http://"
														onclick="tag_url('message','')" class="codeButtons"
														style="direction: ltr; width: 45px;" id="url"></span><span
														style="padding-right: 1px;" id="bc8"><input
														type="button" title="E-mail" value="@"
														onclick="tag_email('message','')" class="codeButtons"
														style="width: 30px;" id="email"></span><span
														style="padding-right: 1px;" id="bc9"><input
														type="button" title="Image" value="img"
														onclick="tag_image('message','')" class="codeButtons"
														style="width: 35px;" id="img"></span><span
														style="padding-right: 1px;" id="bc18"><input
														type="button" title="Hide from Guest" value="hide"
														onclick="simpletag('hide','','','message','')"
														class="codeButtons" style="width: 40px;" id="hide"></span><span
														style="padding-right: 1px;" id="bc12"><input
														type="button" title="List" value="list"
														onclick="tag_list('message','')" class="codeButtons"
														id="list" style="width: 30px;"></span> <span
														style="padding-right: 1px;" id="bc13"><input
														type="button" title="Left"
														style="width: 20px; text-align: left;" value="···"
														onclick="simpletag('l','cdl','···','message')"
														class="codeButtons" id="cdl"></span><span
														style="padding-right: 1px;" id="bc14"><input
														type="button" title="Center"
														style="width: 20px; text-align: center;" value="···"
														onclick="simpletag('c','cdc','···','message')"
														class="codeButtons" id="cdc"></span><span
														style="padding-right: 1px;" id="bc15"><input
														type="button" title="Right"
														style="width: 20px; text-align: right;" value="···"
														onclick="simpletag('r','cdr','···','message')"
														class="codeButtons" id="cdr"></span> <span
														style="padding-right: 1px;" id="bc16"><input
														type="button" title="All codes" style="width: 60px;"
														value="All codes"
														onclick="window.open('/index/17', 'bbcodes', 'scrollbars=1, width=550, height=450, left=0, top=0');"
														class="codeButtons"></span> <span
														style="padding-right: 1px;" id="bc17"><input
														style="font-weight: bold; width: 20px" type="button"
														value="/" class="codeButtons codeCloseAll"
														title="Close all opened codes"
														onclick="closeall('message','');"></span><input
														type="hidden" id="tagcount" value="0">
												</div>
												<textarea rows="10" class="manFl"
													style="width: 100%; height: 300px;" id="message"
													name="message" cols="40"></textarea>
												<input type="hidden" name="edttmessage" value="2"><br>
												<input id="format_message" type="checkbox"
													name="format_message" value="1" checked=""><label
													for="format_message">Substitute line breaks with
													the <b>&lt;BR&gt;</b> tag
												</label>
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
											class="manFlOth2" name="other2" maxlength="150" type="text"
											size="35"></td>
									</tr>
									<tr id="nwM64">
										<td class="manTd1" id="nwM65">Thành phố:</td>
										<td class="manTd2" id="nwM66"><input id="nwF14"
											class="manFlOth2" name="other2" maxlength="150" type="text"
											size="35"></td>
									</tr>
									<tr id="nwM67">
										<td class="manTd1" id="nwM68">Tác Giả:</td>
										<td class="manTd2" id="nwM69"><input id="nwF15"
											class="manFlOth3" name="other3" maxlength="150" type="text"
											size="35"></td>
									</tr>
									<tr id="nwM64">
										<td class="manTd1" id="nwM65">Giá bán:</td>
										<td class="manTd2" id="nwM66"><input id="nwF14"
											class="manFlOth2" name="other2" maxlength="150" type="text"
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
									onclick="document.getElementById('doSmbBt').click();">
								<input class="manFlRst" type="reset" id="nwF10" value="Clear"
									onclick="">
							</center>
							<input type="hidden" name="a" value="2"> <input
								type="hidden" name="ssid" value="qyXE49Io">
						</form>
						<br>
						<!-- Composite Start -->
						<div id="M190751ScriptRootC67606">
							<div id="M190751PreloadC67606" style="display: none;">
								Loading...</div>
							<script> (function(){ var D=new Date(),d=document,b='body',ce='createElement',ac='appendChild',st='style',ds='display',n='none',gi='getElementById'; var i=d[ce]('iframe');i[st][ds]=n;d[gi]("M190751ScriptRootC67606")[ac](i);try{var iw=i.contentWindow.document;iw.open();iw.writeln("<ht"+"ml><bo"+"dy></bo"+"dy></ht"+"ml>");iw.close();var c=iw[b];} catch(e){var iw=d;var c=d[gi]("M190751ScriptRootC67606");}var dv=iw[ce]('div');dv.id="MG_ID";dv[st][ds]=n;dv.innerHTML=67606;c[ac](dv); var s=iw[ce]('script');s.async='async';s.defer='defer';s.charset='utf-8';s.src="//jsc.mgid.com/k/e/kenhtruyen.com.67606.js?t="+D.getYear()+D.getMonth()+D.getDate()+D.getHours();c[ac](s);})();</script>
							<iframe style="display: none;"></iframe>
							
							<script type="text/javascript" charset="utf-8"
								src="//servicer.mgid.com/67606/1?w=770&amp;h=129&amp;cols=4&amp;pv=5&amp;cbuster=1497435355295146113067&amp;ref=http%3A%2F%2Fkenhtruyen.com%2Fnews%2F0-0-0-0-1&amp;pr=kenhtruyen.com&amp;lu=http%3A%2F%2Fkenhtruyen.com%2Fnews%2F0-0-0-0-1%3FlV4Qi3&amp;pageView=1"></script>
							
							<script charset="utf-8" src="//cm.mgid.com/i.js"
								type="text/javascript" async=""></script>
						</div>
						<!-- Composite End -->
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