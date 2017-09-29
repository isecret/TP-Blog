<?php

// 检测PHP环境
if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');

// 开启Debug模式
define('APP_DEBUG', True);

// 绑定模块
define('BIND_MODULE', 'Admin');

// 定义应用目录
define('APP_PATH','./Application/');

// 引入composer自动加载文件
require './vendor/autoload.php';

// 引入ThinkPHP入口文件
require './ThinkPHP/ThinkPHP.php';