<?php
namespace Common\Model;
use Think\Model;

/**
* 文章模型
*/
class ArticlesModel extends Model
{
	// 定义自动验证规则
	protected $_validate = [
		['title', 'require', '标题不能为空'],
		['content', 'require', '文章内容内容不能为空']
	];

	/**
	 * 全部文章不分页
	 *
	 * @return     <type>  ( description_of_the_return_value )
	 */
	public function all()
	{
		return $this->where('status = 1')
					->order('created_at desc')
					->select();
	}

	/**
	 * 通过页数获取文章 分页
	 *
	 * @param      integer  $page    当前页数
	 * @param      integer  $status  文章状态 1 为正常，0 为已删除
	 *
	 * @return     <type>   ( description_of_the_return_value )
	 */
	public function gets($page=1, $status=1)
	{
		return $this->where('status = %f', $status)
					->order('created_at desc')
					->page($page, C('PAGE_NUM'))
					->select();
	}

	/**
	 * 通过 id 查找一篇文章
	 *
	 * @param      integer   $id      文章 id （唯一）
	 * @param      integer  $status  文章状态 1 为正常，0 为 已删除
	 *
	 * @return     array   	文章信息
	 */
	public function finds($id, $status=1)
	{
		return $this->where('id = %f and status = %f', [$id, $status])
					->find();
	}

	/**
	 * 新增一条文章
	 *
	 * @param      <type>  $articleInfo  array  文章信息
	 *
	 * @return     <type>  结果
	 */
	public function inserts($articleInfo)
	{
		// 若文章内容不存在或不是数组抛出异常
		if (!$articleInfo || !is_array($articleInfo)) {
			return false;
		}

		return $this->add($articleInfo);
	}

	/**
	 * 更新文章信息
	 *
	 * @param      <type>   $id           文章 id
	 * @param      <type>   $articleInfo  文章信息
	 *
	 * @return     boolean  更改是否成功
	 */
	public function updates($id, $articleInfo)
	{
		// 若文章 id 不存在或不是数字抛出异常
		if (!$id || !is_numeric($id)) {
			return false;
		}

		// 若文章内容不存在或不是数组抛出异常
		if (!$articleInfo || !is_array($articleInfo)) {
			return false;
		}

		return $this->where('id = %f', $id)
					->save($articleInfo);
	}

	/**
	 * 获取相邻文章
	 *
	 * @param      intger  $timestamp  需要查询的时间戳
	 *
	 * @return     array   相邻前后两篇文章
	 */
	public function nears($timestamp){
		$nears = [];
		$nears['prev'] = $this->where('created_at > %f and status = 1', $timestamp)
							  ->order('created_at asc')
							  ->find();
		$nears['next'] = $this->where('created_at < %f and status = 1', $timestamp)
							  ->order('created_at desc')
							  ->find();
		return $nears;
	}

	/**
	 * 统计年
	 *
	 * @return     <type>  Number of years.
	 */
	public function countYears()
	{
		return $this->field("created_at, FROM_UNIXTIME(created_at, '%Y') as year, count(*) as nums")
					->where('status = 1')
					->group("FROM_UNIXTIME(created_at, '%Y')")
					->order('year desc')
					->select();
	}

	/**
	 * 统计月
	 *
	 * @return     <type>  Number of months.
	 */
	public function countMonths()
	{
		return $this->field("created_at, FROM_UNIXTIME(created_at, '%Y') as year , FROM_UNIXTIME(created_at, '%m') as month, count(*) as nums")
					->where('status = 1')
					->group("FROM_UNIXTIME(created_at, '%Y%m')")
					->order('year,month desc')
					->select();
	}
	
	/**
	 * 统计所有文章
	 *
	 * @param      integer  $status  文章状态 1 为正常 2为已删除
	 *
	 * @return     integer 文章数量
	 */
	public function counts($status=1)
	{
		return $this->where('status = %f', $status)
					->count();
	}
}