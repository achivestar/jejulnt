<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>Leave No Trace | 흔적을 남기지 말아요</title>
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicons.ico" type="image/x-icon">
 <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
</head>
<body>
<!-- Main Content -->
	<div class="container-fluid">
		<div class="row main-content bg-success text-center">
			<div class="col-md-4 text-center company__info">
				<h4 class="company_title">New Experience in JEJU</h4>
			</div>
			<div class="col-md-8 col-xs-12 col-sm-12 login_form ">
				<div class="container-fluid">
					<div class="row">
						<h2>Leave No Trace 관리자</h2>
					</div>
					<div class="row">
						<form class="form-group" action="./admin/loginProcess" method="post">
							<div class="row">
								<input type="text" name="email" id="email" class="form__input" placeholder="email">
							</div>
							<div class="row">
								<!-- <span class="fa fa-lock"></span> -->
								<input type="password" name="password" id="password" class="form__input" placeholder="Password">
							</div>
							<div class="row">
								<input type="submit" value="Login" class="btn">
							</div>
							<div class="row">
							
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<div class="container-fluid text-center footer">
		<p><a href="http://www.jejuall.net/" target="_blank">제주, 새로운 경험&여행의 모든것.</a></p>
	</div>
</body>
</html>