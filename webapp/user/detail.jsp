<%@page import="entity.Chapter"%>
<%@page import="entity.Accounts"%>
<%@page import="entity.Category"%>
<%@page import="entity.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="fb:app_id" content="376408899112473" />
<meta name="description"
	content="Đại Chúa Tể mới nhất - Chương 1462 - Trận chiến Thiên kiêu. - Tác Giả: Thiên Tàm Thổ Đậu tại TruyệnYY, kho truyện được tuyển chọn và biên tập tốt nhất. ">
<meta name="keywords"
	content="Doc truyen online, truyen kiem hiep, truyen tien hiep, truyen sac hiep, truyen ngon tinh, truyen trinh tham, vong du, truyen convert full text">
<meta property="og:type" content="website" />
<meta property="og:title" content="Đại Chúa Tể" />
<meta property="og:url" content="http://truyenyy.com/truyen/dai-chua-te" />
<meta property="og:description"
	content="Đọc truyện Đại Chúa Tể Full. Bản dịch mới nhất tại TruyệnYY.com" />
<meta property="og:image"
	content="//truyenyy.com/media/book_covers/DaiChuaTe.jpg" />
<link rel="alternate" type="application/atom+xml"
	title="Đọc Truyện Online - Truyện Kiếm Hiệp"
	href="http://feeds.feedburner.com/">
<title>MyBook</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/yamm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
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
	_gaq.push([ '_setAccount', 'UA-37191528-1' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%
		Book book = (Book) request.getAttribute("book");
	%>

	<div class="container">
		<div class="row">
			<div class="span12">
				<ul class="breadcrumb">
					<li>
						<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
							<!-- <a href="#" itemprop="url"><span itemprop="title">Truyện Dịch</span></a> -->
							<span class="divider">/</span>
						</div>
					</li>
					<li class="ds-theloai">
						<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
							<!-- <span itemprop="title"><a href="#" itemprop="url">Tiên Hiệp</a></span>
						<span itemprop="title"><a href="#" itemprop="url">Dị Giới</a></span>
						<span itemprop="title"><a href="#" itemprop="url">Huyền Huyễn</a></span> -->
						</div>
					</li>
					<li><span class="divider">/</span></li>
					<!-- <li class="active"><strong>Dai Chua Te Full</strong></li> -->
				</ul>

				<div>
					<div class="rightbar hide-s"
						style="width: 160px; box-sizing: border-box; float: left; margin-right: 20px;"></div>
					<div class="rightbar hide-x"
						style="width: 300px; box-sizing: border-box; float: right; margin-left: 20px;">
						<div class="related">
							<h2>Các truyện bạn nên đọc</h2>
							<div class="story">
								<a href="#" target="_blank"><h3>
										<i class="icon-star-empty"></i> Cửu Đỉnh Ký Full
									</h3></a> <span> - Tác Giả: Ngã Cật Tây Hồng Thị</span> <br> <span>
									- Thể Loại: Tiên Hiệp</span>
							</div>
							<div class="story">
								<a href="#" target="_blank"><h3>
										<i class="icon-star-empty"></i> Băng Hỏa Ma Trù Full
									</h3></a> <span> - Tác Giả: Đường Gia Tam Thiếu</span> <br> <span>
									- Thể Loại: Tiên Hiệp</span>
							</div>
							<div class="story">
								<a href="#" target="_blank"><h3>
										<i class="icon-star-empty"></i> Quang Chi Tử Full
									</h3></a> <span> - Tác Giả: Đường Gia Tam Thiếu</span> <br> <span>
									- Thể Loại: Tiên Hiệp</span>
							</div>
							<div class="story">
								<a href="#" target="_blank"><h3>
										<i class="icon-star-empty"></i> Lộng Triều Full
									</h3></a> <span> - Tác Giả: Thụy Căn</span> <br> <span> -
									Thể Loại: Đô Thị</span>
							</div>
							<div class="story">
								<a href="#" target="_blank"><h3>
										<i class="icon-star-empty"></i> Huyền Giới Chi Môn Mới nhất:
										Chương 408
									</h3></a> <span> - Tác Giả: Vong Ngữ</span> <br> <span> -
									Thể Loại: Tiên Hiệp</span>
							</div>
						</div>
						<div class="fb-like-box" data-href="#" data-width="300"
							data-colorscheme="light" data-show-faces="true"
							data-header="false" data-stream="false" data-show-border="true"></div>
					</div>
					<div class="rowest">
						<div class="xfor">
							<div class="thumbnail">
								<img src="<%=request.getContextPath() + book.getLinkImg()%>"
									style="width: 190px; height: 280px;" />
							</div>
							<div class="lww">
								<p>
									<!-- <a href="" class="btn btn-danger add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a> --><br> <span
										class="xleft">Tác Giả:</span> <span>&nbsp;<a href="-#">
											<%
												for (Accounts account : book.getBook_author()) {
											%> <%=account.getName()%> <%
 	}
 %>
									</a></span>
								</p>
								<p>
									<span class="xleft">Thể Loại:</span> <span class="ds-theloai">&nbsp;
										<%
											for (Category category : book.getCategories()) {
										%> <span><%=category.getCategoryName()%></span> <%
 	}
 %>
									</span>
								</p>
								<p>
									<span class="xleft">Loại Truyện:</span> <span>&nbsp;Dịch</span>
								</p>
								<p>
									<span class="xleft">Lượt Đọc:</span> <span>&nbsp;<%=book.getLikes()%></span>
								</p>
								<p>
									<span class="xleft">Trạng Thái:</span> <span>&nbsp;</span>
								</p>
								<p>
									<span class="xleft">Chia sẻ:</span> <a
										href="https://plus.google.com/share?url=<%=request.getHeader("referer")%>"
										onclick="javascript:window.open(this.href,
  '');return false;"><img
										src="https://www.gstatic.com/images/icons/gplus-32.png"
										alt="Share on Google+" /></a>
								</p>
							</div>
						</div>

						<div class="rofx">
							<h1><%=book.getBookName()%></h1>
							<div
								style="display: block; margin: 5px auto; text-align: center;">
								<a class="btn btn-mini btn-success" href="chap.jsp"
									tppabs="#-1/"> <i class="icon-play icon-white"></i> Đọc
									truyện từ đầu
								</a> <a class="btn btn-mini btn-success" href="chap.jsp"
									tppabs="#-1464/"> <i class="icon-fire icon-white"></i> Đọc
									chương mới nhất
								</a> <a type="button" class="btn btn-mini btn-success"
									href="#dschuong"><i class="icon-leaf icon-white"></i> Danh
									sách chương</a> <br> <br>

								<ul class='foo1 star-rating'>
									<li class='current-rating' id='current-rating'
										style="width: 126px;"></li>
									<li><a href="#" title='2/10' class='star one-star'
										data-rate='1'>1</a></li>
									<li><a href="#" title='4/10' class='star two-stars'
										data-rate='2'>2</a></li>
									<li><a href="#" title='6/10' class='star three-stars'
										data-rate='3'>3</a></li>
									<li><a href="#" title='8/10' class='star four-stars'
										data-rate='4'>4</a></li>
									<li><a href="#" title='10/10' class='star five-stars'
										data-rate='5'>5</a></li>
								</ul>
								<span itemscope
									itemtype="http://data-vocabulary.org/Review-aggregate">
									<span class="foo2"> <span itemprop="rating" itemscope
										itemtype="http://data-vocabulary.org/Rating">Điểm: <span
											itemprop="average">9,7</span>/<span itemprop="best">10</span>
									</span> - <span itemprop="votes">179</span> phiếu
								</span>
								</span>
							</div>
							<div id="desc_story">
								<p>Giới Thiệu Truyện</p>
								<p><%=book.getIntroduction()%></p>
								<div class="fb-like" style="display: block; float: left;"
									data-href="#dai-chua-te  #  #%27" data-send="false"
									data-layout="button_count" data-width="200px"
									data-show-faces="false" data-font="verdana"></div>
								&nbsp;
								<div class="g-plusone" data-size="medium"
									data-href="index-15.htm"></div>
								<p style="float: right;"></p>
							</div>
							<div class="showmore">
								<a href="javascript:void(0)" class="btn btn-info btn-mini"
									onclick="$('#desc_story').css('height','auto');$('.showmore').hide()">Xem
									thêm »</a>
							</div>
							<!-- <span style="font-size: 15px;"><em>Các chương mới nhất được cập nhật:</em></span>
						<ul style="margin: 0 0 10px 0">
							<li class="ip5"><a href="#"><i class="icon-arrow-right"></i> Chương 1462 - Trận chiến Thiên kiêu</a></li>
							<li class="ip5"><a href="#"><i class="icon-arrow-right"></i> Chương 1461 - Chim sẻ núp phía sau</a></li>
							<li class="ip5"><a href="#"><i class="icon-arrow-right"></i> Chương 1460 - Chuẩn Thánh Huyết Tinh</a></li>
							<li class="ip5"><a href="#"><i class="icon-arrow-right"></i> Chương 1459 - Tam anh chiến hoàng</a></li>
							<li class="ip5"><a href="#"><i class="icon-arrow-right"></i> Chương 1458: Mai phục chặn giết</a></li>
						</ul> -->
						</div>
						<div class="clearfix"></div>
						<hr style="margin: 0; border-bottom: 1px solid #eee;">
						<div class="chaplist" id="dschuong">
							<h2>
								Danh sách chương truyện "<%=book.getBookName()%>"
							</h2>
							<!-- <div><span style="width: 60px;display: inline-block;">1.</span><a class="jblack" href="#" target="_blank"><i class="icon-leaf"></i> Chương 01. Bắc Linh viện</a></div> -->
							<%
								int index = 1;
								for (Chapter chapter : book.getChapters()) {
							%>
							<div>
								<span style="width: 60px; display: inline-block;"><%=index%></span><a
									class="jblack" href="#" target="_blank"><i
									class="icon-leaf"></i> Chương <%=index%>. <%=chapter.getChapterName()%></a>
							</div>
							<%
								index++;
								}
							%>
							<div class="paging">
								<form action="#" method="get" rel="nofollow">
									<span>Truyền Tống đến Trang:</span> <input name="page"
										type="text" value=""
										style="width: 40px; height: 17px; margin: 0;">
									<button class="btn btn-warning btn-small">
										<i class="icon-arrow-right"></i> <span class="jblack">Go</span>
									</button>
								</form>

								<div class="pagination pagination-centered">
									<ul>
										<li class="disabled"><a href="javascript:">&larr;</a></li>
										<li class="active"><a href="javascript:">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="javascript:">...</a></li>
										<li><a href="#">28</a></li>
										<li><a href="">29</a></li>
										<li><a href="#">30</a></li>
										<li><a href="">&rarr;</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="cl">
							<a href="javascript:void(0)" class="btn btn-info btn-mini"
								onclick="$('.cc').show();$('.cl').hide()">Xem bình luận
								truyện Đại Chúa Tể</a>
						</div>
						<div class="cc" style="display: none;">
							<span><b>Đừng để 1 vài bình luận chê bai mà bỏ qua một
									bộ truyện hay. Bạn hãy tự mình đọc trước khi đánh giá truyện.
									Đọc truyện là để tận hưởng chứ không phải để chê bai, hãy
									comment có văn hóa.</b></span>
							<div class="fb-comments" style="display: block; left: 0;"
								data-href="#" #/dai-chua-te/" data-width="100%"
								data-numposts="5" data-colorscheme="light"></div>
						</div>
					</div>
				</div>

				<div class="clearfix"></div>

			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
	(function(d, s, a, i, j, r, l, m, t) {
		try {
			l = d.getElementsByTagName('a');
			t = d.createElement('textarea');
			for (i = 0; l.length - i; i++) {
				try {
					a = l[i].href;
					s = a.indexOf('/cdn-cgi/l/email-protection');
					m = a.length;
					if (a && s > -1 && m > 28) {
						j = 28 + s;
						s = '';
						if (j < m) {
							r = '0x' + a.substr(j, 2) | 0;
							for (j += 2; j < m && a.charAt(j) != 'X'; j += 2)
								s += '%'
										+ ('0' + ('0x' + a.substr(j, 2) ^ r)
												.toString(16)).slice(-2);
							j++;
							s = decodeURIComponent(s) + a.substr(j, m - j)
						}
						t.innerHTML = s.replace(/</g, '&lt;').replace(/\>/g,
								'&gt;');
						l[i].href = 'mailto:' + t.value
					}
				} catch (e) {
				}
			}
		} catch (e) {
		}
	})(document);
</script>
</body>
</html>