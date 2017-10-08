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
			<article>
				<div class="article-title-container">
					<h1 class="article-title">
						<span><?php echo ($title); ?></span>
					</h1>
				</div>
				<div class="article-content-container">
					<ul class="archives">
						<?php if(is_array($years)): foreach($years as $key=>$year): ?><li class="archives-year"><?php echo ($year["year"]); ?></li>
							<?php if(is_array($months)): foreach($months as $key=>$month): if($year['year'] == $month['year']): ?><li class="archives-month"><?php echo ($month["month"]); ?></li>
									<?php if(is_array($articles)): foreach($articles as $key=>$article): if(date('m', $article['created_at']) == $month['month'] && date('Y', $article['created_at']) == $year['year']): ?><li class="archives-article"><a href="<?php echo U('Article/index', ['id' => $article['id']]);?>"><?php echo ($article["title"]); ?> <span class="archives-time">(<?php echo (date("F d, Y", $article["created_at"])); ?>)</span></a></li><?php endif; endforeach; endif; endif; endforeach; endif; endforeach; endif; ?>
					</ul>
				</div>
			</article>
		</content>
        <footer>
      <span class="footer-copy">Copyright 2016-2017 <i class="fa fa-heart" style="color: tomato;"></i> Secret | <a href="/admin.php">Login</a> | Base by <a href="http://www.thinkphp.cn/" target="__black">ThinkPHP</a></span>
    </footer>
    </main>
    
  </body>
</html>