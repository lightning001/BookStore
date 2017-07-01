<%@page import="entity.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm chương mới cho truyện XXX</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/yamm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/chosen.css" rel="stylesheet">
<link rel="icon" type="image/png" href="img/favicon.png" />
<script src="js/jquery-1.12.4.js"></script>
<script src="js/chosen.jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/4.7.0/standard/ckeditor.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
	<% Book book = (Book) request.getAttribute("book"); %>
	<!-- nhận name từ servlet ThemTruyen -->
		<label>Thêm chương mới cho truyện <%= book.getBookName() %> </label>
	</div>
	<div class="container">
		<form action="<%=request.getContextPath()%>/themchuong" method="get">
			<!-- nhận bookid từ servlet ThemTruyen -->
			<input name="bookid"  value="<%=book.getBookId()%>"
				type="hidden">
			<label> Tên chương</label> <input class="form-control" name="name"
				type="text"> <label>Nội
				Dung</label>
			<textarea name="content" id="editor1" rows="100" cols="80">
                    
                </textarea>
			<script>
				// Replace the <textarea id="editor1"> with a CKEditor
				// instance, using default configuration.
				CKEDITOR.replace('editor1');
			</script>
			<input type="submit" class="btn btn-primary" value="Lưu">
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>