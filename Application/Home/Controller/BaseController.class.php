<?php
namespace Home\Controller;
use Think\Controller;
use \Parsedown;

/**
* 
*/
class BaseController extends Controller
{
	/**
	 * Markdown 转换为 html
	 */
	public function md($text)
	{
		$Parsedown = new Parsedown();
		return $Parsedown->text($text);
	}

	/**
	 * 盘古之白
	 * 
	 * @param  纠正前的文字
	 * @return 纠正后的文字
	 */
	public function pangu($text) {
        require 'vendor/kunr/pangu.php/pangu.php';
        echo pangu($text);
    }
}