<?php
namespace Home\Controller;
use Think\Controller;
use Think\Storage\Driver\File;

/**
* 
*/
class ResumeController extends BaseController
{
	public function index()
	{
		$File = new File();
		$content = $File->read("Public/markdown/aboutme.md");
		$content = $this->md($content);
		$this->assign([
					'title' => 'Resume',
					'content' => $content
				]);
		$this->display();
	}
}