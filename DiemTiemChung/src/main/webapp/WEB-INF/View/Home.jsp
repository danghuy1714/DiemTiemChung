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
	      <li><a href="#" onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><span class="glyphicon glyphicon-user"></span> Đăng Kí</a></li>
	      <li><a href="#" onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
	    </ul>
	  </div>
	</nav>
    
    <div id="id01" class="modal">
  
	  <form class="modal-content animate" action="/action_page.php" method="post">
		
		<div style="font-size: 40px;">Đăng Nhập</div>
		
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
	
	<div id="id02" class="modal">
		<form class="modal-content animate" action="action_page.php">
		  <div class="container">
		    <h1>Đăng kí</h1>
		    <p>Nhập các thông tin để đăng kí</p>
		    <hr>
		
		    <label for="email"><b>Email</b></label>
		    <input type="text" placeholder="Nhập email" name="email" id="email" required>
		
		    <label for="psw"><b>Mật khẩu</b></label>
		    <input type="password" placeholder="Nhập mật khẩu" name="psw" id="psw" required>
		
		    <label for="psw-repeat"><b>Nhập lại mật khẩu</b></label>
		    <input type="password" placeholder="Nhập lại mật khẩu" name="psw-repeat" id="psw-repeat" required>
		    
		    <label for="email"><b>Họ và tên</b></label>
		    <input type="text" placeholder="Nhập họ và tên" name="fullname" id="email" required>
		    
		    
		    <label for="email"><b>Giới tính</b></label>
		    <select class="form-select">
			  <option>Nam</option>
			  <option>Nữ</option>
			</select>
		    <label for="email"></label>
		    <label for="email"><b>Ngày sinh</b></label>
		    <input type="date" name="dob" id="email" required>
		    <br/>
		    <label for="email"><b>Số điện thoại</b></label>
		    <input type="text" placeholder="Nhập số điện thoại" name="phone" id="email" required>
		    
		    <hr>
		
		    <p>By creating an account you agree to our <a href="#">Terms Privacy</a>.</p>
		    <button type="submit" class="registerbtn">Register</button>
		  </div>
		
		<div class="container" style="background-color:#f1f1f1">
	      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Hủy bỏ</button>
	      <span class="psw"><a href="#">đăng nhập?</a></span>
	    </div>
		</form>
	</div>
	
	<script>
	// Get the modal
		var modal = document.getElementById('id02');
		
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}
	</script>
</body>
</html>