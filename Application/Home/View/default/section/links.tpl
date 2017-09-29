{include '../layouts/_head.tpl'}
<body>
	<main>
		{include '../layouts/_header.tpl'}
		<content>
			<article class="wow fadeIn">
				<div class="article-title-container">
					<h1 class="article-title">
						<span>友情链接</span>
					</h1>
				</div>
				<div class="article-content-container">
					<ul class="links">
						{foreach $links as $link }
						<li class="links-items">
							<a href="{{$link.url}}">
								<img class="links-avatar" src="{{$link.avatar}}" alt="">
								<span class="links-name">{{$link.name}}</span>
							</a>
						</li>
						{/foreach}
					</ul>
				</div>
			</article>
		</content>
    {include '../layouts/_footer.tpl'}
