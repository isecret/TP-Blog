<?php
namespace Common\Model;
use Think\Model;

/**
* 
*/
class UsersModel extends Model
{
	protected $_validate = [
		['email', 'email', '邮箱不正确'],
		['password', 'require', '密码不能为空']
	];

	public function gets($email)
	{
		return $this->where("email = '%s'", $email)->find();
	}
}