<?php if (!defined('THINK_PATH')) exit();?><html>
	<head>
		<meta charset="utf-8" />
		<title>Login</title>
		<link rel="stylesheet" href="/Public/css/login.css" />
		<link rel="stylesheet" href="/Public/css/dialog.css" />
	</head>
	<body>
		<div class="login">
			<form class="login-container" action="/admin.php/Login/login" method="post" />
				<span class="login-title">Login</span>
				<input class="login-input" name="email" type="text" placeholder="Email" />
				<input class="login-input" name="password" type="password" placeholder="Password" />
				<input class="login-btn" type="button" value="Sigin" />
				<a href="/">Back</a>
			</form>
		</div>
		<script src="https://static.isecret.vip/jquery.min.js"></script>
		<script src="/Public/js/dialog.js"></script>
		<script src="/Public/js/common.js"></script>
		<script src="/Public/js/login.js"></script>
	</body>
</html>