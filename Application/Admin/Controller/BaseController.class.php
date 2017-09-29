<?php
namespace Admin\Controller;
use Think\Controller;
use Think\Page;
use \Parsedown;

/**
* 后台管理公共类
*/
class BaseController extends Controller
{
	/**
	 * 拓展方法
	 */
	protected function _initialize(){
		if ($this->_isLogin()) {
			$this->_isLoginAfter();
		} else {
			$this->_notLoginAfter();
		}
	}

	/**
	 * 判断用户是否登录
	 *
	 * @return     boolean  True if login, False otherwise.
	 */
	protected function _isLogin()
	{
		if (empty(session('UserStatus'))) {
			return false;
		}
		return true;
	}

	/**
	 * 如果用户登录后的操作
	 */
	protected function _isLoginAfter(){}

	/**
	 * 用户没登录的操作
	 */
	protected function _notLoginAfter(){}

	/**
	 * Markdown 转换为 html
	 */
	public function md($text)
	{
		$Parsedown = new Parsedown();
		return $Parsedown->text($text);
	}
}