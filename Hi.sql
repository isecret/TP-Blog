-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-29 15:29:45
-- 服务器版本： 5.7.19
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Hi`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL COMMENT '文章id',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL COMMENT '文章标题',
  `description` text NOT NULL COMMENT '文章简介',
  `content` text NOT NULL COMMENT '文章内容',
  `category` varchar(200) NOT NULL COMMENT '文章分类',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '点击数',
  `replys` int(11) NOT NULL DEFAULT '0' COMMENT '回复数',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `status`, `title`, `description`, `content`, `category`, `hits`, `replys`, `created_at`, `updated_at`) VALUES
(1, 1, '迅雷活动Bug领取3天白金会员', '背景今天想下载 Windows 7 的镜像装在 Mac OS 下的虚拟机上用，因为装的 黑苹果 ，大部分工作在 Mac OS 下操作，但是时不时又需要用到 Windows ，然后戏剧性的一幕就是一天重启开关机五六次，有时候在 Mac OS 下创建的项目重启一次思路全乱。而最近在学习 Laravel ', '## 背景\r\n今天想下载 **Windows 7** 的镜像装在 **Mac OS** 下的虚拟机上用，因为装的 **黑苹果** ，大部分工作在 **Mac OS** 下操作，但是时不时又需要用到 **Windows** ，然后戏剧性的一幕就是一天重启开关机五六次，有时候在 **Mac OS** 下创建的项目重启一次思路全乱。而最近在学习 **Laravel** 框架，环境搭建的时候安装了 **VirtualBox** ，所以今天便打算安装一个 **Windows 7** 以便不时之需。\r\n\r\n在 [MSDN i tell you](https://msdn.itellyou.cn/) 中找了一个 **Windows 7** ISO镜像后，缓存到 **x度云盘** 然后用 **油猴** + **IDM** 下载，下载速度还算客观。可是！！！真实地址的临时文件在 **x度云** 的服务器有生命周期！什么意思呢？简而言之就是在一段时间后 **x度云** 的临时文件会被自动删除！造成的后果就是——每次快下载完成的时候，资源就没了！！（内心一万只草泥马沸腾而过）\r\n\r\n![MMP](https://static.isecret.vip/u=4052126842,211550549&fm=11&gp=0.jpg?imageMogr2/thumbnail/!80p)\r\n\r\n只能祝 [Google](https://g.isecret.vip) 早日取而代之。\r\n\r\n没办法，一个镜像说大不大，说小也不小啊！何况 **MSDN** 的镜像全是 ``ed2k`` 的，看样子只能用 **迅雷** 了呗，我能怎么办？我也很绝望啊，绕了这么大一圈瞎忙活。\r\n\r\n## 可耻的活动\r\n不得不说，每次 **迅雷** 的活动总是连汤都喝不着。要么是理财送会员，要么是限量抢。\r\n\r\n这次依然，在 [爱Q生活网](http://iqshw.com) 找到最近迅雷的活动，发现日期挺新，但是也是一周前的活动了，看了看活动结束日期发现还挺长，然后就 ~~因可赛艇~~ 的点进去了。。\r\n\r\n活动地址：[测测你的额度](http://jinrong.xunlei.com/act/borrow/)\r\n\r\n![你说可耻不可耻](https://static.isecret.vip/QQ20170906-201445.png)\r\n\r\n哇！你TM搞个活动都搞得这么有心机！至于吗？\r\n\r\n![我从未见过如此厚颜无耻之人](https://static.isecret.vip/3d4d18e8857f910811c429e2cbaf9e27_b.jpg?imageMogr2/thumbnail/!50p)\r\n\r\n## 秀操作\r\n然后气不过呀，心想难不成我还要去开个 **迅雷会员** ？脑子没病吧。然后滑动了一下活动页，发现一个有趣的事儿：\r\n\r\n活动维护的提示是一个模态框！飘在页面最顶层，点不了任何链接。模态框！\r\n\r\n![没想到吧](https://static.isecret.vip/14883355994260709.jpg?imageMogr2/thumbnail/!50p)\r\n\r\n秀一波操作？\r\n\r\n**Chrome** 右键 **检查**，找到元素 ``div.temp_pop_maintain`` 选中右键，点击 **Delete element** 删掉该元素。\r\n\r\n![删掉提示层](https://static.isecret.vip/QQ20170906-202744.png)\r\n\r\n删掉了还是点不着，嗯。。。还是没对呀。背景层还没删掉，继续找元素，选中 ``div.temp_pop_cover`` 右键 **Delete element**。\r\n\r\n![删掉背景层](https://static.isecret.vip/QQ20170906-202821.png)\r\n\r\n最后，左上角点击 **登录** 试试。\r\n\r\n![搞定](https://static.isecret.vip/QQ20170906-202852.png)\r\n\r\n剩下的事儿就一路按活动流程走了，不过前提需要 **验证手机号**。\r\n\r\n![抖机灵](https://static.isecret.vip/QQ20170906-202934.png)\r\n\r\n真没想到我的第一个 **迅雷会员** 是这样抖机灵来的。23333\r\n## 结尾\r\n还是那句话，迅雷是我见过最 **小气** 的公司之一，常年没有一个良心活动，做个活动还各种和捆绑限制。这个 **Bug** 估计是后端接口没有关闭，以至于还能通过接口继续领取，当前时间 **2017年9月6日 20:44** 活动接口仍未关闭，有意向的千万别手软。\r\n\r\n>注：因本活动记录了手机号，可能后面担心会有什么贷款公司的电话骚扰，请不要犹豫，直接挂掉！\r\n\r\n原创文章，各位大佬转载留个链接，感谢！\r\n', ' 抖机灵系列', 0, 0, 1505541394, 1505561626),
(2, 1, 'Hello Hexo', '经过无数次的折腾，终于将博客搬迁到了Hexo上，不过，之前的博文不会再补回来了，也请见谅。自己写的一个基于 Node.js & Mongodb 的博客程序运行了不到一个月就草草收场，原因很简单，Bug太多，技术太浅。不过原博客将会保留，放在https://blog.isecret.pw这个域名上。还', '经过无数次的折腾，终于将博客搬迁到了Hexo上，不过，之前的博文不会再补回来了，也请见谅。自己写的一个基于 **Node.js & Mongodb** 的博客程序运行了不到一个月就草草收场，原因很简单，Bug太多，技术太浅。\r\n\r\n不过原博客将会保留，放在**[https://blog.isecret.pw](https://blog.isecret.pw)**这个域名上。还有一些技术文章，我会从Emlog上搬过来。\r\n\r\n说到[Emlog](http://emlog.net)，很感谢它给我带来的收获，感谢的话还没来得及说官方站点却草草的停止维护了，感谢。\r\n\r\n## Hello Hexo！\r\n这个博客系统是基于[Hexo](https://hexo.io)搭建，主题由[NexT.Muse](https://github.com/iissnan/hexo-theme-next)定制为源博客Life主题样式。Life主题初衷就是基于NexT主题优化的，所有样式修改起来也比较容易。\r\n\r\n## 为何搬迁？\r\n用久了动态博客，突然想转向静态博客。说实在的，在半年前，我对静态博客嗤之以鼻。觉得有好端端的服务器，为什么还需要静态的博客呢？搭建一个[WordPress](https://wordpress.com)或者[Typecho](https://typecho.org)不好么？非要搞得那么复杂。\r\n\r\n但是，时隔数月，随着对静态博客有了更深的了解，感谢[小忆](https://blog.domeyi.com/)。总结如下：\r\n\r\n* 免费与收费。动态博客需要服务器或者虚拟主机，这通常不免费，而静态博客可以免费托管在[Github](https://github.com)或[Coding](https://coding.net)一类的代码托管平台上。\r\n* 书写更方便。博客初衷无非是发表技术博文以分享收获，之前使用的Emlog原生采用富文本编辑器，排版是非常头疼的问题。而静态博客大多由本地编写Markdown，自动编译为HTML代码。\r\n* 学习与分享。尝试了各种博客系统之后，在各种折腾之后，便会沉下心来思考为什么搭建博客？初衷是什么？\r\n\r\n很喜欢阮一峰的一句话[原文地址](http://www.ruanyifeng.com/blog/2012/08/blogging_with_jekyll.html):\r\n\r\n>第一阶段，刚接触Blog，觉得很新鲜，试着选择一个免费空间来写。\r\n第二阶段，发现免费空间限制太多，就自己购买域名和空间，搭建独立博客。\r\n第三阶段，觉得独立博客的管理太麻烦，最好在保留控制权的前提下，让别人来管，自己只负责写文章。\r\n\r\n细细数来，玩博客的时间已经非常长了，而沉下心来写博客的时间少之又少。\r\n\r\n## 蜕变\r\n曾经的我非常自大，认为自己的编程思想是无与伦比的，是前沿的。所以别人让我帮忙改代码的话总能揪出一些问题。这些问题在我看来是繁琐的，可以用更简单的方法写出来，或许是这种环境下，变得自大，认为自己的技术水平在毕业后随随便便能找到份稳定的工作。\r\n\r\n然而。这个暑假毕业，面试一家做Java开发的小公司，面试官的一些问题将我的知识水平暴露的体无完肤。当初面试的是前端开发，所以是一些前端的问题，比如，POST和GET的区别，JSON/XML的优势，我知道，这很简单，然而，我胡乱的答了一通。\r\n\r\n至今忘不了面试官的眼神。\r\n\r\n当然，扯得有点远了。搭建本博客的初衷无非是记录生活中遇到的一些问题以及收获，将它们保存成文字记录下来。人的记忆力是有限的，今天遇到的问题摸索出来的解决办法一个月后忘得皮毛不剩也不是没发生过。\r\n\r\n除开博客，手机、PC、Mac上都安装了[OneNote](http://www.onenote.com/)记录笔记。或许有人很奇怪，为什么不用印象笔记或网易云笔记一类更方便的笔记系统呢？哈哈哈哈。。我也不知道。或许是因为Office是用软妹币我买的原因吧。\r\n\r\n## 结语\r\n博客见证了我大学两年的时光。如今，坐标四川达州，大学毕业，没有找到相关工作，四天后将踏上开往深圳列车，曾经我以为我天赋过人，原来不过和普通人一样。\r\n\r\n生活还要继续，继续往前走。\r\n\r\n以上全部。\r\n', ' 个人文章', 0, 0, 1493654400, 1505541420),
(3, 1, '关于最近', '已经来深圳培训两周了，上周本想写点一周来的感悟，但是可能时间太短、日程比较紧张吧，实在憋不出什么东西出来。原计划的周记可能以后也是两周一记了，也就谈谈现状，说说近来的感悟。离别两周前，我与各位大学毕业生一样踏入了社会，第一次的彻底迷茫，恍恍惚惚大学生活就转瞬即逝。感觉大学也没怎么玩，在室友中，我敲代', '已经来深圳培训两周了，上周本想写点一周来的感悟，但是可能时间太短、日程比较紧张吧，实在憋不出什么东西出来。原计划的周记可能以后也是两周一记了，也就谈谈现状，说说近来的感悟。\r\n\r\n## 离别\r\n两周前，我与各位大学毕业生一样踏入了社会，第一次的彻底迷茫，恍恍惚惚大学生活就转瞬即逝。感觉大学也没怎么玩，在室友中，我敲代码的时间比游戏更长，有时候写得痴迷的地步可以从早上八点起床写到晚上十二点多也是常态。当然，最后还是和室友一样，普普通通的毕业了。经管毕业前接到了一个面试机会，不过也吹了（这个等会儿会提到）。毕业前的那一天，我还深深的记得，申是第一个走的，他之前收拾好东西，就等考试结束，在学校旁边的万达广场开的房间，考完回到寝室他已经走了，躺了两年他的床也拆得只剩下一张竹席堆满了行李箱。\r\n\r\n李是第二个走的，他和女朋友在外面租的房子，东西早已提前搬了过去，考试完的那一天，他在寝室收拾完最后一点东西，就挥手告别了（真的是挥手告别），他走的时候我真的不想去注意他，因为总觉得时间过得没这么快，我的大学生活还长着呢，他明晚或许就回来了。那一晚真的想了好多，以至于失眠了很久。比如：毕业后的规划啊、今后在哪儿发展啊、目前的能力能混口饭吃云云。\r\n\r\n第二天，等到中午父亲来接我，将行李箱丢上车，和剩下的室友告别，大学两年，要走了真的很舍不得。接过父亲递过来的烟，吸了一口望着飘散的烟，十六年的读书生涯，今天算结束了吧。\r\n\r\n>劝君更尽一杯酒，西出阳关无故人。  ——《送元二使安西》王维\r\n\r\n可笑的是连最后的散伙酒我也没能参加。大学最多交际当属[小忆](http://blog.iiwo.vip)了，在我成长的道路上这位挚友给我教会了我很多，当初约定好一起到北京培训，我却中途买好了深圳的车票，而这位朋友一个人踏上北京的路程，上周却听说他放弃了培训的路想通了直接找工作先实习了，不知道找到了工作没也不知道最近可好，无论如何，愿你前程似锦我的朋友。\r\n\r\n## 迷茫\r\n连我自己也不知道哪儿来的勇气，没提前联系任何培训深圳的培训机构就直接买了火车票，从四川到广州，硬座27小时。走的前一天，外公突然生病，赶到医院时外公已经进了CT室，一翻检查之后，医生告诉说可能是肺癌晚期了，肺部积水，外公是一个很要强的人，从未见过他在病床上难受的样子。"一定很疼吧外公"？ "疼，疼，疼..."\r\n\r\n回到家，找手机（早上出门比较急，忘记了），未果，打电话听震动声，仍未果。\r\n\r\n打开iCloud，查找设备，已离线？我手机在我家里离线了？！平时没有关机的习惯，故再打拨过去，关机！！！\r\n\r\n第一反应，家里遭贼了！打电话给我母亲，她还在医院里陪着外公，我尽量把声贝压到最低，"妈，你什么时侯回来"？"我还在医院陪你外公"，想到母亲即将失去爸爸真的很难受，"家里遭贼了，你快回来看看你丢什么东西没"！\r\n\r\n电话打完，在iCloud上执行了开机抹机命令就立马去营业厅补卡，我可怜的5s，屏幕碎了自己换了两次，电池换了一次，中框总成换了一次，进水了一次，都挺过来了。本以为再用半年不再话下，结果却永远的消失了。\r\n\r\n![纪念我的5s](https://static.isecret.vip/WX20170729-222817.png)\r\n\r\n祸不单行一词再好不过。\r\n\r\n## 深圳\r\n经过28小时的火车+2小时的班车，我顺利抵达了深圳福永。还好，姨夫住的地方里学校并不远，十来分钟车程。到达家里，洗澡、倒时差（在火车上没怎么睡觉）。\r\n\r\n第二天，在姨夫的陪同下来到学校先熟悉下环境，以免明天走错了就很尴尬了。在班群里一顿卖萌，同桌下楼来接我了，费了好大劲终于碰面（他在前门我在后门），两个人（曹和翁），上电梯的时候交流了下，感觉挺好。\r\n\r\n![教室](https://static.isecret.vip/0BBD66070C2AB891B0E93885B14361D1.png)\r\n\r\n上楼发现班上有几个人还在努力的敲代码，上完预科班有一个小项目，用HTML+CSS布局京东页面，来到我的位置，最后一排，报名晚了也就只剩下最后一排了，每人桌上有一台ThinkPad T400笔记本，配置不算太差，做PHP能用了。发现同桌在写项目(Sublime)，挺吃惊了，因为在学校的时候知道这编辑器的人不多，也或许是折腾的人比较少吧。内容大致是一个JQuery实现的轮播图吧，看来下控制器还在报错，估计要调试一会儿。交流了下技术，懂得挺多的，也爱折腾（他只是坐我同桌位置，我承认我刚开始记混了）。\r\n\r\n可能是培训之前列举的条例的威慑，每天八点五十上课我去七点就早早的爬起来，洗漱，吃早餐，搭车到学校。每次来的时候教室都还没开门（指纹），因为预科班的时候还在家里，教室的门每次都只能傻傻等杵在门外。\r\n\r\n上课时间每天很紧凑，每天早上9：00上课，中午12：00下课饭吃，中午13：40上课，下午6：00下课又吃饭，7：00上晚自习到9：00，宛如高三生活。不过还好，公交车还有，不至于每晚走6公里回家。\r\n\r\n前一周将了HTML基本标签，第二周讲了CSS并开始PHP的基础讲解。\r\n\r\n>温故而知新\r\n\r\n这句话一点不假，虽然之前学过这些内容，不过发现了不少之前不知道的东西，比如：[CSS伪类总结](https://blog.isecret.vip/css-pseudo.html)，还有一些记在了OneNote上，每天坐公交车的时候翻翻笔记，或者逛逛知乎。\r\n\r\n![OneNote笔记](https://static.isecret.vip/QQ20170802-211534.png)\r\n\r\n在之前的学习中，从来没有做笔记的习惯，开个博客写总结也是一鼓作气再而衰三而竭，更新了上文便没了下文。但是想想，人脑并非电脑，并没有存储介质所以谈不上永久记忆，你若说你大脑有几百T那就另当别论了。\r\n\r\n## 噩耗\r\n2017年7月24日早上6：50，外公去世，而我为了前程仍在学习中度过了浑浑噩噩一周。\r\n\r\n![与弟弟的聊天记录](https://static.isecret.vip/IMG_0036.PNG?imageMogr2/thumbnail/!30p)\r\n\r\n愿通往天堂的路上没有痛苦。', '个人文章', 0, 0, 1459526400, 1505541436),
(4, 1, 'CSS伪类总结', '个人用伪类在布居中比较频繁，因为觉得能用CSS完成的动画，尽量不用JS，总觉得JS或多或少会影响页面加载速度和流畅度，不过昨天上课却发现有很多细节之前遗落了，个人觉得比较经典，其中也有很多平常开发中遇到的一些小问题，也终于有了解释，所以写篇文章总结下。伪类？先来回顾伪类的使用方法，类/标签名:伪类类', '个人用伪类在布居中比较频繁，因为觉得能用CSS完成的动画，尽量不用JS，总觉得JS或多或少会影响页面加载速度和流畅度，不过昨天上课却发现有很多细节之前遗落了，个人觉得比较经典，其中也有很多平常开发中遇到的一些小问题，也终于有了解释，所以写篇文章总结下。\r\n\r\n## 伪类？\r\n先来回顾伪类的使用方法，类/标签名:伪类类型便可以构造一个伪类：\r\n```css\r\nselector:pseudo-class {\r\n	property: value;\r\n	...\r\n}\r\n\r\n.class:pseudo-class {\r\n	property: value;\r\n	...\r\n}\r\n```\r\n\r\n常用的伪类：``hover``、``active``、``visited``、``link``、``first-child``、``last-child``、``nth-child(n)``等等。\r\n\r\n## 小问题\r\n### 问题1\r\n现在一个页面，需要实现a标签不同伪类下颜色不同，代码如下：\r\n```html\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset="utf-8">\r\n	<title>Pseudo - Secret Blog</title>\r\n	<style type="text/css">\r\n		a:hover {\r\n			color: red;\r\n		}\r\n\r\n		a:visited {\r\n			color: blue;\r\n		}\r\n\r\n		a:link {\r\n			color: green;\r\n		}\r\n\r\n		a:active {\r\n			color: yellow;\r\n		}\r\n	</style>\r\n</head>\r\n<body>\r\n	<a href="#">Click it!</a>\r\n</body>\r\n</html>\r\n```\r\n\r\n效果演示：[Pseudo - Secret Blog](https://static.isecret.vip/pseudo.html)\r\n\r\n有错么？代码看起来没错呀，我``hover``去哪儿呢（~~张嘴，是不是你吃了！~~）？有的同学之前也遇到过类似的问题，代码没错啊，怎么没效果呢？\r\n\r\nW3C中提到（[CSS 伪类](http://www.w3school.com.cn/css/css_pseudo_classes.asp)）：\r\n\r\n>提示：在 CSS 定义中，a:hover 必须被置于 a:link 和 a:visited 之后，才是有效的。\r\n提示：在 CSS 定义中，a:active 必须被置于 a:hover 之后，才是有效的。\r\n提示：伪类名称对大小写不敏感。\r\n\r\n上面提到``hover``必须放到``link``和``visited``之后，而``active``又要放到``hover``之后，所有正确的书写顺序是：``link -> visited -> hover -> active``。\r\n\r\n### 问题2\r\n``first-child``和``last-child``接触过的同学可能觉得非常好用，使用方式各式各样，我一般用于清除第一个或者最后一个的样式，下列代码大家来分析下，看看有什么错误：\r\n```html\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset="utf-8">\r\n	<title>Child - Secret Blog</title>\r\n	<style type="text/css">\r\n		ul li:first-child{\r\n			color: red;\r\n		}\r\n		ul li:nth-child(2){\r\n			color: blue;\r\n		}\r\n		ul li:nth-child(3){\r\n			color: yellow;\r\n		}\r\n		ul li:last-child{\r\n			color: green;\r\n		}\r\n	</style>\r\n</head>\r\n<body>\r\n	<ul>\r\n		<p>List</p>\r\n		<li>First</li>\r\n		<li>Second</li>\r\n		<li>Third</li>\r\n		<li>Last</li>\r\n		<p>List End</p>\r\n	</ul>\r\n</body>\r\n</html>\r\n```\r\n\r\n效果演示：[child - Secret Blog](https://static.isecret.vip/child.html)\r\n\r\n是不是和预想的效果有差异？明明第一个不是红色字体呢？咋是蓝色呢？第二个不是蓝色么？咋又是黄色的？还有我最后一个的绿色哪儿去了？\r\n\r\n别蒙圈，继续上W3C解释（[原文地址](http://www.w3school.com.cn/cssref/pr_pseudo_first-child.asp)）：\r\n>利用 :first-child 这个伪类，只有当元素是另一个元素的第一个子元素时才能匹配。例如，p:first-child 会选择作为另外某个元素第一个子元素的所有 p 元素。一般可能认为这会选择作为段落第一个子元素的元素，但事实上并非如此，如果要选择段落的第一个子元素，应当写为 p > *:first-child。\r\n\r\n只有当元素是另一个元素的第一个子元素时才能匹配，通俗的讲，就是上面代码里，`div li:frist-child`并不是指向下面``ul``中的第一个``li``，因为``li``并不在``ul``中的一个元素。``last-child``同理，至于指向哪儿去了？（~~我也不知道！跑~~）\r\n\r\n而``nth-child``的指向，仔细看一下就会发现，如果将``p``标签作为第一个的话，那么颜色就没错。而浏览器也正是这样解析的。\r\n\r\n## 总结\r\n和刘哥说的一样，CSS中伪类是一个很奇怪的东西，很多错误发生在细节上却毫无察觉。伪类的一些小细节就先分析这么多，如果还有更多的欢迎补充。\r\n', '成长笔记', 0, 0, 1505541455, 1505541455),
(5, 1, 'Hexo插件之gulp', '折腾完hexo，开始处理一些小细节，之前调试主题的时候就发现NexT并没有对代码进行压缩处理，详情见：如何优化NexT主题？为何要压缩代码？首先，没有比较就没有伤害：这是主页压缩前后的对比图，主要将多余空格和换行给去掉，CSS和JS同理。压缩的优势？列出以下四点，欢迎补充：减小了文件的体积减小了网络', '折腾完hexo，开始处理一些小细节，之前调试主题的时候就发现NexT并没有对代码进行压缩处理，详情见：[如何优化NexT主题？](http://theme-next.iissnan.com/faqs.html#optimize)\r\n\r\n## 为何要压缩代码？\r\n首先，没有比较就没有伤害：\r\n\r\n![压缩前后对比图](https://static.isecret.vip/QQ20170711-132105.png)\r\n\r\n这是主页压缩前后的对比图，主要将多余空格和换行给去掉，CSS和JS同理。\r\n\r\n压缩的优势？列出以下四点，欢迎补充：\r\n\r\n- 减小了文件的体积\r\n- 减小了网络传输量和带宽占用\r\n- 减小了服务器的处理的压力\r\n- 提高了页面的渲染显示的速度\r\n\r\n## gulp能做什么？\r\ngulp是一款基于Node.js的一款利用数据流自动化构建工具，利用其插件可以对文件进行IO操作，其中包括压缩代码等功能。\r\n\r\n## gulp的安装\r\n>注：安装此插件务必确认安装Node环境及包管理工具（npm或cnpm）\r\n\r\n任何一款js插件，首先是参考文档说明。详见：[官方文档](http://www.gulpjs.com.cn/docs/)\r\n\r\n首先，需要安装gulp及其配套的插件。\r\n\r\n```bash\r\n$ cd blogdir/\r\n$ cnpm install gulp --save\r\n$ cnpm install gulp-htmlclean --save\r\n$ cnpm install gulp-htmlmin --save\r\n$ cnpm install gulp-minify-css --save\r\n$ cnpm install gulp-uglify --save\r\n```\r\n注：``cnpm``为淘宝npm镜像，如果发现``cnpm``提示``command not found``，请[自行安装](http://npm.taobao.org/)或使用``npm``，使用方法与``npm``相同，不过将镜像存储在国内加快包下载速度。\r\n\r\n完成后查看``package.json``是否包含上列安装的包：\r\n\r\n``` javascript\r\n"dependencies": {\r\n    "gulp": "^3.9.1",\r\n    "gulp-htmlclean": "^2.7.14",\r\n    "gulp-htmlmin": "^3.0.0",\r\n    "gulp-imagemin": "^3.3.0",\r\n    "gulp-minify-css": "^1.2.4",\r\n    "gulp-uglify": "^3.0.0",\r\n    "hexo": "^3.2.0",\r\n    "hexo-deployer-git": "^0.3.0",\r\n    "hexo-generator-archive": "^0.1.4",\r\n    "hexo-generator-category": "^0.1.3",\r\n    "hexo-generator-index": "^0.2.0",\r\n    "hexo-generator-tag": "^0.2.0",\r\n    "hexo-renderer-ejs": "^0.2.0",\r\n    "hexo-renderer-marked": "^0.2.10",\r\n    "hexo-renderer-stylus": "^0.3.1",\r\n    "hexo-server": "^0.2.0"\r\n  }\r\n```\r\n然后新建``gulpfile.js``文件到hexo根目录，内容如下：\r\n\r\n``` javascript\r\nvar gulp = require(\'gulp\');\r\n\r\n//Plugins模块获取\r\nvar minifycss = require(\'gulp-minify-css\');\r\nvar uglify = require(\'gulp-uglify\');\r\nvar htmlmin = require(\'gulp-htmlmin\');\r\nvar htmlclean = require(\'gulp-htmlclean\');\r\n\r\n// 压缩 public 目录 css文件\r\ngulp.task(\'minify-css\', function() {\r\n    return gulp.src(\'./public/**/*.css\')\r\n        .pipe(minifycss())\r\n        .pipe(gulp.dest(\'./public\'));\r\n});\r\n\r\n// 压缩 public 目录 html文件\r\ngulp.task(\'minify-html\', function() {\r\n  return gulp.src(\'./public/**/*.html\')\r\n    .pipe(htmlclean())\r\n    .pipe(htmlmin({\r\n         removeComments: true,\r\n         minifyJS: true,\r\n         minifyCSS: true,\r\n         minifyURLs: true,\r\n    }))\r\n    .pipe(gulp.dest(\'./public\'))\r\n});\r\n\r\n// 压缩 public/js 目录 js文件\r\ngulp.task(\'minify-js\', function() {\r\n    return gulp.src(\'./public/**/*.js\')\r\n        .pipe(uglify())\r\n        .pipe(gulp.dest(\'./public\'));\r\n});\r\n\r\n\r\n// 执行 gulp 命令时执行的任务\r\ngulp.task(\'default\', [\r\n    \'minify-html\',\'minify-css\',\'minify-js\'\r\n]);\r\n```\r\n至此，安装完成。\r\n\r\n## gulp的使用\r\ngulp的使用很简单，只需要在部署之前将代码压缩即可：\r\n\r\n```bash\r\n$ hexo clean\r\n$ hexo g\r\nINFO  Start processing\r\nINFO  Files loaded in 723 ms\r\nINFO  Generated: index.html\r\n$ gulp\r\n[13:18:33] Using gulpfile ~/blog/gulpfile.js\r\n[13:18:33] Starting \'minify-html\'...\r\n[13:18:33] Starting \'minify-css\'...\r\n[13:18:33] Starting \'minify-js\'...\r\n$ hexo d\r\nINFO  Deploying: git\r\nINFO  Clearing .deploy_git folder...\r\nINFO  Copying files from public folder...\r\n```\r\n\r\n## 总结\r\ngulp能做的事远不止压缩代码这么简单，比如：文件测试、检查、合并、格式化、浏览器自动刷新等等。更多的功能自己好好琢磨一下吧。', 'hexo', 0, 0, 1505541474, 1505541474),
(6, 1, '我的黑客故事', '我一直相信，每个宣称自己是黑客的青少年，一定都有着某种非主流的情怀，这情怀无法由颜值担当，就只能籍技术派遣。我也不例外。    ——来自《我的校园黑客故事》 - 王登科在圈子混久了你就会发现，很多热爱网络的人都向往着黑客，这种情愫在懵懂时最是旺盛而又随着年龄逐渐淡去。我接触互联网的时间有点晚，不过那', '>我一直相信，每个宣称自己是黑客的青少年，一定都有着某种非主流的情怀，这情怀无法由颜值担当，就只能籍技术派遣。我也不例外。	——来自《[我的校园黑客故事](http://www.wdk.pw/1037.html)》 - 王登科\r\n\r\n在圈子混久了你就会发现，很多热爱网络的人都向往着黑客，这种情愫在懵懂时最是旺盛而又随着年龄逐渐淡去。我接触互联网的时间有点晚，不过那个时候肉鸡还满山跑，宽带付费最是火热的时候。\r\n\r\n我的黑客启蒙也是在那个时候开始的。最开始从网上找一些资源到后来攒下一个月生活费拜师学艺。没错，那个时候只要找对了人肯定能学到一些技术。当然，一些人冒充大牛骗取拜师费后就拉黑你也是常有的事儿，如果那个时候能动点歪脑经没准赚的盆满钵满。\r\n\r\n懵懂时期的一些事儿实在丢人现眼，就从高中毕业开始说起吧。\r\n\r\n考上专科几乎没有其他原因，高中不努力。而我抱着尽量选择一个好一点的专科的心态准备报考单独招生考试，流程大概是先到意向学校官网报名，然后缴费，按考试时间参加学校的考试，最后就是等录取消息了。在各种纠结之后，还是网上报名了母校的单招考试。\r\n\r\n**而不争的事实是每个学校都有一个漏洞百出的官网。**报完名之后，习惯性的翻了翻学校的站点，``asp``写的后台，在版权信息部分找到了管理入口，进入后习惯性的试了几个弱口令，未果。准备关掉浏览器的时候试着注入。\r\n\r\n**「欢迎回来，管理员。」**\r\n\r\n这么草率？带着惊愕的表情，抑制住内心的欣喜开始爬后台。按照以往的流程是：找上传入口->上传木马（按服务器防火墙的机制大概分为一句话马、小马、大马、图片马等等）-> 然后上传``cmd.exe``提权。\r\n\r\n然而，没找到上传入口！！！管理员发文章都不用上传图片或者附件的么？气氛一度尴尬，好比拆快递的时候没有小刀一类的东西，哪怕是一根针都没有！带着疑问，翻看已经发布的文章，居然还真没发过一张图片。只好作罢，继续看看还有什么有价值的东西。经管没有上传入口，而这个账号的权限却不低，轻则可以关闭报名入口，重则删改/下载学院的学生名单！快速逛了一圈，名单中包含的信息非常详细！详细到姓名、年龄、身份证、手机号，甚至你家住哪儿村哪个屯。\r\n\r\n这是否可以做点文章？\r\n\r\n那是当然，在离考试前几天，我将它参照乌云的格式写成漏洞报告书然后打印了出来。详细的论述了漏洞地址，漏洞属性，漏洞测试，然后把后台截了两张图，最后，写出了两点修复意见。要么就把管理界面隐藏起来，要么就是过滤关键字或者转义（想都不用想肯定后者啊）。\r\n\r\n考试前一天，特长生需要提前到学校报道，把高中的各种证书拿出来复印了一份，临走前将漏洞报告书递给招生老师，让帮忙带给网站管理员。其实提交报告书的时候，内心十分纠结。就算报告书尾页强调的**『以上为友情测试，本人承认未下载、删除、修改任何数据，未公开该漏洞...』**,但是**『未经过授权的渗透测试属于违法行为』**，不过学校并没追究任何责任并提供给我念大学的机会。\r\n\r\n走出校门，一股拯救世界的自豪感涌上心头！\r\n\r\n事后发现当时的行为实在鲁莽，也十分感谢学校的不杀之恩：\r\n\r\n>非常感谢提交漏洞和对xxxx的支持，我们已第一时间将漏洞修复完毕，并抓捕了你。 —— [袁炜事件](https://www.zhihu.com/question/47775182)\r\n\r\n后来啊。一直忙于各种闲事儿，也很少去搞破事儿了。不过大二左右，无聊逛着学校官网，找到图书馆的系统，通过机房内网注入、成功上传漏洞并上传了小马，然后写了一只大马，提权进入了服务器，不过该站点长时间未更新又是一个很偏的一个子系统，C盘D盘草草翻了下也没有什么价值，然后溜达了一圈就关掉了。\r\n\r\n刚刚想起来还有这茬，重新打开图书馆官网看到最近有更新文章，便联系站点底部馆长邮箱，告知该漏洞信息并提醒修复，发出去两分钟就给回信了，『好的，谢谢你！』，不过该漏洞尚未修复，也就暂不公开了，邮件截图等漏洞修复完成了再补图吧。\r\n\r\n---\r\n\r\n更新：2017-8-29 补图邮件\r\n\r\n![2017-8-29 补图](https://static.isecret.vip/psb.png)\r\n\r\n---\r\n\r\n我始终未成为理想中的黑客，却走向了与之相差十万八千里的码农。\r\n\r\n我还在为生存卖力，为生活拼搏。你我共勉之。\r\n\r\n以上全部，我的黑客故事。\r\n', '个人文章', 0, 0, 1491062400, 1505541833),
(7, 1, '正则表达式笔记', '世上三大最难懂：医生的处方、道士的符、程序员的正则学了几年编程，也写了不少项目，业务逻辑经验攒了一堆，基础知识却落下不少。其中很多还非常重要，比如：进制换算、正则表达式、算法。当初学这些东西的时候，对高数的抗拒让我对带计算的东西也十分抵触。但是，身为码农，这些基础都不懂还怎么拿代码换烟钱？于是，决定', '>世上三大最难懂：医生的处方、道士的符、程序员的正则\r\n\r\n学了几年编程，也写了不少项目，业务逻辑经验攒了一堆，基础知识却落下不少。其中很多还非常重要，比如：进制换算、正则表达式、算法。当初学这些东西的时候，对高数的抗拒让我对带计算的东西也十分抵触。但是，身为码农，这些基础都不懂还怎么拿代码换烟钱？于是，决定恶补一下。\r\n\r\n## 正则表达式\r\n>正则表达式，又称正规表示式、正规表示法、正规表达式、规则表达式、常规表示法（英语：Regular Expression，在代码中常简写为regex、regexp或RE），是计算机科学的一个概念。正则表达式使用单个字符串来描述、匹配一系列匹配某个句法规则的字符串。在很多文本编辑器里，正则表达式通常被用来检索、替换那些匹配某个模式的文本。	——来自[维基百科](https://zh.wikipedia.org/wiki/%E6%AD%A3%E5%88%99%E8%A1%A8%E8%BE%BE%E5%BC%8F)\r\n\r\n### 使用场景\r\n正则表达式起始日常生活中也用过，比如搜索的时候用的``*``匹配（好吧，那个应该准确的叫做通配符，反正差不多就这意思嘛），下面谈谈正则使用的场景：\r\n\r\n1. 手机号、邮箱、\r\n2. URL判断\r\n3. 配置文件、检索关键字\r\n4. 模板引擎\r\n\r\n### 使用原则\r\n由于正则会将通常一串字符挨个检索，如果没找到匹配项，会从开头一直匹配到结尾，所以说，**正则表达式的效率非常低**的，能用内置函数尽量用内置函数。不过，**一些特定场景正则表达式有他独有的优势**。\r\n\r\n总结：能不用就尽量不用。\r\n\r\n## 语法定义\r\n能不用就不用不代表不学习啊，万一哪天面试就考到你正则不可能瞎写一通吧。即便是做项目在网上复制的现成的也要明白个大概意思。\r\n\r\n### 组成部分\r\n其实组成部分是很多的，这里只做基础介绍。以能写出简单正则，能看懂正则意思为目的。\r\n\r\n正则的组成：\r\n\r\n1. 定界符\r\n2. 原子\r\n3. 元字符\r\n4. 模式修正符\r\n\r\n匹配规则：\r\n\r\n1. 从左到右\r\n2. 默认贪婪匹配（简述就是匹配成功后继续匹配，参见[#贪婪模式](#贪婪模式)）\r\n\r\n### 定界符\r\n定界符是正则表达式的边界，这个没有严格规定，通常以``/``作为正则的定界符。规则是：不能使用``0-9``、``a-z``、``A-Z``、``\\``和空格。\r\n\r\n### 原子\r\n原子在化学中讲过吧，是最小的单位。而正则中的原子同理，也是正则中最小的单位，不可再分割了。\r\n\r\n* ``\\d``：包含``0-9``\r\n* ``\\D``：不包含``0-9``\r\n* ``\\w``：包含``0-9``、``a-z``、``A-Z``和``_``\r\n* ``\\W``：不包含``0-9``、``a-z``、``A-Z``和``_``\r\n* ``\\s``：包含空白字符、空格、``\\n``、``\\t``和``\\r``等\r\n* ``\\S``：不包含上诉空白字符\r\n* ``\\b``：词边界\r\n* ``\\B``：非词边界\r\n* ``[]``：原子列表，可匹配列表原子或字符出串\r\n* ``[^]``：取反，写在原子列表里为取反\r\n* ``.``：除``\\n``以外任意字符\r\n\r\n### 元字符\r\n元字符是用来修饰原子的，**不能单独存在，写在原子之后**。\r\n\r\n* ``*``：匹配任意次\r\n* ``+``：至少出现一次\r\n* ``?``：可有可无，最多一次\r\n* ``{}``：指定次数\r\n	* ``{10}``：指定十次\r\n	* ``{3,5}``：指定3-5次\r\n	* ``{3,}``：至少3次\r\n	* ``{0,3}``：0-3次\r\n* ``^``：指定以某个原子开头（千万别记混``[^]``和``^``的区别）\r\n* ``\\A``：与``^``相同\r\n* ``$``：指定以什么结尾\r\n* ``\\Z``：与``$``相同\r\n* ``|``：或\r\n* ``()``：限制优先级，括号里为一个整体。子模式：参见[#子模式](#子模式)\r\n\r\n### 模式修正符\r\n与元字符用于修饰原子，而模式修正符用于修正整个正则表达式。而**模式修正符必须写在正则表达式的后面**。\r\n\r\n* ``i``：忽略大小写\r\n* ``m``：多行匹配\r\n* ``s``：让``.``匹配到``\\n``\r\n* ``x``：忽略正则表达式中的空格\r\n* ``A``：与``\\A``和``^``一样\r\n* ``U``：正则贪婪模式取反\r\n\r\n### 组合\r\n原子与不同元字符组合可以达到很多的效果，而**多个元字符可以同时修饰一个原子**。\r\n\r\n* ``.+?``：取消贪婪匹配，只匹配一个字符\r\n* ``.*?``：取消贪婪匹配，匹配出0个字符\r\n\r\n## 贪婪模式\r\n>仅从应用角度分析，可以这样认为，贪婪模式，就是在整个表达式匹配成功的前提下，尽可能多的匹配，也就是所谓的“贪婪”，通俗点讲，就是看到想要的，有多少就捡多少，除非再也没有想要的了。	——来自[正则基础之——贪婪与非贪婪模式\r\n](http://blog.csdn.net/lxcnn/article/details/4756030)\r\n\r\n## 子模式\r\n>我们可以使用小括号给整个匹配模式进行分组，默认情况下，每个分组会自动拥有一个组号，规则是，从左到右，以分组的左括号为标志，第一个出现的分组为组号1，第二个为组号2，以此类推。其中，分组0对应整个正则表达式。对整个正则匹配模式进行了分组以后，就可以进一步使用“向后引用”来重复搜索前面的某个分组匹配的文本。例如：\\1代表分组1匹配的文本，\\2代表分组2匹配的文本等等	——来自[正则表达式的子模式详解](http://www.cnblogs.com/hongfei/archive/2012/06/23/2559210.html)\r\n\r\n## 样例\r\n由于正则的字符实在"火星"，所以需要多加练习才能真正明白其匹配规则，下面写几个样例，以后需要直接用。\r\n\r\n### 判断手机号\r\n**分析**\r\n\r\n手机号一般为11位纯数字，1打头，第二位号码段主要以3,4,5,7,8为主（个人猜测），第三位到最后一位为0-9的随机数。\r\n\r\n**代码**\r\n\r\n```php\r\n/^1[34578]\\d{9}$/\r\n```\r\n\r\n### 判断邮箱\r\n**分析**\r\n\r\n邮箱号格式是``xxx@xxx.xxx``，字符串中包含一个``@``和一个``.``，其他字符分为三段，第一段以``0-9``、``a-z``、``A-Z``、``-``和``_``组成且至少一位，第二段以``0-9``、``a-z``、``A-Z``和``-``组成且至少一位，第三段以``a-z``和``A-Z``组成且至少两位（中文域名就算了吧）。\r\n\r\n**代码**\r\n\r\n```php\r\n/\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}/\r\n```\r\n\r\n## 总结\r\n在实际开发中所遇到的正则无非就那么几种，网上有很多大佬写好的直接可以用，而自己写的一些正则可以存下笔记，以便以后遇到相同的需求可以直接使用，毕竟效率最重要。\r\n\r\n## 文档\r\n\r\n* [雁过无痕](http://blog.csdn.net/lxcnn/article/details/4756030)\r\n* [曾是土木人](http://www.cnblogs.com/hongfei/archive/2012/06/23/2559210.html)\r\n* [正则表达式测试工具 - 在线工具箱](http://tool.lu/regex/)\r\n* 浩哥的笔记', '成长笔记', 0, 0, 1501603200, 1505542011),
(8, 1, 'Git笔记', '今天在Windows下安装了次Node.js环境，其中也涉及到了git的安装和初始化，或许是之前学习的时候太皮，很多命令、参数都忘得干干净净。这次不妨做个笔记，以后可能（一定）会用到。环境操作系统：Windows 10 Version 10.0.15063安装工具：Bash On Ubantu On', '今天在Windows下安装了次Node.js环境，其中也涉及到了git的安装和初始化，或许是之前学习的时候太皮，很多命令、参数都忘得干干净净。这次不妨做个笔记，以后可能（一定）会用到。\r\n## 环境\r\n* 操作系统：Windows 10 Version 10.0.15063\r\n* 安装工具：Bash On Ubantu On Windows（以下简称：WinBash）\r\n\r\n>注：因为WinBash还存在很多尚不明确的因素，安装环境受系统版本及网络影响。Ubantu、CentOS等Linux衍生系统安装方法类似。本次安装仅作参考。\r\n\r\n>注：若使用WinBash请先开启Windows开发者模式，开启方法请自行搜索。\r\n\r\n## 开始\r\n### 安装Git\r\n\r\n使用``apt-get``经行安装，命令：\r\n\r\n```bash\r\n$ sudo apt-get install git\r\n```\r\n\r\n然后输入y，完成安装。\r\n\r\n### 检查安装\r\n可以执行``git``命令查看是否安装成功，命令：\r\n\r\n```bash\r\n$ git\r\nusage: git [--version] [--help] [-C <path>] [-c name=value]\r\n           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]\r\n           [-p | --paginate | --no-pager] [--no-replace-objects] [--bare]\r\n           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]\r\n           <command> [<args>]\r\n$ git --version\r\ngit version 2.7.4\r\n```\r\n\r\n### 配置Git\r\ngit安装完成，需要初始化用户信息，这通常是全局的，命令如下：\r\n\r\n```bash\r\n# 配置用户名\r\n$ git config --global user.name "your_name"\r\n# 配置邮箱地址\r\n$ git config --global user.email "your_email"\r\n```\r\n\r\n### 生成&验证SSH公匙\r\n>公匙用于Github或服务器的免密登录的一个口令，一个公匙可多方登录，由于SSH的重要性，请勿泄露公匙。\r\n\r\n公匙存在在``~/.ssh``目录下的``id_rsa.pub``，如果不存在先生成，存在则直接查看：\r\n\r\n```bash\r\n# 生成公匙\r\n$ ssh-keygen -t rsa -C "mail@mail.com"\r\n# 接下来直接敲三个回车\r\n# 查看公匙\r\n$ cat ~/.ssh/id_rsa.pub\r\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwdB8G/vCpmZu3yI7N62GqykMcBhWZ5BI34rnBXM9CNtXASGD3Pg7erkn0kuOSzSm9RkoRtnmbA/D9TNqMxNtXUxHHjEw27yFPffit1b5Zjj651Kp.......... mail@mail.com\r\n```\r\n\r\n关于``ssh-keygen``命令参数解释：\r\n\r\n* -t：申明密匙类型，参数："rsa1"(SSH-1)、"rsa"(SSH-2)、"dsa"(SSH-2)\r\n* -C：添加注释\r\n\r\n### 验证SSH公匙\r\n将SSH公匙添加到[Github](https://github.com)或[Coding](https://coding.net)中的SSH公匙管理中，下一步操作即是验证公匙是否可用，命令：\r\n\r\n```bash\r\n# Github与Coding验证地址不同，以下以Github为例\r\n$ git -T git@github.com\r\n```\r\n\r\n### 创建远程仓库\r\n代码管理离不开远程仓库，远程仓库能随时同步代码、多人协助、版本回滚等。\r\n\r\n远程仓库国内推荐使用[Coding](https://coding.net)或[Github](https://github.com)，当然，类似的平台还有[码云](https://git.oschina.net)。在Github上，直接点击``New repository``建立仓库。\r\n\r\n比如，我现在创建一个仓库名为``test``的仓库：\r\n\r\n![新建仓库](https://static.isecret.vip/4444B071-CC71-4B3D-B418-A3F753B37895.png)\r\n\r\n**配置解释**:\r\n\r\n* Repository name： 仓库名，不可于当前用户的其他仓库名重名\r\n* Public / Private： 项目是否公开，这里说明一下的是Github的私有项目是收费的\r\n* Add README： 是否初始化时建立``README.md``说明文件\r\n* Add .gitignore： 是否创建忽略``.gitignore``配置文件\r\n* Add license： 是否添加协议\r\n\r\n## Git基础\r\n\r\n### 建立仓库\r\n创建完成远程仓库，转向本地，初始化本地Git仓库：\r\n\r\n```bash\r\n# 创建目录\r\n$ mkdir your_project/\r\n# 切换到目录\r\n$ cd your_project/\r\n# 初始化仓库，创建.git目录，将此目录作为git工作空间\r\n$ git init\r\nInitialized empty Git repository in /Users/secret/Desktop/test/.git/\r\n```\r\n\r\n初始化完成本地仓库，需要将本地仓库和远程仓库进行关联：\r\n\r\n首先需要获取远程仓库的地址，可以打开刚刚新建的``test``的仓库：\r\n\r\n![获取远程仓库链接](https://static.isecret.vip/7C92AF7A-E9CC-4A88-94CC-CFA866AF42FB.png)\r\n\r\n在输入框中的内容就是该仓库的远程地址，最右边可以一键复制。\r\n\r\n现在将本地仓库与远程仓库进行关联：\r\n\r\n```bash\r\n$ git remote add origin git@github.com:isecret/test.git\r\n\r\n```\r\n\r\n### 存入缓存区并提交\r\n可以先尝试创建一个文件，然将它添加到缓存中：\r\n\r\n```bash\r\n# 创建test.txt文件\r\n$ touch test.txt\r\n# 编辑该文件，你同样可以选择其他编辑器\r\n$ vim test.txt\r\n# 保存完成后，将其添加到缓存中\r\n$ git add test.txt\r\n# 提交本次修改\r\n$ git commit -m \'Create and edited test.txt\'\r\n[master (root-commit) 40a635b] Create and edited test.txt\r\n 1 file changed, 1 insertion(+)\r\n create mode 100644 test.txt\r\n```\r\n\r\n参数说明：\r\n\r\n* ``git add 文件名``是将此文件加入缓存区，也可以使用``git add .``将此目录加入缓存区\r\n* ``git commit``的``-m``参数是给此次提交的动作给一个描述，比如修改了什么地方，修复了什么Bug等\r\n* ``git add .``和``git commit -m \'描述\'``可以合并写为``git commit -am \'描述\'``\r\n\r\n#### 查看提交记录\r\n文件修改后提交至缓存区后，便会生成一个提交记录的HEAD信息及其描述，在后续使用可以回滚到当前版本。好比于修改代码，越改越乱的情况，就可以直接回到上一个版本重新来写。\r\n\r\n```bash\r\n# 查看提交版本，commit后边的内容便是版本号，最后一行是注释信息\r\n$ git log\r\ncommit c172fa948ab343276c84ec3bbf11d0c0cd027b3c\r\nAuthor: isecret <572524331@qq.com>\r\nDate:   Sun Jul 23 12:57:36 2017 +0800\r\n\r\n    Create and edited test.txt\r\n```\r\n\r\n### 查看修改记录及状态\r\n这个顾名思义，查看当前版本的改动。在Github上能高亮显示出，不过在命令行也能查看到。\r\n\r\n首先，我先在``text.txt``中再增加一段``Hello World``，然后查看改动：\r\n\r\n```bash\r\n# 增加一段Hello World!\r\n$ vim test.txt\r\nHello Git!Hello World!\r\n$ git diff\r\ndiff --git a/test.txt b/test.txt\r\nindex 106287c..d149c10 100644\r\n--- a/test.txt\r\n+++ b/test.txt\r\n@@ -1 +1 @@\r\n-Hello Git!\r\n+Hello Git! Hello World!\r\n# 插入:2，内容 Thanks for us!\r\n$ vim test.txt\r\n# 查看当前状态\r\n$ git status\r\nOn branch master\r\nChanges not staged for commit:\r\n  (use "git add <file>..." to update what will be committed)\r\n  (use "git checkout -- <file>..." to discard changes in working directory)\r\n\r\n	modified:   test.txt\r\n\r\nno changes added to commit (use "git add" and/or "git commit -a")\r\n```\r\n\r\n参数说明：\r\n\r\n* 直接使用``git diff``用于查看当前未``git add``的内容修改\r\n* 已经``git add``但还没提交，使用``git diff --cached``查看内容修改\r\n* ``git diff HEAD``是上面两条的合并\r\n* ``git diff HEAD1 HEAD2 src``可以比较两个版本的``src``文件夹的差异\r\n* ``git status``会列出还没添加到缓存区的文件/目录\r\n\r\n## 分支\r\n\r\n分支在Git中是一个很重要的概念，意味着你能脱离主线开发，在不影响主线的情况下还能继续工作。\r\n\r\n而分支又简单分为基础操作、冲突合并、分支管理、bug分支、远程分支。\r\n\r\n#### 查看分支\r\n可能有同学会说：哈？还没创建怎么查看呐？来来来，先赌五毛，押大押小，买定离手。\r\n\r\n```bash\r\n# 查看当前所有分支\r\n$ git branch -a\r\n* master\r\n```\r\n\r\n咦，很奇怪对吧？为什么还没创建就有一个分支呢？来，啥都别说，五毛先打我支付宝。\r\n\r\n其实很简单，一个git项目初始化时便有了一个``master``分支，也称为主分支。但是想想，如果所有改动都在主分支上进行，如果某一天小白（~~比如我~~）进行了误操作怎么办？（~~还能怎么办？我也很绝望啊！~~）\r\n\r\n所以说，分支很重要！如果学完了git之后还不明白分支是个什么鬼玩意儿，那特么的就很尴尬。（~~是！是！是！dalao说的对！~~）\r\n', '成长笔记', 0, 0, 1496332800, 1505542043),
(9, 1, '造轮子之博客天气', '前言不时有同学问我博客右上角的天气，因为之前用的 Emlog 程序，很多功能可以通过插件完成，让不少同学误以为是用的插件，所以在这里也解释一下：这是自己手动造的一个轮子，鉴于很多同学想要这么一个小玩意儿，就特地写了这篇文章。准备耐心有html和css基础最好不过js基础，不懂也没关系天气接口，当然已', '## 前言\r\n不时有同学问我博客右上角的天气，因为之前用的 [Emlog](http://www.emlog.net/) 程序，很多功能可以通过插件完成，让不少同学误以为是用的插件，所以在这里也解释一下：这是自己手动造的一个轮子，鉴于很多同学想要这么一个小玩意儿，就特地写了这篇文章。\r\n\r\n## 准备\r\n1. **耐心**\r\n2. 有html和css基础最好不过\r\n3. js基础，不懂也**没关系**\r\n4. 天气接口，当然已经准备了一个：``https://api.isecret.vip/api?type=weather``\r\n\r\n## 分析\r\n这个小玩意样式主要由html、css组成样式，如果有基础的同学可以自己写喜欢的样式，不懂的可以接着往下看。\r\n\r\n![样式](https://static.isecret.vip/WX20170830-174302.png)\r\n\r\n数据驱动由JQuery异步获取接口的信息进行填充的，接口可以直接打开看下，返回格式为 ``JSON`` 。\r\n\r\n![JQuery请求天气接口](https://static.isecret.vip/WX20170830-174408.png)\r\n\r\n## 开始造轮子\r\n### HTML部分\r\n首先找到要给那个地方写天气，用Chrome等浏览器 ``右键`` 点击 ``检查``（有的浏览器叫``审查元素``），找到你那个要添加天气的块级元素。比如我想添加到头部最大的那个块级元素右上角。\r\n\r\n然后找到他的块级元素确保它的 ``position`` 为 ``relative;``，然后里边添加html代码，如下：\r\n\r\n```html\r\n<div class="header-weather">\r\n    <span class="weather-t1">--</span>\r\n    <span class="weather-t2">--</span>\r\n    <div class="weather-city">正在获取</div>\r\n</div>\r\n```\r\n\r\n### CSS部分\r\n然后在css文件追加代码：\r\n```css\r\n.header-weather {\r\n    color: #fff;\r\n    position: absolute;\r\n    top: 12px;\r\n    right: 12px;\r\n    line-height: 1.2;\r\n    text-align: center;\r\n}\r\n.weather-t1:after, .weather-t2:after {\r\n    position: absolute;\r\n    content: "°";\r\n}\r\n.weather-t1 {\r\n    font-size: 24px;\r\n}\r\n.weather-t2 {\r\n    margin-left: 6px;\r\n    font-size: 14px;\r\n}\r\n.weather-t2:after {\r\n    top: 10px;\r\n}\r\n.weather-city {\r\n    font-size: 18px;\r\n    line-height: 1.4;\r\n}\r\n```\r\n\r\n完成后样式（注意背景颜色，上边字体是白色的，如果背景也是白色的话什么都看不出来的）：\r\n\r\n![完成后样式](https://static.isecret.vip/WX20170830-192731.png)\r\n\r\n### Javascript部分\r\n然后到了js部分了，首先给大家安利我自己写的一个开放接口：[Secret 开放API](https://api.isecret.vip)，里边有天气接口的详细文档，包括请求方式、参数、返回格式等等，地址：[天气接口文档](https://api.isecret.vip/#天气查询-api)\r\n\r\n>注：此接口是获取访问者IP判断城市（国内），爬取的新浪天气，但是新浪天气是不是会抽风。。所以你懂的\r\n\r\n然后在页面尾部 ``</body>`` 之前插入js代码：\r\n\r\n```javascript\r\n<script src="https://static.isecret.vip/jquery.min.js"></script>\r\n<script>\r\n    $.get("https://api.isecret.vip/api?type=weather", null, function(t) {\r\n        "" == t.total ? $(".weather-city").text("暂无数据") : ($(".weather-t1").text(t.t1), $(".weather-t2").text(t.t2), $(".weather-city").text(t.city))\r\n    }, "JSON");\r\n</script>\r\n```\r\n\r\n最后，搞定：\r\n\r\n![js完成](https://static.isecret.vip/WX20170830-193913.png)\r\n\r\n## 结语\r\n以上只是我博客右上角的样式，你还可以通过接口自己写出更多样式，很简单的一个小玩意儿，不过看上去确实逼格满满。最后，有不懂的在文章底部留言，看到后会回复。\r\n\r\n## 附件\r\n实例下载：[Weather Demo](https://static.isecret.vip/weather_demo.html) (打开后Ctrl + S即可保存)\r\n', '造轮子系列', 0, 0, 1505542061, 1505542061),

-- --------------------------------------------------------

--
-- 表的结构 `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL COMMENT '友链id',
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(200) NOT NULL COMMENT '友链站点名称',
  `url` text NOT NULL COMMENT '友链站点Url',
  `avatar` text NOT NULL COMMENT '友链logo地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';

--
-- 转存表中的数据 `links`
--

INSERT INTO `links` (`id`, `status`, `name`, `url`, `avatar`) VALUES
(1, 1, 'Secret Blog', 'https://blog.isecret.vip', 'https://blog.isecret.vip/favicon.png'),
(2, 1, '小忆博客', 'http://blog.iiwo.vip/', 'http://blog.iiwo.vip//img/avatar.jpg');

-- --------------------------------------------------------


--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT '用户id',
  `email` varchar(255) NOT NULL COMMENT '用户邮箱',
  `username` varchar(40) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '加密密码',
  `url` text NOT NULL COMMENT '网址',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `url`, `created_at`, `updated_at`) VALUES
(1, 'root@isecret.vip', 'secret', '63a9f0ea7bb98050796b649e85481845', 'asdf', 1505371063, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id', AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友链id', AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;