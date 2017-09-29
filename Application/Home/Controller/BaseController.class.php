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
}