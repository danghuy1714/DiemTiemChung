<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href='<c:url value="/bootstrap/css/bootstrap.min.css"></c:url>'>
<link rel="sytlesheet" href='<c:url value="/bootstrap/js/jquery-3.6.3.min.js"></c:url>'>
<link rel="stylesheet" href='<c:url value="/bootstrap/js/bootstrap.js"></c:url>'>
<link rel="stylesheet" href='<c:url value="/style/client/Home.css"></c:url>'>
</head>
<body>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Tiêm Chủng</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="#">Trang Chủ</a></li>
	      <li><a href="#">Giới thiệu</a></li>
	      <li><a href="#">Lịch tiêm</a></li>
	      <li><a href="#">Liên hệ</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Đăng Kí</a></li>
	      <li><a href="#" onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
	    </ul>
	  </div>
	</nav>
    
    <div id="id01" class="modal">
  
	  <form class="modal-content animate" action="/action_page.php" method="post">
		
		<div class="imgcontainer" style="font-size: 40px;">Đăng Nhập</div>
		
	    <div class="container">
	      <label for="uname"><b>Tài Khoản</b></label>
	      <input type="text" placeholder="Nhập tài khoản" name="uname" required>
	
	      <label for="psw"><b>Mật Khẩu</b></label>
	      <input type="password" placeholder="Nhập mật khẩu" name="psw" required>
	        
	      <button type="submit">Đăng Nhập</button>
	      <label>
	        <input type="checkbox" checked="checked" name="remember"> Lưu mật khẩu
	      </label>
	    </div>
	
	    <div class="container" style="background-color:#f1f1f1">
	      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Hủy bỏ</button>
	      <span class="psw">Quên <a href="#">mật khẩu?</a></span>
	    </div>
	  </form>
	</div>
	
	<script>
	// Get the modal
		var modal = document.getElementById('id01');
		
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}
	</script>
</body>
</html>