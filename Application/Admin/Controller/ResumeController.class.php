<?php 
namespace Admin\Controller;
use Think\Controller;
use Think\Storage\Driver\File;

/**
* 关于
*/
class ResumeController extends BaseController
{
	/**
	 * 如果没登录则重定向到登录页
	 */
	protected function _notLoginAfter()
	{
		$this->redirect('Login/index');
	}

	/**
	 * 关于个人页面展示/存储
	 */
	public function index() {
		// 实例化文件操作对象
		$File = new File();
		if (IS_POST) {
			// 接收并写入
			$content = I('content', '', 'strip_tags');
			$res = $File->put("Public/markdown/aboutme.md", $content);

			if ($res) {
				ajax(1, '保存成功');
			} else {
				ajax(0, '保存失败');
			}
		} else {
			// 读取 markdown 文件
			$content = $File->read("Public/markdown/aboutme.md");
			$this->assign([
					'content' => $content
				]);
			$this->display();
		}
	}
}