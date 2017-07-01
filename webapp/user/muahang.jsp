<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mua hàng</title>
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



	<section id="cart_items">
	<div class="container">

		<div class="checkout-main _wrapper">

			<div class="checkout-main _primary">

				<div class="checkout-box _box">
					<div class="shipping_form">
						<div class="checkout-box _heading">
							<h3 class="checkout-box _title">Địa chỉ giao hàng của quý
								khách</h3>

							<a class="checkout-box _link-speedy-login"
								href="login.jsp">Đăng nhập để đặt
								hàng</a>
						</div>
						<div class="checkout-box _heading">
							<h3 class="checkout-box _title">Thông tin đơn hàng</h3>

							<a class="checkout-box _link-speedy-login"
								href="cart.jsp">Xem thông tin đơn hàng</a>
						</div>

						<div class="checkout-box _message"></div>

						<div class="checkout-box _content -has-padding">
							<div id="helptooltip">
								<h3>Số điện thoại của bạn là cần thiết</h3>
								<p>Xin vui lòng cung cấp số điện thoại của bạn. Bạn sẽ
									thông báo thông tin giao hàng qua số điện thoại này.</p>
							</div>
							<script type="text/javascript">
								var regions = {
									"271" : [
											"H\u1ed3 Ch\u00ed Minh",
											[
													{
														"id" : "718",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 1"
													},
													{
														"id" : "719",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 2"
													},
													{
														"id" : "720",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 3"
													},
													{
														"id" : "721",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 4"
													},
													{
														"id" : "722",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 5"
													},
													{
														"id" : "723",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 6"
													},
													{
														"id" : "724",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 7"
													},
													{
														"id" : "729",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 12"
													},
													{
														"id" : "725",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 8"
													},
													{
														"id" : "726",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 9"
													},
													{
														"id" : "727",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 10"
													},
													{
														"id" : "728",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn 11"
													},
													{
														"id" : "730",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn B\u00ecnh T\u00e2n"
													},
													{
														"id" : "731",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn B\u00ecnh Th\u1ea1nh"
													},
													{
														"id" : "732",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn G\u00f2 V\u1ea5p"
													},
													{
														"id" : "733",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Ph\u00fa Nhu\u1eadn"
													},
													{
														"id" : "734",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn T\u00e2n B\u00ecnh"
													},
													{
														"id" : "735",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn T\u00e2n Ph\u00fa"
													},
													{
														"id" : "736",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Th\u1ee7 \u0110\u1ee9c"
													},
													{
														"id" : "737",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh Ch\u00e1nh"
													},
													{
														"id" : "738",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea7n Gi\u1edd"
													},
													{
														"id" : "739",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ee7 Chi"
													},
													{
														"id" : "740",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00f3c M\u00f4n"
													},
													{
														"id" : "741",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nh\u00e0 B\u00e8"
													} ] ],
									"232" : [
											"H\u00e0 N\u1ed9i",
											[
													{
														"id" : "391",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Ba \u0110\u00ecnh"
													},
													{
														"id" : "1110",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn B\u1eafc T\u1eeb Li\u00eam"
													},
													{
														"id" : "392",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Ho\u00e0n Ki\u1ebfm"
													},
													{
														"id" : "397",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Hai B\u00e0 Tr\u01b0ng"
													},
													{
														"id" : "395",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn C\u1ea7u Gi\u1ea5y"
													},
													{
														"id" : "399",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Thanh Xu\u00e2n"
													},
													{
														"id" : "396",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn \u0110\u1ed1ng \u0110a"
													},
													{
														"id" : "393",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn T\u00e2y H\u1ed3"
													},
													{
														"id" : "398",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Ho\u00e0ng Mai"
													},
													{
														"id" : "394",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Long Bi\u00ean"
													},
													{
														"id" : "400",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn H\u00e0 \u0110\u00f4ng"
													},
													{
														"id" : "402",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ba V\u00ec"
													},
													{
														"id" : "404",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110an Ph\u01b0\u1ee3ng"
													},
													{
														"id" : "403",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u01b0\u01a1ng M\u1ef9"
													},
													{
														"id" : "406",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Gia L\u00e2m"
													},
													{
														"id" : "407",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ho\u00e0i \u0110\u1ee9c"
													},
													{
														"id" : "408",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u00ea Linh"
													},
													{
														"id" : "409",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ef9 \u0110\u1ee9c"
													},
													{
														"id" : "410",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Xuy\u00ean"
													},
													{
														"id" : "411",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fac Th\u1ecd"
													},
													{
														"id" : "412",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ed1c Oai"
													},
													{
														"id" : "413",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u00f3c S\u01a1n"
													},
													{
														"id" : "414",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ea1ch Th\u1ea5t"
													},
													{
														"id" : "415",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh Oai"
													},
													{
														"id" : "416",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh Tr\u00ec"
													},
													{
														"id" : "417",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u01b0\u1eddng T\u00edn"
													},
													{
														"id" : "418",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Nam T\u1eeb Li\u00eam"
													},
													{
														"id" : "419",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u1ee8ng H\u00f2a"
													},
													{
														"id" : "405",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00f4ng Anh"
													},
													{
														"id" : "401",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 S\u01a1n T\u00e2y"
													} ] ],
									"260" : [
											"\u0110\u00e0 N\u1eb5ng",
											[
													{
														"id" : "557",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ho\u00e0ng Sa"
													},
													{
														"id" : "556",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00f2a Vang"
													},
													{
														"id" : "555",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn C\u1ea9m L\u1ec7"
													},
													{
														"id" : "550",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn H\u1ea3i Ch\u00e2u"
													},
													{
														"id" : "554",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Li\u00ean Chi\u1ec3u"
													},
													{
														"id" : "553",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Ng\u0169 H\u00e0nh S\u01a1n"
													},
													{
														"id" : "552",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn S\u01a1n Tr\u00e0"
													},
													{
														"id" : "551",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Thanh Kh\u00ea"
													},
													{
														"id" : "549",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 \u0110\u00e0 N\u1eb5ng"
													} ] ],
									"280" : [
											"C\u1ea7n Th\u01a1",
											[
													{
														"id" : "545",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1edd \u0110\u1ecf"
													},
													{
														"id" : "546",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Phong \u0110i\u1ec1n"
													},
													{
														"id" : "548",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1edbi Lai"
													},
													{
														"id" : "547",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh Th\u1ea1nh"
													},
													{
														"id" : "542",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn B\u00ecnh Th\u1ee7y"
													},
													{
														"id" : "541",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn C\u00e1i R\u0103ng"
													},
													{
														"id" : "540",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Ninh Ki\u1ec1u"
													},
													{
														"id" : "543",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn \u00d4 M\u00f4n"
													},
													{
														"id" : "544",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Th\u1ed1t N\u1ed1t"
													} ] ],
									"242" : [
											"H\u1ea3i Ph\u00f2ng",
											[
													{
														"id" : "684",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ea1ch Long V\u0129"
													},
													{
														"id" : "675",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn D\u01b0\u01a1ng Kinh"
													},
													{
														"id" : "682",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n An D\u01b0\u01a1ng"
													},
													{
														"id" : "683",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n An L\u00e3o"
													},
													{
														"id" : "685",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u00e1t H\u1ea3i"
													},
													{
														"id" : "686",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ki\u1ebfn Th\u1ee5y"
													},
													{
														"id" : "689",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ee7y Nguy\u00ean"
													},
													{
														"id" : "687",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ti\u00ean L\u00e3ng"
													},
													{
														"id" : "688",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh B\u1ea3o"
													},
													{
														"id" : "677",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn H\u1ea3i An"
													},
													{
														"id" : "679",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn H\u1ed3ng B\u00e0ng"
													},
													{
														"id" : "678",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Ki\u1ebfn An"
													},
													{
														"id" : "681",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn L\u00ea Ch\u00e2n"
													},
													{
														"id" : "680",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn Ng\u00f4 Quy\u1ec1n"
													},
													{
														"id" : "676",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Qu\u1eadn \u0110\u1ed3 S\u01a1n"
													} ] ],
									"272" : [
											"An Giang",
											[
													{
														"id" : "430",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n An Ph\u00fa"
													},
													{
														"id" : "423",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Ph\u00fa"
													},
													{
														"id" : "422",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "427",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u1ee3 M\u1edbi"
													},
													{
														"id" : "428",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa T\u00e2n"
													},
													{
														"id" : "429",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Ch\u00e2u"
													},
													{
														"id" : "426",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tho\u1ea1i S\u01a1n"
													},
													{
														"id" : "424",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u1ecbnh Bi\u00ean"
													},
													{
														"id" : "425",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tri T\u00f4n"
													},
													{
														"id" : "420",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Long Xuy\u00ean"
													},
													{
														"id" : "421",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ch\u00e2u \u0110\u1ed1c"
													} ] ],
									"431" : [
											"B\u00e0 R\u1ecba V\u0169ng T\u00e0u",
											[
													{
														"id" : "436",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u \u0110\u1ee9c"
													},
													{
														"id" : "438",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u00f4n \u0110\u1ea3o"
													},
													{
														"id" : "434",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Long \u0110i\u1ec1n"
													},
													{
														"id" : "437",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Th\u00e0nh"
													},
													{
														"id" : "439",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Xuy\u00ean M\u1ed9c"
													},
													{
														"id" : "435",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea5t \u0110\u1ecf"
													},
													{
														"id" : "433",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 B\u00e0 R\u1ecba"
													},
													{
														"id" : "432",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 V\u0169ng T\u00e0u"
													} ] ],
									"234" : [
											"B\u1eafc Giang",
											[
													{
														"id" : "451",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ea1ng Giang"
													},
													{
														"id" : "449",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ee5c Ng\u1ea1n"
													},
													{
														"id" : "456",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean D\u0169ng"
													},
													{
														"id" : "454",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Hi\u1ec7p Ho\u00e0"
													},
													{
														"id" : "450",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ee5c Nam"
													},
													{
														"id" : "448",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u01a1n \u0110\u1ed9ng"
													},
													{
														"id" : "452",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Y\u00ean"
													},
													{
														"id" : "455",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Vi\u1ec7t Y\u00ean"
													},
													{
														"id" : "453",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean Th\u1ebf"
													},
													{
														"id" : "447",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 B\u1eafc Giang"
													} ] ],
									"233" : [
											"B\u1eafc K\u1ea1n",
											[
													{
														"id" : "459",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ea1ch Th\u00f4ng"
													},
													{
														"id" : "458",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ba B\u1ec3"
													},
													{
														"id" : "461",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u1ee3 M\u1edbi"
													},
													{
														"id" : "460",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u1ee3 \u0110\u1ed3n"
													},
													{
														"id" : "462",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Na R\u00ec"
													},
													{
														"id" : "463",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ng\u00e2n S\u01a1n"
													},
													{
														"id" : "464",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n P\u00e1c N\u1eb7m"
													},
													{
														"id" : "457",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 B\u1eafc K\u1ea1n"
													} ] ],
									"276" : [
											"B\u1ea1c Li\u00eau",
											[
													{
														"id" : "443",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Gi\u00e1 Rai"
													},
													{
														"id" : "442",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00f2a B\u00ecnh"
													},
													{
														"id" : "441",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1ed3ng D\u00e2n"
													},
													{
														"id" : "444",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u01b0\u1edbc Long"
													},
													{
														"id" : "445",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh L\u1ee3i"
													},
													{
														"id" : "446",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00f4ng H\u1ea3i"
													},
													{
														"id" : "440",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 B\u1ea1c Li\u00eau"
													} ] ],
									"235" : [
											"B\u1eafc Ninh",
											[
													{
														"id" : "470",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thu\u1eadn Th\u00e0nh"
													},
													{
														"id" : "472",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Gia B\u00ecnh"
													},
													{
														"id" : "471",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u01b0\u01a1ng T\u00e0i"
													},
													{
														"id" : "469",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ebf V\u00f5"
													},
													{
														"id" : "467",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ti\u00ean Du"
													},
													{
														"id" : "468",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean Phong"
													},
													{
														"id" : "465",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 B\u1eafc Ninh"
													},
													{
														"id" : "466",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 T\u1eeb S\u01a1n"
													} ] ],
									"277" : [
											"B\u1ebfn Tre",
											[
													{
														"id" : "1128",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ecf C\u00e0y B\u1eafc"
													},
													{
														"id" : "1129",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ecf C\u00e0y Nam"
													},
													{
														"id" : "479",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ba Tri"
													},
													{
														"id" : "475",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh \u0110\u1ea1i"
													},
													{
														"id" : "474",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "476",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u1ee3 L\u00e1ch"
													},
													{
														"id" : "478",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Gi\u1ed3ng Tr\u00f4m"
													},
													{
														"id" : "480",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ecf C\u00e0y"
													},
													{
														"id" : "477",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ea1nh Ph\u00fa"
													},
													{
														"id" : "473",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 B\u1ebfn Tre"
													} ] ],
									"261" : [
											"B\u00ecnh \u0110\u1ecbnh",
											[
													{
														"id" : "494",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00f9 M\u1ef9"
													},
													{
														"id" : "496",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2y S\u01a1n"
													},
													{
														"id" : "490",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n An L\u00e3o"
													},
													{
														"id" : "491",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ho\u00e0i \u00c2n"
													},
													{
														"id" : "492",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ho\u00e0i Nh\u01a1n"
													},
													{
														"id" : "493",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00f9 C\u00e1t"
													},
													{
														"id" : "495",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tuy Ph\u01b0\u1edbc"
													},
													{
														"id" : "497",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u00e2n Canh"
													},
													{
														"id" : "498",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh Th\u1ea1nh"
													},
													{
														"id" : "488",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Quy Nh\u01a1n"
													},
													{
														"id" : "489",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 An Nh\u01a1n"
													} ] ],
									"273" : [
											"B\u00ecnh D\u01b0\u01a1ng",
											[
													{
														"id" : "1126",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1eafc T\u00e2n Uy\u00ean"
													},
													{
														"id" : "1127",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00e0u B\u00e0ng"
													},
													{
														"id" : "484",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ebfn C\u00e1t"
													},
													{
														"id" : "485",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n D\u1ea7u Ti\u1ebfng"
													},
													{
														"id" : "487",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Gi\u00e1o"
													},
													{
														"id" : "486",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 T\u00e2n Uy\u00ean"
													},
													{
														"id" : "481",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Th\u1ee7 D\u1ea7u M\u1ed9t"
													},
													{
														"id" : "483",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 D\u0129 An"
													},
													{
														"id" : "482",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Thu\u1eadn An"
													} ] ],
									"274" : [
											"B\u00ecnh Ph\u01b0\u1edbc",
											[
													{
														"id" : "1139",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Ri\u1ec1ng"
													},
													{
														"id" : "500",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 B\u00ecnh Long"
													},
													{
														"id" : "507",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00f9 Gia M\u1eadp"
													},
													{
														"id" : "503",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00f9 \u0110\u0103ng"
													},
													{
														"id" : "504",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00f9 \u0110\u1ed1p"
													},
													{
														"id" : "505",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u01a1n Th\u00e0nh"
													},
													{
														"id" : "508",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1edbn Qu\u1ea3n"
													},
													{
														"id" : "506",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ed9c Ninh"
													},
													{
														"id" : "502",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ed3ng Ph\u00fa"
													},
													{
														"id" : "501",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ph\u01b0\u1edbc Long"
													},
													{
														"id" : "499",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 \u0110\u1ed3ng Xo\u00e0i"
													} ] ],
									"278" : [
											"B\u00ecnh Thu\u1eadn",
											[
													{
														"id" : "1123",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea3o Ph\u00fa Qu\u00fd"
													},
													{
														"id" : "511",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1eafc B\u00ecnh"
													},
													{
														"id" : "514",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00e0m T\u00e2n"
													},
													{
														"id" : "512",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00e0m Thu\u1eadn B\u1eafc"
													},
													{
														"id" : "513",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00e0m Thu\u1eadn Nam"
													},
													{
														"id" : "515",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Qu\u00fd"
													},
													{
														"id" : "516",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e1nh Linh"
													},
													{
														"id" : "510",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tuy Phong"
													},
													{
														"id" : "517",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ee9c Linh"
													},
													{
														"id" : "509",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 La Gi"
													},
													{
														"id" : "1095",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Tp Phan Thi\u1ebft"
													} ] ],
									"279" : [
											"C\u00e0 Mau",
											[
													{
														"id" : "521",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u00e1i N\u01b0\u1edbc"
													},
													{
														"id" : "525",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n N\u0103m C\u0103n"
													},
													{
														"id" : "520",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ng\u1ecdc Hi\u1ec3n"
													},
													{
														"id" : "526",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa T\u00e2n"
													},
													{
														"id" : "524",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1edbi B\u00ecnh"
													},
													{
														"id" : "522",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u1ea7n V\u0103n Th\u1eddi"
													},
													{
														"id" : "523",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n U Minh"
													},
													{
														"id" : "519",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea7m D\u01a1i"
													},
													{
														"id" : "518",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 C\u00e0 Mau"
													} ] ],
									"236" : [
											"Cao B\u1eb1ng",
											[
													{
														"id" : "533",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00f2a An"
													},
													{
														"id" : "537",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u1ee5c H\u00f2a"
													},
													{
														"id" : "529",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ea3o L\u1ea1c"
													},
													{
														"id" : "528",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ea3o L\u00e2m"
													},
													{
														"id" : "536",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1ea1 Lang"
													},
													{
														"id" : "532",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00e0 Qu\u1ea3ng"
													},
													{
														"id" : "530",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nguy\u00ean B\u00ecnh"
													},
													{
														"id" : "538",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ea3ng Uy\u00ean"
													},
													{
														"id" : "539",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ea1ch An"
													},
													{
														"id" : "531",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u00f4ng N\u00f4ng"
													},
													{
														"id" : "534",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u00e0 L\u0129nh"
													},
													{
														"id" : "535",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u00f9ng Kh\u00e1nh"
													},
													{
														"id" : "527",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Cao B\u1eb1ng"
													} ] ],
									"558" : [
											"\u0110\u0103k L\u0103k",
											[
													{
														"id" : "572",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u0103k N\u00f4ng"
													},
													{
														"id" : "559",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Bu\u00f4n Ma Thu\u1ed9t"
													},
													{
														"id" : "1112",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Bu\u00f4n H\u1ed3"
													},
													{
														"id" : "575",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u01b0 J\u00fat"
													},
													{
														"id" : "573",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110ak Rl\u1ea5p"
													},
													{
														"id" : "571",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kr\u00f4ng N\u00f4"
													},
													{
														"id" : "566",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kr\u00f4ng P\u1eafc"
													},
													{
														"id" : "1116",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u01b0 Kuin"
													},
													{
														"id" : "562",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Bu\u00f4n \u00d0\u00f4n"
													},
													{
														"id" : "576",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u01b0 M'gar"
													},
													{
														"id" : "574",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110ak Mil"
													},
													{
														"id" : "565",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ea Kar"
													},
													{
														"id" : "564",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ea H'leo"
													},
													{
														"id" : "563",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ea S\u00fap"
													},
													{
														"id" : "570",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kr\u00f4ng Ana"
													},
													{
														"id" : "569",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kr\u00f4ng B\u00f4ng"
													},
													{
														"id" : "567",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kr\u00f4ng Buk"
													},
													{
														"id" : "568",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kr\u00f4ng N\u0103ng"
													},
													{
														"id" : "561",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Lak"
													},
													{
														"id" : "560",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M'\u0111rak"
													} ] ],
									"577" : [
											"\u0110\u0103k N\u00f4ng",
											[
													{
														"id" : "579",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u01b0 J\u00fat"
													},
													{
														"id" : "584",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kr\u00f4ng N\u00f4"
													},
													{
														"id" : "585",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tuy \u0110\u1ee9c"
													},
													{
														"id" : "580",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1eafk Glong"
													},
													{
														"id" : "581",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1eafk Mil"
													},
													{
														"id" : "582",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1eafk R'l\u1ea5p"
													},
													{
														"id" : "583",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1eafk Song"
													},
													{
														"id" : "578",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Gia Ngh\u0129a"
													} ] ],
									"237" : [
											"\u0110i\u1ec7n Bi\u00ean",
											[
													{
														"id" : "1113",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110i\u1ec7n Bi\u00ean"
													},
													{
														"id" : "589",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u01b0\u1eddng \u1ea2ng"
													},
													{
														"id" : "590",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u01b0\u1eddng Ch\u00e0"
													},
													{
														"id" : "593",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u01b0\u1eddng Nh\u00e9"
													},
													{
														"id" : "594",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n N\u1eadm P\u1ed3"
													},
													{
														"id" : "592",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u1ee7a Ch\u00f9a"
													},
													{
														"id" : "591",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tu\u1ea7n Gi\u00e1o"
													},
													{
														"id" : "588",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110i\u1ec7n Bi\u00ean \u0110\u00f4ng"
													},
													{
														"id" : "586",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 \u0110i\u1ec7n Bi\u00ean"
													},
													{
														"id" : "587",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 M\u01b0\u1eddng Lay"
													} ] ],
									"281" : [
											"\u0110\u1ed3ng Nai",
											[
													{
														"id" : "597",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea9m M\u1ef9"
													},
													{
														"id" : "599",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Long Th\u00e0nh"
													},
													{
														"id" : "600",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nh\u01a1n Tr\u1ea1ch"
													},
													{
														"id" : "601",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Ph\u00fa"
													},
													{
														"id" : "602",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ed1ng Nh\u1ea5t"
													},
													{
														"id" : "603",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u1ea3ng Bom"
													},
													{
														"id" : "604",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh C\u1eedu"
													},
													{
														"id" : "605",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Xu\u00e2n L\u1ed9c"
													},
													{
														"id" : "598",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ecbnh Qu\u00e1n"
													},
													{
														"id" : "595",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Bi\u00ean H\u00f2a"
													},
													{
														"id" : "596",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Long Kh\u00e1nh"
													} ] ],
									"282" : [
											"\u0110\u1ed3ng Th\u00e1p",
											[
													{
														"id" : "607",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 H\u1ed3ng Ng\u1ef1"
													},
													{
														"id" : "611",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Cao L\u00e3nh"
													},
													{
														"id" : "613",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "615",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Lai Vung"
													},
													{
														"id" : "616",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ea5p V\u00f2"
													},
													{
														"id" : "609",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tam N\u00f4ng"
													},
													{
														"id" : "614",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n H\u1ed3ng"
													},
													{
														"id" : "610",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh B\u00ecnh"
													},
													{
														"id" : "612",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u00e1p M\u01b0\u1eddi"
													},
													{
														"id" : "606",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Cao L\u00e3nh"
													},
													{
														"id" : "608",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Sa \u0110\u00e9c"
													},
													{
														"id" : "1102",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1ed3ng Ng\u1ef1"
													} ] ],
									"262" : [
											"Gia Lai",
											[
													{
														"id" : "629",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u01b0 P\u0103h"
													},
													{
														"id" : "631",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u01b0 Pr\u00f4ng"
													},
													{
														"id" : "633",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u01b0 P\u01b0h"
													},
													{
														"id" : "620",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u01b0 S\u00ea"
													},
													{
														"id" : "630",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ia Grai"
													},
													{
														"id" : "622",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ia Pa"
													},
													{
														"id" : "625",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kbang"
													},
													{
														"id" : "624",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n K\u00f4ng Chro"
													},
													{
														"id" : "623",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kr\u00f4ng Pa"
													},
													{
														"id" : "626",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Mang Yang"
													},
													{
														"id" : "621",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Thi\u1ec7n"
													},
													{
														"id" : "627",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110ak P\u01a1"
													},
													{
														"id" : "628",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1eafk \u0110oa"
													},
													{
														"id" : "632",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ee9c C\u01a1"
													},
													{
														"id" : "617",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Pleiku"
													},
													{
														"id" : "618",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 An Kh\u00ea"
													},
													{
														"id" : "619",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ayun Pa"
													} ] ],
									"238" : [
											"H\u00e0 Giang",
											[
													{
														"id" : "639",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1eafc M\u00ea"
													},
													{
														"id" : "641",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1eafc Quang"
													},
													{
														"id" : "642",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ho\u00e0ng Su Ph\u00ec"
													},
													{
														"id" : "636",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u00e8o V\u1ea1c"
													},
													{
														"id" : "638",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ea3n B\u1ea1"
													},
													{
														"id" : "644",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Quang B\u00ecnh"
													},
													{
														"id" : "640",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u1ecb Xuy\u00ean"
													},
													{
														"id" : "643",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n X\u00edn M\u1ea7n"
													},
													{
														"id" : "637",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean Minh"
													},
													{
														"id" : "635",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ed3ng V\u0103n"
													},
													{
														"id" : "634",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 H\u00e0 Giang"
													} ] ],
									"239" : [
											"H\u00e0 Nam",
											[
													{
														"id" : "648",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh L\u1ee5c"
													},
													{
														"id" : "646",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Duy Ti\u00ean"
													},
													{
														"id" : "650",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kim B\u1ea3ng"
													},
													{
														"id" : "647",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u00fd Nh\u00e2n"
													},
													{
														"id" : "649",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh Li\u00eam"
													},
													{
														"id" : "645",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Ph\u1ee7 L\u00fd"
													} ] ],
									"240" : [
											"H\u00e0 T\u0129nh",
											[
													{
														"id" : "653",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea9m Xuy\u00ean"
													},
													{
														"id" : "661",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0169 Quang"
													},
													{
														"id" : "654",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Can L\u1ed9c"
													},
													{
														"id" : "656",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u01b0\u01a1ng Kh\u00ea"
													},
													{
														"id" : "657",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u01b0\u01a1ng S\u01a1n"
													},
													{
														"id" : "658",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n K\u1ef3 Anh"
													},
													{
														"id" : "662",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ed9c H\u00e0"
													},
													{
														"id" : "659",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nghi Xu\u00e2n"
													},
													{
														"id" : "660",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ea1ch H\u00e0"
													},
													{
														"id" : "655",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ee9c Th\u1ecd"
													},
													{
														"id" : "651",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 H\u00e0 T\u0129nh"
													},
													{
														"id" : "652",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 H\u1ed3ng L\u0129nh"
													} ] ],
									"241" : [
											"H\u1ea3i D\u01b0\u01a1ng",
											[
													{
														"id" : "665",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh Giang"
													},
													{
														"id" : "671",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Gia L\u1ed9c"
													},
													{
														"id" : "666",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea9m Gi\u00e0ng"
													},
													{
														"id" : "669",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kim Th\u00e0nh"
													},
													{
														"id" : "670",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kinh M\u00f4n"
													},
													{
														"id" : "667",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nam S\u00e1ch"
													},
													{
														"id" : "674",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ninh Giang"
													},
													{
														"id" : "668",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh H\u00e0"
													},
													{
														"id" : "673",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh Mi\u1ec7n"
													},
													{
														"id" : "672",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u1ee9 K\u1ef3"
													},
													{
														"id" : "663",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 H\u1ea3i D\u01b0\u01a1ng"
													},
													{
														"id" : "664",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ch\u00ed Linh"
													} ] ],
									"283" : [
											"H\u1eadu Giang",
											[
													{
														"id" : "693",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "694",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh A"
													},
													{
														"id" : "692",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Long M\u1ef9"
													},
													{
														"id" : "696",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u1ee5ng Hi\u1ec7p"
													},
													{
														"id" : "695",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u1ecb Th\u1ee7y"
													},
													{
														"id" : "690",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 V\u1ecb Thanh"
													},
													{
														"id" : "691",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ng\u00e3 B\u1ea3y"
													} ] ],
									"244" : [
											"H\u00f2a B\u00ecnh",
											[
													{
														"id" : "701",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Cao Phong"
													},
													{
														"id" : "702",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kim B\u00f4i"
													},
													{
														"id" : "699",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n K\u1ef3 S\u01a1n"
													},
													{
														"id" : "706",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ea1c S\u01a1n"
													},
													{
														"id" : "703",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ea1c Thu\u1ef7"
													},
													{
														"id" : "700",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u01b0\u01a1ng S\u01a1n"
													},
													{
														"id" : "704",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Mai Ch\u00e2u"
													},
													{
														"id" : "705",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n L\u1ea1c"
													},
													{
														"id" : "707",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean Thu\u1ef7"
													},
													{
														"id" : "698",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00e0 B\u1eafc"
													},
													{
														"id" : "697",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 H\u00f2a B\u00ecnh"
													} ] ],
									"243" : [
											"H\u01b0ng Y\u00ean",
											[
													{
														"id" : "711",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00f9 C\u1eeb"
													},
													{
														"id" : "712",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u00c2n Thi"
													},
													{
														"id" : "713",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kho\u00e1i Ch\u00e2u"
													},
													{
														"id" : "709",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kim \u0110\u1ed9ng"
													},
													{
														"id" : "716",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ef9 H\u00e0o"
													},
													{
														"id" : "717",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ti\u00ean L\u1eef"
													},
													{
														"id" : "714",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0103n Giang"
													},
													{
														"id" : "715",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0103n L\u00e2m"
													},
													{
														"id" : "710",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean M\u1ef9"
													},
													{
														"id" : "708",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 H\u01b0ng Y\u00ean"
													} ] ],
									"265" : [
											"Kh\u00e1nh H\u00f2a",
											[
													{
														"id" : "744",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kh\u00e1nh S\u01a1n"
													},
													{
														"id" : "749",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u01b0\u1eddng Sa"
													},
													{
														"id" : "746",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Cam L\u00e2m"
													},
													{
														"id" : "747",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Di\u00ean Kh\u00e1nh"
													},
													{
														"id" : "745",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kh\u00e1nh V\u0129nh"
													},
													{
														"id" : "748",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ninh H\u00f2a"
													},
													{
														"id" : "750",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u1ea1n Ninh"
													},
													{
														"id" : "743",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Cam Ranh"
													},
													{
														"id" : "742",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Nha Trang"
													} ] ],
									"284" : [
											"Ki\u00ean Giang",
											[
													{
														"id" : "756",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Gi\u1ed3ng Ri\u1ec1ng"
													},
													{
														"id" : "757",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n G\u00f2 Quao"
													},
													{
														"id" : "753",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n An Bi\u00ean"
													},
													{
														"id" : "754",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n An Minh"
													},
													{
														"id" : "755",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2uth\u00e0nh"
													},
													{
														"id" : "765",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Giang Th\u00e0nh"
													},
													{
														"id" : "758",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00f2n \u0110\u1ea5t"
													},
													{
														"id" : "759",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ki\u00ean H\u1ea3i"
													},
													{
														"id" : "760",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ki\u00ean L\u01b0\u01a1ng"
													},
													{
														"id" : "761",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Qu\u1ed1c"
													},
													{
														"id" : "762",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Hi\u1ec7p"
													},
													{
														"id" : "763",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n U Minhth\u01b0\u1ee3ng"
													},
													{
														"id" : "764",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh Thu\u1eadn"
													},
													{
														"id" : "751",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 R\u1ea1ch Gi\u00e1"
													},
													{
														"id" : "752",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 H\u00e0 Ti\u00ean"
													} ] ],
									"264" : [
											"Kon Tum",
											[
													{
														"id" : "770",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110ak Gl\u00eai"
													},
													{
														"id" : "767",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110ak H\u00e0"
													},
													{
														"id" : "768",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110ak T\u00f4"
													},
													{
														"id" : "19101",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ia HDrai"
													},
													{
														"id" : "773",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kon Plong"
													},
													{
														"id" : "772",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kon R\u1eaby"
													},
													{
														"id" : "769",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ng\u1ecdc H\u1ed3i"
													},
													{
														"id" : "771",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Sa Th\u1ea7y"
													},
													{
														"id" : "774",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tu M\u01a1 R\u00f4ng"
													},
													{
														"id" : "766",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Kon Tum"
													} ] ],
									"246" : [
											"Lai Ch\u00e2u",
											[
													{
														"id" : "1109",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n N\u1eadm Nh\u00f9n"
													},
													{
														"id" : "780",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u01b0\u1eddng T\u00e8"
													},
													{
														"id" : "778",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Phong Th\u1ed5"
													},
													{
														"id" : "779",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u00ecn H\u1ed3"
													},
													{
														"id" : "776",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tam \u0110\u01b0\u1eddng"
													},
													{
														"id" : "781",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Uy\u00ean"
													},
													{
														"id" : "777",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Than Uy\u00ean"
													},
													{
														"id" : "775",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Lai Ch\u00e2u"
													} ] ],
									"286" : [
											"L\u00e2m \u0110\u1ed3ng",
											[
													{
														"id" : "805",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u00e1t Ti\u00ean"
													},
													{
														"id" : "804",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ea3o L\u00e2m"
													},
													{
														"id" : "806",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Di Linh"
													},
													{
														"id" : "811",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ea1c D\u01b0\u01a1ng"
													},
													{
														"id" : "812",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u00e2m H\u00e0"
													},
													{
														"id" : "808",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea1 Huoai"
													},
													{
														"id" : "809",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea1 T\u1ebbh"
													},
													{
														"id" : "807",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110am R\u00f4ng"
													},
													{
														"id" : "810",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u01a1n D\u01b0\u01a1ng"
													},
													{
														"id" : "813",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ee9c Tr\u1ecdng"
													},
													{
														"id" : "803",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 B\u1ea3o L\u1ed9c"
													},
													{
														"id" : "802",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 \u0110\u00e0 L\u1ea1t"
													} ] ],
									"247" : [
											"L\u1ea1ng S\u01a1n",
											[
													{
														"id" : "789",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Chi L\u0103ng"
													},
													{
														"id" : "783",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u00e0ng \u0110\u1ecbnh"
													},
													{
														"id" : "788",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00ecnh L\u1eadp"
													},
													{
														"id" : "792",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1eafc S\u01a1n"
													},
													{
														"id" : "791",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh Gia"
													},
													{
														"id" : "786",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Cao L\u1ed9c"
													},
													{
														"id" : "785",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1eefu L\u0169ng"
													},
													{
														"id" : "787",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ed9c B\u00ecnh"
													},
													{
														"id" : "784",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0103n L\u00e3ng"
													},
													{
														"id" : "790",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0103n Quan"
													},
													{
														"id" : "782",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 L\u1ea1ng S\u01a1n"
													} ] ],
									"245" : [
											"L\u00e0o Cai",
											[
													{
														"id" : "795",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1eafc H\u00e0"
													},
													{
														"id" : "794",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ea3o Th\u1eafng"
													},
													{
														"id" : "796",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ea3o Y\u00ean"
													},
													{
														"id" : "797",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00e1t X\u00e1t"
													},
													{
														"id" : "798",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u01b0\u1eddng Kh\u01b0\u01a1ng"
													},
													{
														"id" : "799",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Sa Pa"
													},
													{
														"id" : "800",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Si Ma Cai"
													},
													{
														"id" : "801",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0103n B\u00e0n"
													},
													{
														"id" : "793",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 L\u00e0o Cai"
													} ] ],
									"285" : [
											"Long An",
											[
													{
														"id" : "1130",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ki\u1ebfn T\u01b0\u1eddng"
													},
													{
														"id" : "818",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ebfn L\u1ee9c"
													},
													{
														"id" : "815",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea7n Giu\u1ed9c"
													},
													{
														"id" : "820",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea7n \u0110\u01b0\u1edbc"
													},
													{
														"id" : "816",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "827",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ed9c H\u00f3a"
													},
													{
														"id" : "823",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n H\u01b0ng"
													},
													{
														"id" : "825",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Th\u1ea1nh"
													},
													{
														"id" : "821",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Tr\u1ee5"
													},
													{
														"id" : "819",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ea1nh Ho\u00e1"
													},
													{
														"id" : "817",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ee7 Th\u1eeba"
													},
													{
														"id" : "824",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh H\u01b0ng"
													},
													{
														"id" : "822",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ee9c Ho\u00e0"
													},
													{
														"id" : "826",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ee9c Hu\u1ec7"
													},
													{
														"id" : "814",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 T\u00e2n An"
													} ] ],
									"248" : [
											"Nam \u0110\u1ecbnh",
											[
													{
														"id" : "833",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nam Tr\u1ef1c"
													},
													{
														"id" : "835",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u1ee5 B\u1ea3n"
													},
													{
														"id" : "830",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Giao Th\u1ee7y"
													},
													{
														"id" : "831",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1ea3i H\u1eadu"
													},
													{
														"id" : "837",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ef9 L\u1ed9c"
													},
													{
														"id" : "832",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ngh\u0129a H\u01b0ng"
													},
													{
														"id" : "834",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u1ef1c Ninh"
													},
													{
														"id" : "829",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Xu\u00e2n Tr\u01b0\u1eddng"
													},
													{
														"id" : "836",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u00dd Y\u00ean"
													},
													{
														"id" : "828",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Nam \u0110\u1ecbnh"
													} ] ],
									"249" : [
											"Ngh\u1ec7 An",
											[
													{
														"id" : "1131",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb x\u00e3 Ho\u00e0ng Mai"
													},
													{
														"id" : "841",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Anh S\u01a1n"
													},
													{
														"id" : "842",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Con Cu\u00f4ng"
													},
													{
														"id" : "843",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Di\u1ec5n Ch\u00e2u"
													},
													{
														"id" : "845",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u01b0ng Nguy\u00ean"
													},
													{
														"id" : "847",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n K\u1ef3 S\u01a1n"
													},
													{
														"id" : "848",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nam \u0110\u00e0n"
													},
													{
														"id" : "849",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nghi L\u1ed9c"
													},
													{
														"id" : "850",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ngh\u0129a \u0110\u00e0n"
													},
													{
														"id" : "851",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ebf Phong"
													},
													{
														"id" : "846",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ef3 Ch\u00e2u"
													},
													{
														"id" : "852",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ef3 H\u1ee3p"
													},
													{
														"id" : "853",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ef3nh L\u01b0u"
													},
													{
														"id" : "854",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n K\u1ef3"
													},
													{
														"id" : "856",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh Ch\u01b0\u01a1ng"
													},
													{
														"id" : "855",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u01b0\u01a1ng D\u01b0\u01a1ng"
													},
													{
														"id" : "857",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean Th\u00e0nh"
													},
													{
														"id" : "844",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00f4 L\u01b0\u01a1ng"
													},
													{
														"id" : "838",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Vinh"
													},
													{
														"id" : "839",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 C\u1eeda L\u00f2"
													},
													{
														"id" : "840",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Th\u00e1i H\u00f2a"
													} ] ],
									"250" : [
											"Ninh B\u00ecnh",
											[
													{
														"id" : "861",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Gia Vi\u1ec5n"
													},
													{
														"id" : "860",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Hoa L\u01b0"
													},
													{
														"id" : "864",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Kim S\u01a1n"
													},
													{
														"id" : "862",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nho Quan"
													},
													{
														"id" : "865",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean Kh\u00e1nh"
													},
													{
														"id" : "863",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean M\u00f4"
													},
													{
														"id" : "858",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Ninh B\u00ecnh"
													},
													{
														"id" : "859",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Tam \u0110i\u1ec7p"
													} ] ],
									"287" : [
											"Ninh Thu\u1eadn",
											[
													{
														"id" : "867",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00e1c \u00c1i"
													},
													{
														"id" : "868",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ninh H\u1ea3i"
													},
													{
														"id" : "869",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ninh Ph\u01b0\u1edbc"
													},
													{
														"id" : "870",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ninh S\u01a1n"
													},
													{
														"id" : "872",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thu\u1eadn B\u1eafc"
													},
													{
														"id" : "871",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thu\u1eadn Nam"
													},
													{
														"id" : "866",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Phan Rang"
													} ] ],
									"251" : [
											"Ph\u00fa Th\u1ecd",
											[
													{
														"id" : "880",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea9m Kh\u00ea"
													},
													{
														"id" : "878",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1ea1 H\u00f2a"
													},
													{
														"id" : "879",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u00e2m Thao"
													},
													{
														"id" : "875",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00f9 Ninh"
													},
													{
														"id" : "882",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tam N\u00f4ng"
													},
													{
														"id" : "885",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n S\u01a1n"
													},
													{
														"id" : "877",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh Ba"
													},
													{
														"id" : "884",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh S\u01a1n"
													},
													{
														"id" : "883",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thanh Th\u1ee7y"
													},
													{
														"id" : "881",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean L\u1eadp"
													},
													{
														"id" : "876",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110oan H\u00f9ng"
													},
													{
														"id" : "873",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Vi\u1ec7t Tr\u00ec"
													},
													{
														"id" : "874",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ph\u00fa Th\u1ecd"
													} ] ],
									"266" : [
											"Ph\u00fa Y\u00ean",
											[
													{
														"id" : "895",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Ho\u00e0"
													},
													{
														"id" : "893",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u01a1n Ho\u00e0"
													},
													{
														"id" : "894",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u00f4ng Hinh"
													},
													{
														"id" : "889",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2y H\u00f2a"
													},
													{
														"id" : "890",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tuy An"
													},
													{
														"id" : "888",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00f4ng H\u00f2a"
													},
													{
														"id" : "892",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ed3ng Xu\u00e2n"
													},
													{
														"id" : "886",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Tuy H\u00f2a"
													},
													{
														"id" : "887",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 S\u00f4ng C\u1ea7u"
													} ] ],
									"267" : [
											"Qu\u1ea3ng B\u00ecnh",
											[
													{
														"id" : "1122",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ba \u0110\u1ed3n"
													},
													{
														"id" : "900",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ed1 Tr\u1ea1ch"
													},
													{
														"id" : "902",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ec7 Th\u1ee7y"
													},
													{
														"id" : "897",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Minh H\u00f3a"
													},
													{
														"id" : "901",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ea3ng Ninh"
													},
													{
														"id" : "899",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ea3ng Tr\u1ea1ch"
													},
													{
														"id" : "898",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tuy\u00ean H\u00f3a"
													},
													{
														"id" : "896",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 \u0110\u1ed3ng H\u1edbi"
													} ] ],
									"269" : [
											"Qu\u1ea3ng Nam",
											[
													{
														"id" : "918",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Ninh"
													},
													{
														"id" : "1096",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n N\u00fai Th\u00e0nh"
													},
													{
														"id" : "913",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1eafc Tr\u00e0 My"
													},
													{
														"id" : "906",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Duy Xuy\u00ean"
													},
													{
														"id" : "910",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Hi\u1ec7p \u0110\u1ee9c"
													},
													{
														"id" : "915",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nam Giang"
													},
													{
														"id" : "914",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nam Tr\u00e0 My"
													},
													{
														"id" : "919",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n N\u00f4ng S\u01a1n"
													},
													{
														"id" : "911",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u01b0\u1edbc S\u01a1n"
													},
													{
														"id" : "909",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ebf S\u01a1n"
													},
													{
														"id" : "917",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2y Giang"
													},
													{
														"id" : "905",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u0103ng B\u00ecnh"
													},
													{
														"id" : "912",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ti\u00ean Ph\u01b0\u1edbc"
													},
													{
														"id" : "908",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea1i L\u1ed9c"
													},
													{
														"id" : "907",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110i\u1ec7n B\u00e0n"
													},
													{
														"id" : "916",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00f4ng Giang"
													},
													{
														"id" : "904",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 H\u1ed9i An"
													},
													{
														"id" : "903",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Tam K\u1ef3"
													} ] ],
									"270" : [
											"Qu\u1ea3ng Ng\u00e3i",
											[
													{
														"id" : "930",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2y Tr\u00e0"
													},
													{
														"id" : "921",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ba T\u01a1"
													},
													{
														"id" : "922",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh S\u01a1n"
													},
													{
														"id" : "933",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u00fd S\u01a1n"
													},
													{
														"id" : "924",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Minh Long"
													},
													{
														"id" : "925",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ed9 \u0110\u1ee9c"
													},
													{
														"id" : "926",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ngh\u0129a H\u00e0nh"
													},
													{
														"id" : "927",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u01a1n H\u00e0"
													},
													{
														"id" : "928",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u01a1n T\u00e2y"
													},
													{
														"id" : "929",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u01a1n T\u1ecbnh"
													},
													{
														"id" : "931",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u00e0 B\u1ed3ng"
													},
													{
														"id" : "932",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u01b0 Ngh\u0129a"
													},
													{
														"id" : "923",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ee9c Ph\u1ed5"
													},
													{
														"id" : "920",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Qu\u1ea3ng Ng\u00e3i"
													} ] ],
									"252" : [
											"Qu\u1ea3ng Ninh",
											[
													{
														"id" : "948",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ba Ch\u1ebd"
													},
													{
														"id" : "945",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh Li\u00eau"
													},
													{
														"id" : "947",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u00f4 T\u00f4"
													},
													{
														"id" : "941",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1ea3i H\u00e0"
													},
													{
														"id" : "940",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ho\u00e0nh B\u1ed3"
													},
													{
														"id" : "944",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ti\u00ean Y\u00ean"
													},
													{
														"id" : "939",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u00e2n \u0110\u1ed3n"
													},
													{
														"id" : "942",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea7m H\u00e0"
													},
													{
														"id" : "943",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00f4ng Tri\u1ec1u"
													},
													{
														"id" : "936",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 C\u1ea9m Ph\u1ea3"
													},
													{
														"id" : "934",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 H\u1ea1 Long"
													},
													{
														"id" : "935",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 M\u00f3ng C\u00e1i"
													},
													{
														"id" : "937",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 U\u00f4ng B\u00ed"
													},
													{
														"id" : "938",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Qu\u1ea3ng Y\u00ean"
													} ] ],
									"268" : [
											"Qu\u1ea3ng Tr\u1ecb",
											[
													{
														"id" : "958",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ed3n C\u1ecf"
													},
													{
														"id" : "952",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Cam L\u1ed9"
													},
													{
														"id" : "953",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Gio Linh"
													},
													{
														"id" : "954",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1ea3i L\u0103ng"
													},
													{
														"id" : "955",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u01b0\u1edbng Ho\u00e1"
													},
													{
														"id" : "957",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tri\u1ec7u Phong"
													},
													{
														"id" : "956",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh Linh"
													},
													{
														"id" : "951",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110akr\u00f4ng"
													},
													{
														"id" : "949",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 \u0110\u00f4ng H\u00e0"
													},
													{
														"id" : "950",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Qu\u1ea3ng Tr\u1ecb"
													} ] ],
									"288" : [
											"S\u00f3c Tr\u0103ng",
											[
													{
														"id" : "965",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ef9 T\u00fa"
													},
													{
														"id" : "1124",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea1i Ngh\u0129a"
													},
													{
														"id" : "969",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "967",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u00f9 Lao Dung"
													},
													{
														"id" : "966",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n K\u1ebf S\u00e1ch"
													},
													{
														"id" : "961",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Long Ph\u00fa"
													},
													{
														"id" : "962",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ef9 Xuy\u00ean"
													},
													{
														"id" : "964",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ng\u00e3 N\u0103m"
													},
													{
														"id" : "963",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ea1nh Tr\u1ecb"
													},
													{
														"id" : "968",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u1ea7n \u0110\u1ec1"
													},
													{
														"id" : "959",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 S\u00f3c Tr\u0103ng"
													},
													{
														"id" : "960",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 V\u0129nh Ch\u00e2u"
													} ] ],
									"253" : [
											"S\u01a1n La",
											[
													{
														"id" : "1132",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u00e2n H\u1ed3"
													},
													{
														"id" : "980",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1eafc Y\u00ean"
													},
													{
														"id" : "971",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Mai S\u01a1n"
													},
													{
														"id" : "973",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u1ed9c Ch\u00e2u"
													},
													{
														"id" : "974",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u01b0\u1eddng La"
													},
													{
														"id" : "975",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00f9 Y\u00ean"
													},
													{
														"id" : "976",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ef3nh Nhai"
													},
													{
														"id" : "977",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u00f4ng M\u00e3"
													},
													{
														"id" : "978",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u1ed1p C\u1ed9p"
													},
													{
														"id" : "979",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thu\u1eadn Ch\u00e2u"
													},
													{
														"id" : "972",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean Ch\u00e2u"
													},
													{
														"id" : "970",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 S\u01a1n La"
													} ] ],
									"289" : [
											"T\u00e2y Ninh",
											[
													{
														"id" : "985",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u1ebfn C\u1ea7u"
													},
													{
														"id" : "986",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "988",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n D\u01b0\u01a1ng Minh Ch\u00e2u"
													},
													{
														"id" : "983",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n G\u00f2 D\u1ea7u"
													},
													{
														"id" : "982",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00f2a Th\u00e0nh"
													},
													{
														"id" : "987",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Bi\u00ean"
													},
													{
														"id" : "989",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Ch\u00e2u"
													},
													{
														"id" : "984",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u1ea3ng B\u00e0ng"
													},
													{
														"id" : "981",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 T\u00e2y Ninh"
													} ] ],
									"254" : [
											"Th\u00e1i B\u00ecnh",
											[
													{
														"id" : "992",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ti\u1ec1n H\u1ea3i"
													},
													{
														"id" : "997",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u01b0ng H\u00e0"
													},
													{
														"id" : "993",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ki\u1ebfn X\u01b0\u01a1ng"
													},
													{
														"id" : "996",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ef3nh Ph\u1ee5"
													},
													{
														"id" : "994",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u00e1i Th\u1ee5y"
													},
													{
														"id" : "991",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0169 Th\u01b0"
													},
													{
														"id" : "995",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00f4ng H\u01b0ng"
													},
													{
														"id" : "990",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Th\u00e1i B\u00ecnh"
													} ] ],
									"255" : [
											"Th\u00e1i Nguy\u00ean",
											[
													{
														"id" : "1004",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa B\u00ecnh"
													},
													{
														"id" : "1003",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u1ed5 Y\u00ean"
													},
													{
														"id" : "1005",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa L\u01b0\u01a1ng"
													},
													{
														"id" : "1006",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u00f5 Nhai"
													},
													{
														"id" : "1000",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ea1i T\u1eeb"
													},
													{
														"id" : "1001",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ecbnh H\u00f3a"
													},
													{
														"id" : "1002",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u1ed3ng H\u1ef7"
													},
													{
														"id" : "998",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Th\u00e1i Nguy\u00ean"
													},
													{
														"id" : "999",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 S\u00f4ng C\u00f4ng"
													} ] ],
									"256" : [
											"Thanh H\u00f3a",
											[
													{
														"id" : "1012",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n \u0110\u00f4ng S\u01a1n"
													},
													{
														"id" : "1010",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00e1 Th\u01b0\u1edbc"
													},
													{
														"id" : "1011",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea9m Th\u1ee7y"
													},
													{
														"id" : "1013",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00e0 Trung"
													},
													{
														"id" : "1014",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u1eadu L\u1ed9c"
													},
													{
														"id" : "1015",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ho\u1eb1ng H\u00f3a"
													},
													{
														"id" : "1016",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Lang Ch\u00e1nh"
													},
													{
														"id" : "1017",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u01b0\u1eddng L\u00e1t"
													},
													{
														"id" : "1018",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nga S\u01a1n"
													},
													{
														"id" : "1019",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ng\u1ecdc L\u1eb7c"
													},
													{
														"id" : "1020",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nh\u01b0 Thanh"
													},
													{
														"id" : "1021",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nh\u01b0 Xu\u00e2n"
													},
													{
														"id" : "1022",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n N\u00f4ng C\u1ed1ng"
													},
													{
														"id" : "1023",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Quan H\u00f3a"
													},
													{
														"id" : "1024",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Quan S\u01a1n"
													},
													{
														"id" : "1025",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ea3ng X\u01b0\u01a1ng"
													},
													{
														"id" : "1026",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ea1ch Th\u00e0nh"
													},
													{
														"id" : "1027",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Thi\u1ec7u H\u00f3a"
													},
													{
														"id" : "1028",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u1ecd Xu\u00e2n"
													},
													{
														"id" : "1029",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Th\u01b0\u1eddng Xu\u00e2n"
													},
													{
														"id" : "1030",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u0129nh Gia"
													},
													{
														"id" : "1031",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tri\u1ec7u S\u01a1n"
													},
													{
														"id" : "1032",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh L\u1ed9c"
													},
													{
														"id" : "1033",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean \u0110\u1ecbnh"
													},
													{
														"id" : "1007",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Thanh H\u00f3a"
													},
													{
														"id" : "1008",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 B\u1ec9m S\u01a1n"
													},
													{
														"id" : "1009",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 S\u1ea7m S\u01a1n"
													} ] ],
									"263" : [
											"Th\u1eeba Thi\u00ean Hu\u1ebf",
											[
													{
														"id" : "1037",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Phong \u0110i\u1ec1n"
													},
													{
														"id" : "1042",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n A L\u01b0\u1edbi"
													},
													{
														"id" : "1041",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Nam \u0110\u00f4ng"
													},
													{
														"id" : "1040",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa L\u1ed9c"
													},
													{
														"id" : "1039",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ph\u00fa Vang"
													},
													{
														"id" : "1038",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Qu\u1ea3ng \u0110i\u1ec1n"
													},
													{
														"id" : "1035",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 H\u01b0\u01a1ng Th\u1ee7y"
													},
													{
														"id" : "1036",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 H\u01b0\u01a1ng Tr\u00e0"
													},
													{
														"id" : "1034",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Hu\u1ebf"
													} ] ],
									"290" : [
											"Ti\u1ec1n Giang",
											[
													{
														"id" : "1046",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Cai L\u1eady"
													},
													{
														"id" : "1125",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n An H\u1eefu"
													},
													{
														"id" : "1045",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u00e1i B\u00e8"
													},
													{
														"id" : "1047",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "1048",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u1ee3 G\u1ea1o"
													},
													{
														"id" : "1049",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n G\u00f2 C\u00f4ng T\u00e2y"
													},
													{
														"id" : "1050",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n G\u00f2 C\u00f4ng \u0110\u00f4ng"
													},
													{
														"id" : "1052",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Ph\u00fa \u0110\u00f4ng"
													},
													{
														"id" : "1051",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n T\u00e2n Ph\u01b0\u1edbc"
													},
													{
														"id" : "1043",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 M\u1ef9 Tho"
													},
													{
														"id" : "1044",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 G\u00f2 C\u00f4ng"
													} ] ],
									"291" : [
											"Tr\u00e0 Vinh",
											[
													{
														"id" : "1054",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u00e0ng Long"
													},
													{
														"id" : "1056",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea7u K\u00e8"
													},
													{
														"id" : "1059",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n C\u1ea7u Ngang"
													},
													{
														"id" : "1058",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ch\u00e2u Th\u00e0nh"
													},
													{
														"id" : "1060",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Duy\u00ean H\u1ea3i"
													},
													{
														"id" : "1055",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Ti\u1ec3u C\u1ea7n"
													},
													{
														"id" : "1057",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u00e0 C\u00fa"
													},
													{
														"id" : "1053",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Tr\u00e0 Vinh"
													} ] ],
									"257" : [
											"Tuy\u00ean Quang",
											[
													{
														"id" : "1063",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Chi\u00eam Ho\u00e1"
													},
													{
														"id" : "1064",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n H\u00e0m Y\u00ean"
													},
													{
														"id" : "1067",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u00e2m B\u00ecnh"
													},
													{
														"id" : "1062",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Na Hang"
													},
													{
														"id" : "1066",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u01a1n D\u01b0\u01a1ng"
													},
													{
														"id" : "1065",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean S\u01a1n"
													},
													{
														"id" : "1061",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Tuy\u00ean Quang"
													} ] ],
									"292" : [
											"V\u0129nh Long",
											[
													{
														"id" : "1069",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh Minh"
													},
													{
														"id" : "1074",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0169ng Li\u00eam"
													},
													{
														"id" : "1070",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh T\u00e2n"
													},
													{
														"id" : "1072",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Long H\u1ed3"
													},
													{
														"id" : "1073",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Mang Th\u00edt"
													},
													{
														"id" : "1071",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tam B\u00ecnh"
													},
													{
														"id" : "1075",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u00e0 \u00d4n"
													},
													{
														"id" : "1068",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 V\u0129nh Long"
													} ] ],
									"258" : [
											"V\u0129nh Ph\u00fac",
											[
													{
														"id" : "1080",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u00ea Linh"
													},
													{
														"id" : "1082",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tam \u0110\u1ea3o"
													},
													{
														"id" : "1079",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n B\u00ecnh Xuy\u00ean"
													},
													{
														"id" : "1078",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1eadp Th\u1ea1ch"
													},
													{
														"id" : "1085",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n S\u00f4ng L\u00f4"
													},
													{
														"id" : "1084",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tam D\u01b0\u01a1ng"
													},
													{
														"id" : "1081",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0129nh T\u01b0\u1eddng"
													},
													{
														"id" : "1083",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean L\u1ea1c"
													},
													{
														"id" : "1076",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 V\u0129nh Y\u00ean"
													},
													{
														"id" : "1077",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ph\u00fac Y\u00ean"
													} ] ],
									"259" : [
											"Y\u00ean B\u00e1i",
											[
													{
														"id" : "1089",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n L\u1ee5c Y\u00ean"
													},
													{
														"id" : "1094",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n M\u00f9 Cang Ch\u1ea3i"
													},
													{
														"id" : "1093",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u1ea1m T\u1ea5u"
													},
													{
														"id" : "1090",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Tr\u1ea5n Y\u00ean"
													},
													{
														"id" : "1092",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0103n Ch\u1ea5n"
													},
													{
														"id" : "1091",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n V\u0103n Y\u00ean"
													},
													{
														"id" : "1088",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Huy\u1ec7n Y\u00ean B\u00ecnh"
													},
													{
														"id" : "1086",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u00e0nh Ph\u1ed1 Y\u00ean B\u00e1i"
													},
													{
														"id" : "1087",
														"address" : "",
														"is_gst_free" : "0",
														"name" : "Th\u1ecb X\u00e3 Ngh\u0129a L\u1ed9"
													} ] ]
								};
								var emptyOpt = '<option value="">Lựa chọn</option>';
							</script>

							<form id="delivery_information_form"
								action="/checkout/step/deliveryinformation/" method="post"
								novalidate="novalidate">
								<input type="hidden"
									value="3647d94ef785fbeed5ef6e0c04aabdabd1c46e76"
									name="FORM_TOKEN">
								<div class="sku-delivery-notification"></div>

								<input type="hidden"
									name="ThreeStepShippingAddressForm[shipping_to]"
									value="residential">

								<div data-form="shipping-new-address" data-type="0">

									<div class="checkout-fields -shipping">

										<div class="checkout-field _row" data-form="field">
											<div class="checkout-field _main">
												<div class="checkout-field _title">
													<label class="checkout-field _label"> Tên </label>
												</div>
												<div class="checkout-field _input-wrapper">
													<input class="checkout-field _input-text" maxlength="50"
														placeholder="Họ &amp; tên" data-field="input"
														name="ThreeStepShippingAddressForm[first_name]"
														id="ThreeStepShippingAddressForm_first_name" type="text">
												</div>
												<div class="checkout-field _message" data-field="message">
												</div>
											</div>
										</div>

										<div class="checkout-field _row" data-form="field">
											<div class="checkout-field _main">
												<div class="checkout-field _title">
													<label class="checkout-field _label"> Email </label>
												</div>
												<div class="checkout-field _input-wrapper">
													<input class="checkout-field _input-text"
														placeholder="Xin vui lòng nhập email:" data-field="input"
														name="ThreeStepShippingAddressForm[email]"
														id="ThreeStepShippingAddressForm_email" type="text">
												</div>
												<div class="checkout-field _message" data-field="message">
												</div>
											</div>
										</div>
										
										<div class="checkout-field _row" data-form="field">
											<div class="checkout-field _main">
												<div class="checkout-field _title">
													<label class="checkout-field _label"> Nhà Đài </label>
												</div>
												<div class="checkout-field _input-wrapper">
													<input class="checkout-field _input-text"
														placeholder="Xin vui lòng nhập nhà đài:" data-field="input"
														name="ThreeStepShippingAddressForm[email]"
														id="ThreeStepShippingAddressForm_email" type="text">
												</div>
												<div class="checkout-field _message" data-field="message">
												</div>
											</div>
										</div>
										
										<div class="checkout-field _row" data-form="field">
											<div class="checkout-field _main">
												<div class="checkout-field _title">
													<label class="checkout-field _label"> Số serial </label>
												</div>
												<div class="checkout-field _input-wrapper">
													<input class="checkout-field _input-text"
														placeholder="Xin vui lòng nhập ma số serial:" data-field="input"
														name="ThreeStepShippingAddressForm[email]"
														id="ThreeStepShippingAddressForm_email" type="text">
												</div>
												<div class="checkout-field _message" data-field="message">
												</div>
											</div>
										</div>
										
										<div class="checkout-field _row" data-form="field">
											<div class="checkout-field _main">
												<div class="checkout-field _title">
													<label class="checkout-field _label"> Mệnh giá </label>
												</div>
												<div class="checkout-field _input-wrapper">
													<input class="checkout-field _input-text"
														placeholder="Xin vui lòng nhập mệnh giá:" data-field="input"
														name="ThreeStepShippingAddressForm[email]"
														id="ThreeStepShippingAddressForm_email" type="text">
												</div>
												<div class="checkout-field _message" data-field="message">
												</div>
											</div>
										</div>

										<div class="checkout-field _row" data-form="field">
											<div class="checkout-field _main">
												<div class="checkout-field _title">
													<label class="checkout-field _label"> Điện thoại di
														động </label>
												</div>
												<div class="checkout-field _input-wrapper">
													<input class="checkout-field _input-phone -no-prefix"
														maxlength="20" placeholder="Số điện thoại"
														data-field="input"
														name="ThreeStepShippingAddressForm[phone]"
														id="ThreeStepShippingAddressForm_phone" type="text">
												</div>
												<div class="checkout-field _message" data-field="message">
												</div>
											</div>
											<div class="checkout-field _notice">
												<div class="checkout-field _explanation">Tổng đài tự động của chúng tôi sẽ liên hệ quý khách
													theo số điện thoại này để xác nhận hoặc thông báo giao hàng
												</div>
											</div>
										</div>

									</div>

								</div>

								<div class="billing_form_placeholder"></div>

								<div id="billing_form_wrapper"
									class="bill-information _wrapper billaddress_wrap js-query-form-address"
									data-type="1">

									<div class="bill-information _heading">

										<label class="bill-information _toggle-label"> <span
											class="bill-information _toggle-input-wrapper"> <span
												class="payment_radio_check"> <input
													id="ytThreeStepBillingAddressForm_isSameShipping"
													type="hidden" value="1"
													name="ThreeStepBillingAddressForm[isSameShipping]"><input
													class="checkbox_notIsSameShipping" value="0"
													name="ThreeStepBillingAddressForm[isSameShipping]"
													id="ThreeStepBillingAddressForm_isSameShipping"
													type="checkbox">
											</span>
										</span> <span class="bill-information _toggle-text"> <label
												for="ThreeStepBillingAddressForm_isSameShipping">Thông
													tin thanh toán khác địa chỉ giao hàng</label>
										</span>
										</label>

									</div>

									<div id="billing_address_form"
										class="bill-information _form-wrapper billing_address_form hidden">

										<div class="bill-information _scope">

											<h3 class="bill-information _scope-title">Địa chỉ thanh
												toán</h3>

											<div class="bill-information _scope-options">
												<div class="billing-country-scope bill-to-country-local ">
													<span
														class="billing-information _current-scope bill-to-country">
														Việt Nam </span> | <a href="javascript:void(0)"
														id="billing_to-different-country"
														class="bill-information _scope-option change-billing-country-scope">
														Quốc tế </a>
												</div>
												<div
													class="billing-country-scope bill-to-country-international disabled-billing">
													<a href="javascript:void(0)" id="billing_to-locals-country"
														class="bill-information _scope-option change-billing-country-scope">
														Việt Nam </a> | <span
														class="billing-information _current-scope bill-to-country">
														Quốc tế </span>
												</div>
											</div>

										</div>

										<div class="billing-country-scope bill-to-country-local">
											<div id="billing_local_address_form"
												class="payment_billingform">

												<div class="checkout-fields -billing">

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label class="checkout-field _label"> Tên </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<input class="checkout-field _input-text" maxlength="50"
																	placeholder="Tên bạn" data-field="input"
																	name="ThreeStepBillingAddressForm[first_name]"
																	id="ThreeStepBillingAddressForm_first_name" type="text"
																	disabled="">
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label">
																	Tỉnh/Thành phố </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<select class="checkout-field _select location billing"
																	rel="location_0" data-field="input"
																	name="ThreeStepBillingAddressForm[location][0]"
																	id="ThreeStepBillingAddressForm_location_0" disabled="">
																	<option value="271">Hồ Chí Minh</option>
																	<option value="232">Hà Nội</option>
																	<option value="260">Đà Nẵng</option>
																	<option value="280">Cần Thơ</option>
																	<option value="242">Hải Phòng</option>
																	<option value="272">An Giang</option>
																	<option value="431">Bà Rịa Vũng Tàu</option>
																	<option value="234">Bắc Giang</option>
																	<option value="233">Bắc Kạn</option>
																	<option value="276">Bạc Liêu</option>
																	<option value="235">Bắc Ninh</option>
																	<option value="277">Bến Tre</option>
																	<option value="261">Bình Định</option>
																	<option value="273">Bình Dương</option>
																	<option value="274">Bình Phước</option>
																	<option value="278">Bình Thuận</option>
																	<option value="279">Cà Mau</option>
																	<option value="236">Cao Bằng</option>
																	<option value="558">Đăk Lăk</option>
																	<option value="577">Đăk Nông</option>
																	<option value="237">Điện Biên</option>
																	<option value="281">Đồng Nai</option>
																	<option value="282">Đồng Tháp</option>
																	<option value="262">Gia Lai</option>
																	<option value="238">Hà Giang</option>
																	<option value="239">Hà Nam</option>
																	<option value="240">Hà Tĩnh</option>
																	<option value="241">Hải Dương</option>
																	<option value="283">Hậu Giang</option>
																	<option value="244">Hòa Bình</option>
																	<option value="243">Hưng Yên</option>
																	<option value="265">Khánh Hòa</option>
																	<option value="284">Kiên Giang</option>
																	<option value="264">Kon Tum</option>
																	<option value="246">Lai Châu</option>
																	<option value="286">Lâm Đồng</option>
																	<option value="247">Lạng Sơn</option>
																	<option value="245">Lào Cai</option>
																	<option value="285">Long An</option>
																	<option value="248">Nam Định</option>
																	<option value="249">Nghệ An</option>
																	<option value="250">Ninh Bình</option>
																	<option value="287">Ninh Thuận</option>
																	<option value="251">Phú Thọ</option>
																	<option value="266">Phú Yên</option>
																	<option value="267">Quảng Bình</option>
																	<option value="269">Quảng Nam</option>
																	<option value="270">Quảng Ngãi</option>
																	<option value="252">Quảng Ninh</option>
																	<option value="268">Quảng Trị</option>
																	<option value="288">Sóc Trăng</option>
																	<option value="253">Sơn La</option>
																	<option value="289">Tây Ninh</option>
																	<option value="254">Thái Bình</option>
																	<option value="255">Thái Nguyên</option>
																	<option value="256">Thanh Hóa</option>
																	<option value="263">Thừa Thiên Huế</option>
																	<option value="290">Tiền Giang</option>
																	<option value="291">Trà Vinh</option>
																	<option value="257">Tuyên Quang</option>
																	<option value="292">Vĩnh Long</option>
																	<option value="258">Vĩnh Phúc</option>
																	<option value="259">Yên Bái</option>
																</select>
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label">
																	Quận/huyện </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<select class="checkout-field _select location billing "
																	rel="location_1" data-field="input"
																	name="ThreeStepBillingAddressForm[location][1]"
																	id="ThreeStepBillingAddressForm_location_1" disabled="">
																	<option value="">Lựa chọn</option>
																	<option value="718">Quận 1</option>
																	<option value="719">Quận 2</option>
																	<option value="720">Quận 3</option>
																	<option value="721">Quận 4</option>
																	<option value="722">Quận 5</option>
																	<option value="723">Quận 6</option>
																	<option value="724">Quận 7</option>
																	<option value="729">Quận 12</option>
																	<option value="725">Quận 8</option>
																	<option value="726">Quận 9</option>
																	<option value="727">Quận 10</option>
																	<option value="728">Quận 11</option>
																	<option value="730">Quận Bình Tân</option>
																	<option value="731">Quận Bình Thạnh</option>
																	<option value="732">Quận Gò Vấp</option>
																	<option value="733">Quận Phú Nhuận</option>
																	<option value="734">Quận Tân Bình</option>
																	<option value="735">Quận Tân Phú</option>
																	<option value="736">Quận Thủ Đức</option>
																	<option value="737">Huyện Bình Chánh</option>
																	<option value="738">Huyện Cần Giờ</option>
																	<option value="739">Huyện Củ Chi</option>
																	<option value="740">Huyện Hóc Môn</option>
																	<option value="741">Huyện Nhà Bè</option>
																</select>
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label">
																	Phường, xã </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<select class="checkout-field _select location billing"
																	rel="location_2" data-field="input"
																	name="ThreeStepBillingAddressForm[location][2]"
																	id="ThreeStepBillingAddressForm_location_2" disabled="">
																	<option value="">Lựa chọn</option>
																	<option value="8090">Phường Bến Nghé</option>
																	<option value="8091">Phường Bến Thành</option>
																	<option value="8092">Phường Cầu Kho</option>
																	<option value="8093">Phường Cầu Ông Lãnh</option>
																	<option value="8094">Phường Cô Giang</option>
																	<option value="8095">Phường Đa Kao</option>
																	<option value="6561">Nguyễn Cư Trinh</option>
																	<option value="8096">Phường Nguyễn Cư Trinh</option>
																	<option value="8097">Phường Nguyễn Thái Bình</option>
																	<option value="8098">Phường Phạm Ngũ Lão</option>
																	<option value="8099">Phường Tân Định</option>
																</select>
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label"> Địa
																	chỉ <span class="required" aria-required="true">(Số
																		nhà, đường) </span>
																</label>
															</div>
															<div class="checkout-field _input-wrapper">
																<textarea class="checkout-field _input-textarea"
																	rows="3" maxlength="255"
																	placeholder="Vui lòng điền CHÍNH XÁC &quot;tầng, số nhà, đường&quot; để tránh trường hợp đơn hàng bị hủy ngoài ý muốn"
																	data-field="input" data-address="vn"
																	name="ThreeStepBillingAddressForm[address1]"
																	id="ThreeStepBillingAddressForm_address1" disabled=""></textarea>
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label class="checkout-field _label"> Điện thoại
																	di động </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<input class="checkout-field _input-phone -no-prefix"
																	maxlength="20" placeholder="Số điện thoại"
																	data-field="input"
																	name="ThreeStepBillingAddressForm[phone]"
																	id="ThreeStepBillingAddressForm_phone" type="text"
																	disabled="">
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label class="checkout-field _label"> Mã số thuế
																</label>
															</div>
															<div class="checkout-field _input-wrapper">
																<input class="checkout-field _input-text"
																	placeholder="Mã số thuế" data-field="input"
																	name="ThreeStepBillingAddressForm[tax_code]"
																	id="ThreeStepBillingAddressForm_tax_code" type="text"
																	disabled="">
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
														<div class="checkout-field _notice">
															<div class="checkout-field _explanation">Những sản
																phẩm của nhà bán hàng sẽ được hỗ trợ nhận thông tin xuất
																hóa đơn trong vòng 24h kể từ khi quý khách đặt hàng
																thành công. Xin vui lòng liên hệ hotline 19001007 để cập
																nhật thông tin hóa đơn công ty.</div>
														</div>
													</div>




												</div>

											</div>
											<input value="239"
												name="ThreeStepBillingAddressForm[fk_country]"
												id="ThreeStepBillingAddressForm_fk_country" type="hidden"
												disabled="">
										</div>

										<div
											class="billing-country-scope bill-to-country-international disabled-billing">
											<div id="billing_foreign_address_form"
												class="payment_billingform">

												<div class="checkout-fields -billing">

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label class="checkout-field _label"> Tên </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<input
																	id="ThreeStepBillingAddressForm_first_name_foreign"
																	class="checkout-field _input-text" maxlength="50"
																	placeholder="Tên bạn" data-field="input"
																	name="ThreeStepBillingAddressForm[first_name]"
																	type="text" disabled="">
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label"> Địa
																	chỉ <span class="required" aria-required="true">(Số
																		nhà, đường) </span>
																</label>
															</div>
															<div class="checkout-field _input-wrapper">
																<textarea
																	id="ThreeStepBillingAddressForm_address1_foreign"
																	class="checkout-field _input-textarea" rows="3"
																	maxlength="255"
																	placeholder="Vui lòng điền CHÍNH XÁC &quot;tầng, số nhà, đường&quot; để tránh trường hợp đơn hàng bị hủy ngoài ý muốn"
																	data-field="input"
																	name="ThreeStepBillingAddressForm[address1]"
																	disabled=""></textarea>
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label">
																	Quận/huyện </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<input
																	id="ThreeStepBillingAddressForm_location_1_foreign"
																	class="checkout-field _input-text"
																	placeholder="Quận/Huyện" data-field="input"
																	name="ThreeStepBillingAddressForm[location][1]"
																	type="text" disabled="">
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label">
																	Tiểu bang / Tỉnh / Vùng </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<input
																	id="ThreeStepBillingAddressForm_location_0_foreign"
																	class="checkout-field _input-text"
																	placeholder="Tiểu bang / Tỉnh / Vùng của bạn"
																	data-field="input"
																	name="ThreeStepBillingAddressForm[location][0]"
																	type="text" disabled="">
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label"> Mã
																	bưu điện </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<input
																	id="ThreeStepBillingAddressForm_location_2_foreign"
																	class="checkout-field _input-text"
																	placeholder="Mã bưu điện của bạn" data-field="input"
																	name="ThreeStepBillingAddressForm[location][2]"
																	type="text" disabled="">
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label for="" class="checkout-field _label">
																	Quốc gia </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<select
																	id="ThreeStepBillingAddressForm_fk_country_foreign"
																	class="checkout-field _select location billing billing_foreign_country_select "
																	rel="fk_country" data-field="input"
																	name="ThreeStepBillingAddressForm[fk_country]"
																	disabled="">
																	<option value="">Lựa chọn</option>
																</select>
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>

													<div class="checkout-field _row" data-form="field">
														<div class="checkout-field _main">
															<div class="checkout-field _title">
																<label class="checkout-field _label"> Điện thoại
																	di động </label>
															</div>
															<div class="checkout-field _input-wrapper">
																<input id="ThreeStepBillingAddressForm_phone_foreign"
																	class="checkout-field _input-phone -no-prefix"
																	maxlength="20" placeholder="Số điện thoại"
																	data-field="input"
																	name="ThreeStepBillingAddressForm[phone]" type="text"
																	disabled="">
															</div>
															<div class="checkout-field _message" data-field="message">
															</div>
														</div>
													</div>




												</div>

												<input name="ThreeStepBillingAddressForm[tax_code]"
													id="ThreeStepBillingAddressForm_tax_code" type="hidden"
													disabled="">
											</div>
										</div>
									</div>
								</div>
								<input value="1"
									name="ThreeStepShippingAddressForm[createNewAddress]"
									id="ThreeStepShippingAddressForm_createNewAddress"
									type="hidden">
								<div
									class="delivery-information _wrapper hide shipping_options_area delivery-options-holder"
									id="shipping-fee-delivery-address_input"
									style="display: block;">
									<h3 class="delivery-information _title">Thông tin giao
										hàng</h3>
									<div class="delivery-information _options">


										<div class="delivery-option _item">
											<input
												class="delivery-option _radio shipping_fee_type -single"
												type="radio"
												name="shipping-group-6262f26123d40e7b65a44cca1e33384b"
												id="shipping_type__standard" data-provider=""
												value="standard" checked="checked"> <label
												class="delivery-option _label -full-width -single"
												for="shipping_type__standard"> <span
												class="delivery-option _title">Giao hàng tiêu chuẩn:
													22.000 VND </span> <span class="delivery-option _date lead_date"></span>
											</label>
										</div>
									</div>
								</div>

								<div class="checkout-field _submit-row -final-row"
									data-form="submit-wrapper" data-submit="new-address" >
									<input type="hidden" name="send" value="1"> <a class="btn btn-danger check_out" onclick="myFunction()" href="index.jsp">Tiếp tục</a>


<script>
function myFunction() {
    var txt;
    if (confirm("Đã mua hàng thành công, xin vui lòng check mail để biết thêm thông tin chi tiết") == true) {
        txt = "Đã mua hàng thành công, xin vui lòng check mail để biết thêm thông tin chi tiết";
    } else {
        txt = "Mua hàng không thành công";
    }
}
</script>
								</div>

							</form>
						</div>
					</div>
				</div>

			</div>

			<div class="checkout-main _sidebar">
				<div id="mini-cart" class="ch-box"
					style="position: relative; zoom: 1;">
					<div class="order_sum_container"></div>
				</div>
				<table class="SSLSecured" width="230" border="0" cellpadding="2"
					cellspacing="0"
					title="Click to Verify - This site chose Symantec SSL for secure e-commerce and confidential communications.">
					<tbody>
						<tr>
							<td align="center" valign="top">
								<div class="product-buyer-protection-wrap">
									<span class="product-buyer-protection__logo__image"></span> <span
										class="product-buyer-protection__text"> 100% BẢO VỆ
										NGƯỜI MUA HÀNG </span>
								</div>
								<div class="pci-dss-verisign pci-dss-verisign_checkout"></div>
							</td>
						</tr>
					</tbody>
				</table>
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