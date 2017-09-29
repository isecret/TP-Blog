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


<div class="main-content">
	<div class="content-title">增加/修改友链</div>
	<form id="saveLinkForm">
		<?php if(isset($link)): ?><input type="hidden" name="id" value="<?php echo ($link["id"]); ?>"><?php endif; ?>
		<input class="input-line" type="text" name="name" placeholder="站点名称" 
			<?php if(isset($link)): ?>value="<?php echo ($link["name"]); ?>"<?php endif; ?>
		>
		<input class="input-line" type="text" name="url" placeholder="站点URL" 
			<?php if(isset($link)): ?>value="<?php echo ($link["url"]); ?>"<?php endif; ?>
		>
		<input class="input-line" type="text" name="avatar" placeholder="站点头像" 
			<?php if(isset($link)): ?>value="<?php echo ($link["avatar"]); ?>"<?php endif; ?>
		>
		<div class="btn-block" id="saveLink">保存</div>
		<?php if(isset($link)): ?><a href="<?php echo U('Link/index');?>" style="border: none"><div class="btn-block">取消</div></a><?php endif; ?>
	</form>
	<div class="i-br"></div>
	<div class="content-title">友链列表</div>
	<div class="table-wrap">
		<table width="768" class="table">
			<tr>
				<th width="14%">站点名</th>
				<th width="14%">站点地址</th>
				<th width="16%">头像地址</th>
				<th width="14%">操作</th>
			</tr>
			<?php if(is_array($links)): $i = 0; $__LIST__ = $links;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$lnk): $mod = ($i % 2 );++$i;?><tr>
					<td><a href="#" target="_blank"><?php echo ($lnk["name"]); ?></a></td>
					<td class="text-center"><?php echo ($lnk["url"]); ?></td>
					<td class="text-center"><?php echo ($lnk["avatar"]); ?></td>
					<td class="text-center">
						<a class="editlink" href="<?php echo U('Link/index', ['id' => $lnk['id']]);?>">编辑</a>
						<a class="rmlink" href="#">删除</a>
					</td>
				</tr><?php endforeach; endif; else: echo "" ;endif; ?>
			<?php if(empty($links)): ?><tr>
					<td colspan="4" class="text-center" style="height: 60px;">你还没有朋友吗？</td>
				</tr><?php endif; ?>
		</table>
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