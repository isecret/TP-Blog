<?php
namespace Home\Controller;
use Think\Controller;

/**
* 归档页
*/
class ArchivesController extends BaseController
{
	
	function index()
	{
		$Articles = D('Articles');
		$years = $Articles->countYears();
		$months = $Articles->countMonths();
		$articles = $Articles->all();
		$this->assign([
			'title' => '归档',
			'years' => $years,
			'months' => $months,
			'articles' => $articles
		]);
		$this->display();
	}
}