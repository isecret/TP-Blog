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
			<article>
				<div class="article-title-container">
					<h1 class="article-title">
						<span><?php echo ($article["title"]); ?></span>
					</h1>
					<span class="article-info"><?php echo (date("F d, Y", $article["created_at"])); ?> · <a href="?a=category&name=<?php echo ($article["category"]); ?>"><?php echo ($article["category"]); ?></a></span>
				</div>
				<div class="article-content-container">
					<?php echo ($article["content"]); ?>
					<span style="font-size: 14px; float: right;">Finally edited in <?php echo (date("F d, Y", $article["updated_at"])); ?> </span>
				</div>
			</article>
			<div class="pagination">
				<?php if(isset($nears['prev'])): ?><span class="prev"><i class="fa fa-angle-left"></i> <a href="<?php echo U('Article/index', ['id' => $nears['prev']['id']]);?>"><?php echo ($nears["prev"]["title"]); ?></a></span><?php endif; ?>
				<?php if(isset($nears['next'])): ?><span class="next"><a href="<?php echo U('Article/index', ['id' => $nears['next']['id']]);?>"><?php echo ($nears["next"]["title"]); ?></a> <i class="fa fa-angle-right"></i></span><?php endif; ?>
				<div class="clear"></div>
			</div>
		</content>
        <footer>
      <span class="footer-copy">Copyright 2016-2017 <i class="fa fa-heart" style="color: tomato;"></i> Secret | <a href="/admin.php">Login</a> | Powered by <a href="#">Hi</a></span>
    </footer>
    </main>
    
  </body>
</html>