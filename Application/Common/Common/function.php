<?php

// 异步Ajax返回
function ajax($status, $msg, $data=null)
{
	header('Content-type: text/json');
	return exit(json_encode([
			'status' => $status,
			'msg' => $msg,
			'data' => $data
		]));
}