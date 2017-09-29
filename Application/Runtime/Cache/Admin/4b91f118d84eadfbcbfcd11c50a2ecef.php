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
			<span><a href="<?php echo U('Login/logout');?>">退出</a></span>
		</nav>
	</div>


<div class="main-content">
		<div class="content-title">写文章</div>
		<a class="btn-block" href="<?php echo U('Article/edit');?>">写文章/页面</a>
		<div class="i-br"></div>

		<div class="content-title">文章列表</div>
		<div class="table-wrap">
			<table width="768" class="table">
				<tr>
					<th>文章信息</th>
					<th width="14%">分类</th>
					<th width="16%">发表日期</th>
					<th width="14%">修改时间</th>
					<th width="14%">操作</th>
				</tr>
				<?php if(is_array($articles)): foreach($articles as $key=>$article): ?><tr>
						<td><a href="#" target="_blank"><?php echo ($article["title"]); ?></a></td>
						<td class="text-center"><?php echo ($article["category"]); ?></td>
						<td class="text-center"><?php echo (date("Y-m-d", $article["created_at"])); ?></td>
						<td class="text-center"><?php echo (date("Y-m-d", $article["updated_at"])); ?></td>
						<td class="text-center">
							<a href="<?php echo U('Article/edit/id/'.$article['id']);?>">编辑</a>
							<a class="rmArticle" href="#" data-id="<?php echo ($article["id"]); ?>">删除</a>
						</td>
					</tr><?php endforeach; endif; ?>
				<?php if(empty($articles)): ?><tr>
						<td colspan="5" class="text-center" style="height: 60px;">没有找到相关文章喔~</td>
					</tr><?php endif; ?>
			</table>
		</div>
		<div class="pagenav">
			<?php echo ($page); ?>
		</div>
	</div>

<div class="footer">
  <span class="footer-info">© 2016-至今 <a href="?">Hi</a></span>
</div>
<script src="https://static.isecret.vip/jquery.min.js"></script>
<script src="/Public/js/dialog.js"></script>
<script src="/Public/js/common.js"></script>
<script src="/Public/js/admin.js"></script>

</body>
</html>