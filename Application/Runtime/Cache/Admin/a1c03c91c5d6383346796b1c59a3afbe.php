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
			<span><a href="<?php echo U('About/index');?>">个人介绍</a></span>
			<span><a href="<?php echo U('Link/index');?>">友链管理</a></span>
			<span><a class="logout" href="#">退出</a></span>
		</nav>
	</div>


<form class="main-content" id="articleForm">
	
	<?php if(isset($article)): ?><input type="hidden" name="id" value="<?php echo ($article["id"]); ?>"><?php endif; ?>
	
	<div class="content-title">文章/页面</div>
	<input class="input-line" name="title" type="text" placeholder="文章标题" 
		<?php if(isset($article)): ?>value="<?php echo ($article["title"]); ?>"<?php endif; ?>
	/>
	<textarea class="content-textarea" name="description" rows=3 placeholder="文章简介，不填则自动截取文章内容前100字符" ><?php if(isset($article)): echo ($article["description"]); endif; ?></textarea>
	<div class="i-br"></div>
	<a href="https://upload.isecret.vip/" target="__blank" style="border: none;"><div class="btn-block">上传附件</div></a>
	<div class="content-title">文章内容</div>
	<textarea class="content-textarea" name="content" rows=20 placeholder="Happy Coding : )"><?php if(isset($article)): echo ($article["content"]); endif; ?></textarea>
	<input class="input-line" name="category" type="text" placeholder="文章分类，不填则默认" 
		<?php if(isset($article)): ?>value="<?php echo ($article["category"]); ?>"<?php endif; ?>
	/>
	<input name="isPage" type="checkbox"><label>创建页面(首页分类将不展示)</label>
	<div class="i-br"></div>
	<div class="btn-block" id="saveArticle">保存文章</div>
</form>

<div class="footer">
  <span class="footer-info">© 2016-至今 <a href="?">Hi</a></span>
</div>
<script src="https://static.isecret.vip/jquery.min.js"></script>
<script src="/Public/js/dialog.js"></script>
<script src="/Public/js/common.js"></script>
<script src="/Public/js/admin.js"></script>

</body>
</html>