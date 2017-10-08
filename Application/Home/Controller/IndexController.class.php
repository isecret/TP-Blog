<?php
namespace Home\Controller;
use Think\Controller;
use Think\Page;

class IndexController extends BaseController 
{
	
    public function index() {
        // 实例化 Article 对象
    	$Articles = D('Articles');
        // 查询文章总数
        $totalArticle = $Articles->count();
        // 获取文章列表（通过页数）
    	$articles = $Articles->gets(I('get.p', 1));
        // 实例化 Page 对象并传入文章总数，
		$Page = new Page($totalArticle, C('PAGE_NUM'));
        // 自定义翻页
		$Page->setConfig('prev', '<span class="pagination-prev"><i class="fa fa-angle-left"></i> New</span>');
		$Page->setConfig('next', '<span class="pagination-next">Older <i class="fa fa-angle-right"></i></span>');
        // 获取翻页样式
		$page = $Page->show();

    	$this->assign([
    			'page' => $page,
    			'articles' => $articles
    		]);
    	$this->display();
    }
}