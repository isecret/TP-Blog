{include '../layouts/_head.tpl'}
<body>
	<main>
		{include '../layouts/_header.tpl'}
		<content>
			<article class="wow fadeIn">
				<div class="article-title-container">
					<h1 class="article-title">
						<span>{{$title}}</span>
					</h1>
				</div>
				<div class="article-content-container">
					{htmlspecialchars_decode($content)}
				</div>
			</article>
		</content>
    {include '../layouts/_footer.tpl'}
