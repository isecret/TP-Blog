<?php
namespace Home\Controller;
use Think\Controller;

/**
* 友情链接Link
*/
class LinkController extends BaseController
{
	public function index()
	{
		$Link = D('Links');
		$links = $Link->gets();

		$this->assign([
				'title' => '友情链接',
				'links' => $links
			]);
		$this->display();
	}
}