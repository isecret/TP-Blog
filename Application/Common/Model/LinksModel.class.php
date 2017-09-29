<?php
namespace Common\Model;
use Think\Model;

/**
* 友链
*/
class LinksModel extends Model
{
	// 自动验证
	protected $_validate = [
			['id', 'require', '修改友链时 id 丢失'],
			['name', 'require', '站点名称必填'],
			['url', 'url', '站点地址(URL)不合法'],
			['avatar', 'url', '站点头像地址不合法'],
			['id', 'number', '友链 id 错误']
		];

	/**
	 * 查找所有友链
	 *
	 * @param      integer  $status  友链状态
	 *
	 * @return     array   友链集合
	 */
	public function gets($status=1)
	{
		return $this->where('status = %f', $status)
					->select();
	}

	/**
	 * 查找友链
	 *
	 * @param      integer  $id     友链唯一 id
	 */
	public function finds($id)
	{
		if (!$id) {
			return false;
		}
		return $this->where('id = %f', $id)
					->find();
	}

	/**
	 * 修改友链
	 *
	 * @param      intger   $id        友情链接唯一 id 
	 * @param      array   $linkInfo  友情链接信息
	 *
	 * @return     boolean  修改结果
	 */
	public function updates($id, $linkInfo)
	{
		if (!$id || !is_numeric($id)) {
			return false;
		}
		if (!$linkInfo || !is_array($linkInfo)) {
			return false;
		}
		return $this->where('id = %f', $id)
					->save($linkInfo);
	}

	/**
	 * 新增友情链接
	 *
	 * @param      array   $linkInfo  友情链接
	 *
	 * @return     boolean  返回插入结果
	 */
	public function inserts($linkInfo)
	{
		if (!$linkInfo || !is_array($linkInfo)) {
			return false;
		}

		return $this->add($linkInfo);
	}

	/**
	 * 统计友链
	 *
	 * @param      intger  $status  友链状态
	 *
	 * @return     intger  返回统计条数
	 */
	public function counts($status)
	{
		return $this->where('status = %f', $status)
					->count();
	}

}