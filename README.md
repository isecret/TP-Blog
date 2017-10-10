## 简介

这是一个基于 ThinkPHP 3.2.3 开发的一套博客程序，使用了大量框架特性。使用了大量的 PHP7 的新语法，在 PHP7 以下版本可能出现一些问题，同时，打包了 SQL 数据库用于学习。

[在线 Demo](https://blog.isecret.pw)

项目持续更新中，关于更新日志，[请摸我](#日志)

有任何问题或建议，请在 Issue 中提出。



## 安装

你可以使用 git 进行克隆项目（推荐）：

```bash
$ git clone https://github.com/isecret/TP-Blog.git
```

或直接下载该项目，使用 **composer** 更新。

```bash
$ composer install
```

然后导入 ``Blog.sql`` 到数据库。

## 配置

### 数据库

修改 ``Application\Common\Conf\db.php`` 中修改为您的数据库配置

### 评论

修改 ``Application\Common\Conf\comment.php`` 中修改为您的评论配置，关于 [gitement](https://github.com/imsun/gitment)  的配置文档请移步：[gitment](https://github.com/imsun/gitment) 或 [gitment 中文文档](https://imsun.net/posts/gitment-introduction/)



## 特性

- 前台
  - 文章列表
  - 文章详情
  - 文章分类
  - 文章归档
  - 个人简介
  - 友情链接
- 后台
  - 用户登录/注销
  - 文章发布/编辑/软删除
  - 友情链接新增/编辑/软删除
  - 个人简介修改
- 计划但未实现
  - 文章目录
  - 文章搜索
  - 文章归档算法优化



## 日志

* 2017 年 10 月 10 日：
  * 本地化 **gitment** 样式
  * 优化 README.md 并说明 ``composer`` 更新
* 2017 年 10 月 9 日：
  * 修复模版引入问题
  * 编写安装文档
  * 删除 ``\vendor``、``\composer.lock``
  * 调整 **gitment** 本地化样式
* 2017 年 10 月 8 日：
  * 完成文章分类
  * 修改 ``URL模式`` 为 **兼容模式** 并修复其异步请求的 URL 地址
  * 重新打包 SQL 数据库并更名为 ``Blog.sql``
  * 增加评论系统 [gitment](https://github.com/imsun/gitment)
* 2017 年 9 月 30 日：删除一些缓存
* 2017 年 9 月 29 日：推上测试版本



## 开源协议

本博客程序由 [Secret](https://blog.isecret.vip) 基于 [ThinkPHP 3.2.3](http://thinkphp.cn) 构建，拥有著作权。非商业组织可随意修改、使用、发布。