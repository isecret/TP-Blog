<?php
namespace Admin\Controller;
use Think\Controller;

/**
 * 登录页
 */
class LoginController extends BaseController
{
	/**
	 * 登录首页
	 */
	public function index()
	{
		// 如果登录则直接重定向到后台主页
		if ($this->_isLogin()) {
			$this->redirect('Index/index');
		}
		$this->display();
	}

	/**
	 * 登录检查
	 */
	public function login()
	{
		if (IS_POST) {
			// 实例化 User 模型
			$User = D('Users');
			// 自动验证字段
			if (!$User->create()){
				// 失败返回错误信息
				ajax(0, $User->getError());
			} else {
				// 通过当前 email 获取当前用户信息
				$user = $User->gets(I('post.email'));
				// 如果用户信息不存在返回错误
				if (empty($user)) {
					ajax(0, '用户不存在');
				}

				// 判断密码
				if ($user['password'] != md5(I('post.password'))) {
					ajax(0, '密码错误');
				}

				// 返回正确信息
				session('UserStatus', $user);
				ajax(1, '登录成功');
			}
		}	
	}

	/**
	 * 退出登录
	 */
	public function logout()
	{
		session('UserStatus', null);
		$this->redirect('Login/index');
	}
}