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
					<ul class="archives wow slideInUp">
						{foreach $years as $year}
							<li class="archives-year">{{$year.year}}</li>
							{foreach $months as $month}
								{if $year.year == $month.year}
									<li class="archives-month wow slideInUp">{{$month.month}}</li>
									{foreach $articles as $article }
										{if date('m', $article.created_at) == $month.month && date('Y', $article.created_at) == $year.year}
											<li class="archives-article wow slideInUp"><a href="?a=article&id={{$article.id}}">{{$article.title}} <span class="archives-time">({date('Y-m-d', $article.created_at)})</span></a></li>
										{/if}
									{/foreach}
								{/if}
							{/foreach}
						{/foreach}
					</ul>
				</div>
			</article>
		</content>
    {include '../layouts/_footer.tpl'}
