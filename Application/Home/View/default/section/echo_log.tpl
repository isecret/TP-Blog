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
					<span class="article-info">{date('F d, Y', $created_at)} · <a href="?a=category&name={{$category}}">{{$category}}</a></span>
				</div>
				<div class="article-content-container">
					{htmlspecialchars_decode($content)}
					<span style="font-size: 14px; float: right;">Finally edited in {date('F d, Y', $updated_at)} </span>
				</div>
			</article>
			<div class="pagination">
				{if !empty($articlePrev)}
					<span class="pagination-prev"><i class="fa fa-angle-left"></i> <a href="?a=article&id={{$articlePrev.id}}">{{$articlePrev.title}}</a></span>
				{/if}
				{if !empty($articleNext)}
					<span class="pagination-next"><a href="?a=article&id={{$articleNext.id}}">{{$articleNext.title}}</a> <i class="fa fa-angle-right"></i></span>
				{/if}
				<div class="clear"></div>
			</div>

			<div class="reply-container reply-header-container">
				<span><strong class="reply-comments-num">0</strong> Comments</span>
  			</div>
  			<ul class="reply-comments-list">
  				<li class="reply-comments-loading">
  					<p>
  						<i class="fa fa-spinner fa-pulse" style="font-size: 30px;"></i>
  					</p>
  					<span class="reply-tips"><b>Comment Loading...</b></span>
  				</li>
			</ul>
			<ul class="reply-comments-pagination">
				<li class="reply-comments-page-item" id="replyPrev" style="display: none;">Previous</li>
				<li class="reply-comments-page-item" id="replyNext" style="display: none;">Next</li>
			</ul>


			<div>
			<div class="reply-container reply-editor-container">
				<a class="reply-editor-avatar" >
					<img class="reply-comment-avatar-img" src="https://blog.isecret.vip/favicon.png" alt="">
				</a>
				<form class="reply-editor-main" id="replyForm" data-aid="{{$id}}" data-page="1" data-replyToEmail="" data-replyToUserName="">
					<div class="reply-editor-header">
						<div class="reply-editor-tabs">
							<div class="reply-editor-tab">
								<span class="reply-label">昵称*:</span>
								<input class="reply-markdown" type="text" name='username'>
							</div>
							<div class="reply-editor-tab">
								<span class="reply-label">邮箱*:</span>
								<input class="reply-markdown" type="text" name='email'>
							</div>
							<div class="reply-editor-tab">
								<span class="reply-label">个人站点:</span>
								<input class="reply-markdown" type="text" name='url'>
							</div>
						</div>
					</div>
					<div class="reply-editor-body">
						<div class="reply-editor-write-field">
							<textarea placeholder="Leave a comment" name='content'></textarea>
						</div>
					</div>
				</form>
				<div class="reply-editor-footer">
					<input class="reply-markdown" type="text" name='captcha' placeholder="验证码">
					<img class="reply-markdown" src="?c=api&a=captcha" id="captchaCode" style="vertical-align: middle;">
					<button class="reply-editor-submit" title="Login to Comment" id="reply-submit">Comment</button>
				</div>

			</div>
			</div>
		</content>
    {include '../layouts/_footer.tpl'}
