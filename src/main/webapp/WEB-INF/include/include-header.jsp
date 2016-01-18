<%@ page pageEncoding="utf-8"%>
<head>
	<script>
		function toHome(){
			alert('move to Home page');
			location.href="http://localhost:8080/oauth/index.do";
		}
	</script>
</head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>RabbitFeed</title>
<header id="header">

	<div class="description">
		<button type="button" class="btn-default" onclick="toHome()">홈</button>
		<button type="button" class="btn btn-primary btn-lg"
			data-toggle="modal" data-target="#myModal" id="btn-login">로그인</button>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">로그인할 계정을 선택하세요</h4>
				</div>
				<div class="modal-body">
					<a href="#" class="btn-primary login-sns-btn">페이스북</a>
					<a href="#" class="btn-primary login-sns-btn">트위터</a>
					<a href="#" class="btn-danger login-sns-btn">Payco</a>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">로그인</button>
				</div>
			</div>
		</div>
	</div>
</header>
