<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<!-- custom.css를 참조하는 링크 -->
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>

	<%
		// 메인 페이지로 이동했을 때 세션이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");
		}
	%>
	
	<!-- 네비게이션 영역 -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
					data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>	
			<%
				// 로그인 하지 않았을 때 보여지는 화면
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						접속하기<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				// 로그인 되어있을 때 보여지는 화면
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						회원관리<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	
	<!-- 메인 페이지 영역 -->
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>웹 사이트 소개</h1>
				<p>이 웹 사이트는 부트스트랩으로 만든 JSP 웹 사이트입니다. 최소한의 간단한 로직만을 이용해서 개발했습니다.
					디자인 템플릿으로는 부트스트랩을 이용했습니다.</p>
				<a class="btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a>
			</div>
		</div>
	</div>
	<!-- 메인 페이지 이미지 삽입 영역 -->
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.jpg" class="img-responsive center-block">
				</div>
				<div class="item">
					<img src="images/2.jpg" class="img-responsive center-block">
				</div>
				<div class="item">
					<img src="images/3.jpg" class="img-responsive center-block">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	
	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>