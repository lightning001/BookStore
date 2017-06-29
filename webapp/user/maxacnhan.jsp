<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhạp mã xác nhận</title>
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
								<h3>Nhập mã xác nhận</h3>
								<p>Xin vui lòng cung cấp mã xác cho số điện thoại này.</p>
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
											
										</div>

									</div>

								</div>

								<div class="billing_form_placeholder"></div>

								
								
								<div
									class="delivery-information _wrapper hide shipping_options_area delivery-options-holder"
									id="shipping-fee-delivery-address_input"
									style="display: block;">
									
										
									</div>
								</div>

								<div class="checkout-field _submit-row -final-row"
									data-form="submit-wrapper" data-submit="new-address">
									<input type="hidden" name="send" value="1"> <input
										type="submit" class="btn btn-danger check_out"
										value="Tiếp tục »" data-button="shipping">
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