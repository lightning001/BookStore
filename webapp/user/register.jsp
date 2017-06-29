<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="fb:app_id" content="376408899112473"/>
<meta name="description" content="">
<meta name="keywords" content="Doc truyen online, truyen kiem hiep, truyen tien hiep, truyen sac hiep, truyen ngon tinh, truyen trinh tham, vong du, truyen convert full text">
<meta name="robots" content="noindex">
<title>Đăng Ký Thành Viên</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/yamm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/chosen.css" rel="stylesheet">
<link rel="icon" type="image/png" href="img/favicon.png"/>
<link href="https://plus.google.com/103281900225927837176/" rel="author">
<script src="js/jquery-1.12.4.js"></script>
<script src="js/chosen.jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/csrf.js"></script>
<style>body{padding-top:60px;padding-bottom:40px;height:auto;}</style>
</head>
<body>

         <jsp:include page="header.jsp"></jsp:include>

      

      

<div class="container">
	<div class="row">
		<div class="span12">
			<div class="container">
				<div class="row">
					<div class="span12 auth">
						<h1 class="page-header">Đăng Ký Thành Viên</h1>
						<div class="alert alert-info">
							<p><b>Chú ý:</b> Các bạn trước đây đã đăng nhập bằng Facebook không cần đăng ký mới, các bạn có thể đăng nhập với thông tin như sau:</p>
							<p><b>Username:</b> Địa chỉ Email dùng để đăng nhập Facebook của các bạn. Ví dụ: <a class="__cf_email__" href="email-protection.htm" tppabs="http://truyenyy.com/cdn-cgi/l/email-protection" data-cfemail="c6a2afa3b3aaafa8aef7f486a1aba7afaae8a5a9ab">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-cfhash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-cfemail')){for(e='',r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+='%'+('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */</script></p>
							<p><b>Mật khẩu:</b> Giống hệt tên đăng nhập. Ví dụ: <a class="__cf_email__" href="email-protection.htm" tppabs="http://truyenyy.com/cdn-cgi/l/email-protection" data-cfemail="fa9e939f8f96939492cbc8ba9d979b9396d4999597">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-cfhash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-cfemail')){for(e='',r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+='%'+('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */</script></p>
							<p><i>Sau khi đăng nhập thành công, các bạn cần đổi mật khẩu để đảm bảo an toàn.</i></p>
						</div>
						<div class="row">
							<div class="span9">
								<form action="http://truyenyy.com/dang_ky/." method="post" role="form"><div style='display:none'><input type='hidden' name='csrfmiddlewaretoken' value='ANzD3jUNexdNQDAsiDHPskQPrXsv1mty'/></div>
									<div style='display:none'><input type='hidden' name='csrfmiddlewaretoken' value='ANzD3jUNexdNQDAsiDHPskQPrXsv1mty'/>
									</div>
									<div id="div_id_email" class="control-group required">
										<label for="id_email" class="control-label requiredField">Email<span class="asteriskField">*</span></label>
										<div class="controls"><input name="email" type="text" autofocus="autofocus" required="required" placeholder="Địa chỉ email" class="textinput textInput" id="id_email"/></div>
									</div>
									<div id="div_id_password" class="control-group required">
										<label for="id_password" class="control-label requiredField">Mật khẩu<span class="asteriskField">*</span></label>
										<div class="controls"><input name="password" placeholder="Mật khẩu" required="required" type="password" class="textinput textInput" id="id_password"/></div>
									</div>
									<div id="div_id_username" class="control-group required">
										<label for="id_username" class="control-label requiredField">Tên tài khoản<span class="asteriskField">*</span></label>
										<div class="controls"><input name="username" maxlength="30" type="text" required="required" placeholder="Tên tài khoản" class="textinput textInput" id="id_username"/>
									</div>
									</div>
									<p>
										<button type="submit" class="btn btn-primary" data-loading-text="Đang xử lí">
											<i class="icon-arrow-right"></i> Gửi thông tin
										</button>
										<button type="reset" class="btn btn-default">Xóa</button>
									</p>
									<p class="small">Lưu ý: Khi đăng ký tài khoản nghĩa là bạn đã đồng ý với Nội quy của website.</p>
								</form>
								<ul style="margin: 0">
									<li class="nav"><i class="icon-arrow-right"></i> <a href="index-1.htm" tppabs="http://truyenyy.com/dang_nhap/">Đăng nhập</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script>
				$(document).ready(function(){
					$('input.form-control').keyup(function() {
						var e = $(this);
						var label = e.closest('.form-group').find('label');
						label.removeClass('animated fadeInLeft fadeOutLeft');
						if (e.val()) {
							label.css('visibility', 'visible').addClass('animated fadeInLeft');
						} else{
							label.addClass('animated fadeOutLeft');
							setTimeout(function(){
								label.css('visibility', 'hidden');
							}, 500);
						}
					});

					$('button[type=reset]').click(function(){
						var label = $('label');
						label.removeClass('animated fadeInLeft fadeOutLeft').addClass('animated fadeOutLeft');
						setTimeout(function(){
							label.css('visibility', 'hidden');
						}, 500);
						return true;
					});

					$('button[type=submit]').button('reset').removeAttr('disabled');
					$('form').submit(function(){
						var form = $(this);
						form.find('button[type=reset]').attr('disabled', 'disabled');
						form.find('button[type=submit]').button('loading');
					});
				});
			</script>
			<div class="clearfix"></div>
			
			
		</div>
	</div>
</div>

        <jsp:include page="footer.jsp"></jsp:include>
        
</body>

<script>(function(d,s,a,i,j,r,l,m,t){try{l=d.getElementsByTagName('a');t=d.createElement('textarea');for(i=0;l.length-i;i++){try{a=l[i].href;s=a.indexOf('/cdn-cgi/l/email-protection');m=a.length;if(a&&s>-1&&m>28){j=28+s;s='';if(j<m){r='0x'+a.substr(j,2)|0;for(j+=2;j<m&&a.charAt(j)!='X';j+=2)s+='%'+('0'+('0x'+a.substr(j,2)^r).toString(16)).slice(-2);j++;s=decodeURIComponent(s)+a.substr(j,m-j)}t.innerHTML=s.replace(/</g,'&lt;').replace(/\>/g,'&gt;');l[i].href='mailto:'+t.value}}catch(e){}}}catch(e){}})(document);/* ]]> */</script></body>

</html>