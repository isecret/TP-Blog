<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title><?php if(isset($title)): echo ($title); ?> |<?php endif; ?> Secret Blog</title>
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
	<link rel="stylesheet" href="https://blog.isecret.vip/lib/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://static.isecret.vip/github-gist.css">
	<link rel="stylesheet" href="/Public/css/reply.css">
	<link rel="stylesheet" href="/Public/css/dialog.css">
	<link rel="stylesheet" href="/Public/css/default.css">
	<link rel="stylesheet" href="/Public/css/app.css">
</head>

<body>
	<main>
		<header>
  <div class="header-main">
    <div class="header-title-container">
      <h1 class="header-title">Secret Blog</h1>
      <span class="header-info" id="t">All the loves is secret.</span>
    </div>
    <nav>
      <span class="nav-child"><a href="<?php echo U('Index/index');?>">Home</a></span>
      <span class="nav-child"><a href="<?php echo U('Archives/index');?>">Archives</a></span>
      <span class="nav-child"><a href="<?php echo U('Resume/index');?>">Resume</a></span>
      <span class="nav-child"><a href="<?php echo U('Link/index');?>">Links</a></span>
    </nav>
  </div>
</header>

		<content>
			<?php if(isset($category)): ?><span class="category-title">关于 <?php echo ($category); ?> 的分类</span><?php endif; ?>
			<?php if(is_array($articles)): foreach($articles as $key=>$article): ?><article>
					<div class="article-title-container">
						<h1 class="article-title">
							<a href="<?php echo U('Article/index', ['id' => $article['id']]);?>"><?php echo ($article["title"]); ?></a>
						</h1>
						<span class="article-info"><?php echo (date("F d, Y", $article["created_at"])); ?> · <a href="<?php echo U('Category/index', ['name' => $article['category']]);?>"><?php echo ($article["category"]); ?></a></span>
					</div>
					<div class="article-content-container">
						<span><?php echo ($article["description"]); ?>...</span>
						<div class="readmore">
							<a href="<?php echo U('Article/index', ['id' => $article['id']]);?>">Read More <i class="fa fa-angle-double-right"></i></a>
						</div>
					</div>
				</article><?php endforeach; endif; ?>
			<?php if(empty($articles)): ?><div class="article-nothing">没有找到任何内容。</div><?php endif; ?>
			<div class="pagination">
				<?php echo ($page); ?>
				<div class="clear"></div>
			</div>
		</content>
        <footer>
      <span class="footer-copy">Copyright 2016-2017 <i class="fa fa-heart" style="color: tomato;"></i> Secret | <a href="/admin.php">Login</a> | Base by <a href="http://www.thinkphp.cn/" target="__black">ThinkPHP</a></span>
    </footer>
    </main>
    
  </body>
</html>