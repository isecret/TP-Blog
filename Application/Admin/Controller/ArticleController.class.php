<?php
namespace Admin\Controller;
use Think\Controller;
use Think\Page;

/**
* 文章控制器
*/
class ArticleController extends BaseController
{
	/**
	 * 如果未登录则重定向到登录页
	 */
	protected function _notLoginAfter()
	{
		$this->redirect('Login/index');
	}

	/**
	 * 文章列表显示
	 * @return [type] [description]
	 */
	public function index()
	{
		// 实例化 Articles 对象
		$Articles = D('Articles');
		// 统计文章总数
		$totalArticle = $Articles->counts();
		// 实例化文章翻页对象并传入文章总数 和 配置文件中的每页显示条数
		$Page = new Page($totalArticle, C('PAGE_NUM'));
		// 自定义页面翻页样式
		$Page->setConfig('prev', '<span class="prev">上一页</span>');
		$Page->setConfig('next', '<span class="next">下一页</span>');
		// 获取翻页 html 结构字符串
		$page = $Page->show();
		// 获取文章列表（通过页数）
		$articles = $Articles->gets(I('get.p', 1, 'intval'));

		$this->assign([
				'articles' => $articles,
				'page' => $page
			]);
		$this->display();
	}

	/**
	 * 文章编辑相关
	 */
	public function edit()
	{
		// 判断是否为 post 提交方式
		if (IS_POST) {
			$Articles = D('Articles');
			if (!$Articles->create()) {
				ajax(0, $Articles->getError());
			} else {
				// 组装文章信息
				$articleInfo = [
						'title' => I('post.title'),
						'description' => I('post.description', mb_substr(strip_tags($this->md(I('content'))), 0, C('WORD_NUM')), '/\w+/'),
						'content' => I('post.content'),
						'category' => I('post.category', '默认', '/\w+/')
					];

				// 判断是更新文章还是新建文章
				if (I('post.id')) {
					$articleInfo['updated_at'] = time();

					$articleId = $Articles->updates(I('post.id', 0, 'intval'),$articleInfo);

					if ($articleId) {
						ajax(1, '文章修改成功', ['url' => U('Article/index')]);
					} else {
						ajax(0, '文章修改失败');
					}
				} else {
					// 组装文章信息
					$articleInfo['created_at'] = time();
					$articleInfo['updated_at'] = time();

					$articleId = $Articles->inserts($articleInfo);
					
					if ($articleId) {
						ajax(1, '文章发表成功', ['url' => U('Article/index')]);
					} else {
						ajax(0, '文章发表失败');
					}
				}
			}
			
		} else {
			// 判断是否有文章 id 参数，有则为修改，没有则为创建
			$id = I('get.id', 0, 'intval');
			if (empty($id)) {
				$this->display();
			} else {
				$Articles = D('Articles');
				$article = $Articles->finds($id);
				$this->assign([
						'article' => $article
					]);
				$this->display();
			}
		}
	}

	/**
	 * 文章软删除
	 */
	public function remove()
	{
		if (IS_POST) {
			$articleId = D('Articles')->updates(I('post.id', 0, 'intval'), ['status' => 0]);
			if ($articleId) {
				ajax(1, '文章已移入回收站');
			} else {
				ajax(0, '文章移入回收站时发生错误');
			}
		}
	}
}
