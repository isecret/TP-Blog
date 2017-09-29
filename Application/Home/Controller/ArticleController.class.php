<?php
namespace Home\Controller;
use Think\Controller;

/**
* 首页文章控制器
*/
class ArticleController extends BaseController
{
	public function index()
	{
		// 获取文章 id 若没有则重定向到首页，存在则显示文章内容
		$id = I('get.id', false, 'intval');

		if ($id) {
			$Articles = D('Articles');
			$article = $Articles->finds($id);
			// 若文章内容不存在则定向到首页
			if (empty($article)) {
				$this->redirect('Index/index');
			}
			// 文章内容转换 Markdown → Html
			$article['content'] = $this->md($article['content']);
			$nears = $Articles->nears($article['created_at']);
			$this->assign([
					'title' => $article['title'],
					'article' => $article,
					'nears' => $nears
				]);
			$this->display();
		} else {
			$this->redirect('Index/index');
		}
	}
}