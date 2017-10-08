<?php
namespace Home\Controller;
use Think\Controller;
use Think\Page;

/**
* 分类控制器
*/
class CategoryController extends BaseController
{
	
	public function index()
	{
		// 获取关键字
		$category = I('get.name', false);

		// 关键字不存在则重定向到首页
		if (!$category) {
			$this->redirect('Index/index');
		}

		// 实例化 Article 模型
		$Articles = D('Articles');
		// 统计文章总数
		$totalArticle = $Articles->countsWhere("category = '%s' and status = 1", $category);
		// 实例化文章翻页对象并传入文章总数 和 配置文件中的每页显示条数
		$Page = new Page($totalArticle, C('PAGE_NUM'));
		// 自定义页面翻页样式
		$Page->setConfig('prev', '<span class="prev">上一页</span>');
		$Page->setConfig('next', '<span class="next">下一页</span>');
		// 获取翻页 html 结构字符串
		$page = $Page->show();

		$articles = $Articles->getsWhere("category = '%s' and status = 1", $category, I('get.p', 1, 'intval'));

		$this->assign([
				'category' => $category,
				'articles' => $articles,
				'page'	=> $page
			]);

		$this->display('Index/index');
	}
}