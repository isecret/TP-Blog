<?php
namespace Admin\Controller;
use Think\Controller;

/**
* 友链控制器
*/
class LinkController extends BaseController
{
	// 若为登录则重定向到登录页
	protected function _notLoginAfter()
	{
		$this->redirect('Login/index');
	}

	/**
	 * 友链首页
	 */
	public function index()
	{
		// 实例化 Links 模型
		$Links = D('Links');

		if (IS_POST) {
			$id = I('post.id', false, 'intval');
			// 判断是否有id，有则为修改，没有则为创建
			if ($id) {
				if (!$Links->create()) {
					ajax(0, $Links->getError());
				} else {
					if ($Links->updates($id, I('post.'))) {
						ajax(1, '修改成功', ['url' => U('Link/index')]);
					} else {
						ajax(0, '修改失败');
					}
				}
			} else {
				if (!$Links->create()) {
					ajax(0, $Links->getError());
				} else {
					if ($Links->inserts(I('post.'))) {
						ajax(1, '添加成功', ['url' => U('Link/index')]);
					} else {
						ajax(0, '添加失败');
					}
				}
			}
		} else {
			// 判断是否有 id
			$id = I('get.id', false, 'intval');
			if ($id) {
				$link = $Links->finds($id);
				if (!empty($link)) {
					$this->assign([
							'link' => $link
						]);
				}
			}
			// 获取所有友链
			$links = $Links->gets();

			$this->assign([
					'links' => $links
				]);
			$this->display();
		}
	}
	
}