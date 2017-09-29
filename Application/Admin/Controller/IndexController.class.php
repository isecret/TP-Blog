<?php
namespace Admin\Controller;
use Think\Controller;

class IndexController extends BaseController {

	/**
	 * 如果未登录则重定向到登录页
	 */
	protected function _notLoginAfter()
	{
		$this->redirect('Login/index');
	}

	/**
	 * 后台首页
	 */
    public function index(){
    	$this->display();
    }
}