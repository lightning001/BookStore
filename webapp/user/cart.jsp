<%@page import="DAO.BookDAO"%>
<%@page import="entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="fb:app_id" content="376408899112473" />
<meta name="description"
	content="Truyện Hot 24h hay nhất và mới nhất. Đọc truyện online nhiều thể loại tại TruyệnYY - Kho truyện được tuyển chọn và biên tập tốt nhất.">
<meta name="keywords"
	content="Doc truyen online, truyen kiem hiep, truyen tien hiep, truyen sac hiep, truyen ngon tinh, truyen trinh tham, vong du, truyen convert full text">
<link rel="alternate" type="application/atom+xml"
	title="Đọc Truyện Online - Truyện Kiếm Hiệp"
	href="http://feeds.feedburner.com/truyenyy">
<title>Truyện Hot 24h - Đọc truyện online | MyBook</title>
<!--  <link href="css/bootstrap.min.css" rel="stylesheet">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/yamm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/chosen.css" rel="stylesheet">
<link rel="icon" type="image/png" href="img/favicon.png" />
<link href="https://plus.google.com/103281900225927837176/" rel="author">
<!-- <script src="js/jquery-1.12.4.js"></script>-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/chosen.jquery.js"></script>
<!-- <script src="js/bootstrap.min.js"></script>-->
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
	<%
     List<Book> list = BookDAO.addListBookt();
  %>
	<jsp:include page="header.jsp"></jsp:include>




	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Images</td>
							<td class="image">Name</td>
							<td class="price">Manufacturer</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>

					<tbody>
						<%for(int i=0 ; i< list.size() ;i++){ %>
						<tr>
							<td class="cart_product"><a href=""><img
									src="<%=request.getContextPath() + list.get(i).getLinkImg() %>" alt=""style="width: 90px; height: 100px"></a></td>
							<td class="cart_description">
								<h4>
									<a href=""><%=list.get(i).getBookName() %></a>
								</h4>
							</td>
							<td class="cart_price">
								<h6><p id="cp<%=list.get(i).getBookId()%>"><%=list.get(i).getPrice()%></p></h6>
							</td>

							<td class="" ><input id="quan<%=list.get(i).getBookId()%>" type="number" name="quantity"
								value="1" autocomplete="on" size="" style="width: 50px; height: 25px">
									<a onclick="changeQuan(<%=list.get(i).getBookId()%>)"><span class="glyphicon glyphicon-refresh"></span></a></td>
							<td class="cart_total">
								<h6><p class="cart_total_price" id="p<%=list.get(i).getBookId()%>"><%=list.get(i).getPrice()%></p></h6>
							</td>
							<td class="cart_delete"><a class="btn btn-success" href="<%=request.getContextPath()%>/DeleteServlet?idBook=<%=list.get(i).getBookId()%>""><i
									class="fa fa-times">Delete</i></a></td>
						</tr>
						<%} %>


					</tbody>
				</table>
				<center>
					<div>
						<a class="btn btn-danger check_out" href="<%=request.getContextPath() %>/CheckUser" style="width: 95px; height: 29px" ><b>BUY
								NOW</b></a>
					</div>
				</center>

			</div>
			
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
changeQuan=function(id){
	var q=$('#quan'+id).val();
	var cp=$('#cp'+id).text();
	$('#p'+id).html(Number(q)*Number(cp));
	
}
</script>
<script>(function(d,s,a,i,j,r,l,m,t){try{l=d.getElementsByTagName('a');t=d.createElement('textarea');for(i=0;l.length-i;i++){try{a=l[i].href;s=a.indexOf('/cdn-cgi/l/email-protection');m=a.length;if(a&&s>-1&&m>28){j=28+s;s='';if(j<m){r='0x'+a.substr(j,2)|0;for(j+=2;j<m&&a.charAt(j)!='X';j+=2)s+='%'+('0'+('0x'+a.substr(j,2)^r).toString(16)).slice(-2);j++;s=decodeURIComponent(s)+a.substr(j,m-j)}t.innerHTML=s.replace(/</g,'&lt;').replace(/\>/g,'&gt;');l[i].href='mailto:'+t.value}}catch(e){}}}catch(e){}})(document);</script>
</body>
</html>