/**
 * 登录页面 JS
 */
(function () {
	// 登录按钮事件
	$('.login-btn').click(function () {
		var email = $('input[name="email"]').val();
		var password = $('input[name="password"]').val();

		// 各种验证
		if (email == '') {
			return dialog.tips('邮箱不能为空');
		}
		if (password == '') {
			return dialog.tips('密码不能为空');
		}

		$.post(url, {
			'email': email,
			'password': password
		}, function (result) {
			if (result.status == 1) {
				dialog.tips(result.msg, function () {
					window.location.reload();
				});
			} else {
				dialog.tips(result.msg);
			}
		}, 'JSON');
	});
})();