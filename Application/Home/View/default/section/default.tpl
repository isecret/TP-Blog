<!DOCTYPE html>
<html lang="zh-Hans">
{include '../layouts/_head.tpl'}
<body>
	<main>
		{include '../layouts/_header.tpl'}
		<content>
			{if !empty($category)}
				<span class="category-title">关于 {$category} 的分类</span>
			{/if}
			{foreach $articles as $article}
				<article class="wow slideInUp fadeIn">
					<div class="article-title-container">
						<h1 class="article-title">
							<a href="?a=article&id={$article.id}">{$article.title}</a>
						</h1>
						<span class="article-info">{date('F d, Y', $article.created_at)} · <a href="?a=category&name={$article.category}">{$article.category}</a></span>
					</div>
					<div class="article-content-container">
						<span>{$article.description}...</span>
						<div class="readmore">
							<a href="?a=article&id={$article.id}">Read More <i class="fa fa-angle-double-right"></i></a>
						</div>
					</div>
				</article>
			{foreachelse}
				<div class="article-nothing">没有找到任何内容。</div>
			{/foreach}
			<div class="pagination">
				{if $pages.prev}
				<span class="pagination-prev"><i class="fa fa-angle-left"></i> <a href="{{$pages.prev}}">New</a></span>
				{/if}
				{if $pages.next}
				<span class="pagination-next"><a href="{{$pages.next}}">Older</a> <i class="fa fa-angle-right"></i></span>
				{/if}
				<div class="clear"></div>
			</div>
		</content>
    {include '../layouts/_footer.tpl'}
