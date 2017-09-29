<?php if (!defined('THINK_PATH')) exit();?><head>
	<meta charset="utf-8">
	<title>后台管理</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<link rel="stylesheet" type="text/css" href="/Public/css/admin.css">
	<link rel="stylesheet" href="/Public/css/dialog.css">
</head>

<body>
	<div class="header-nav">
		<span class="header-title">
			<a href="<?php echo U('Index/index');?>">首页</a>
		</span>
		<nav>
			<span><a href="<?php echo U('Article/index');?>">文章管理</a></span>
			<span><a href="<?php echo U('Resume/index');?>">个人介绍</a></span>
			<span><a href="<?php echo U('Link/index');?>">友链管理</a></span>
			<span><a href="<?php echo U('Login/logout');?>">退出</a></span>
		</nav>
	</div>


<div class="main-index">
	<div class="welcome">
		<div>
      <span class="welcome-title">『路漫漫其修远兮，吾将上下而求索。』</span>
    </div>
    <div>
      <span class="welcome-from">—— 离骚</span>
    </div>
	</div>
</div>

<div class="footer">
  <span class="footer-info">© 2016-至今 <a href="/index.php">Hi</a></span>
</div>
<script src="https://static.isecret.vip/jquery.min.js"></script>
<script src="/Public/js/dialog.js"></script>
<script src="/Public/js/common.js"></script>
<script src="/Public/js/admin.js"></script>

</body>
</html>