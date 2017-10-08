(function () {
	/**
	 * 文章保存事件
	 */
	$('#saveArticle').click(function () {
		var title = $('input[name="title"]').val();
		var content = $('textarea[name="content"]').val();

		// 各种验证
		if (title == '') {
			return dialog.tips('标题不能为空');
		}
		if (content == '') {
			return dialog.tips('文章内容不能为空');
		}

		var data = $('#articleForm').serializeArray();
		var postData = {};
		$(data).each(function(i){
	        postData[this.name] = this.value;
	    });

	    $.post(url, postData, function (res) {
	    	dialog.tips(res.msg, function () {
	    		if (res.status == 1) {
	    			window.location.href = res.data.url;
		    	}
	    	});
	    }, 'JSON');
	});

	/**
	 * 文章删除事件
	 */
	$('.rmArticle').click(function () {
		$.post(url, {id: $(this).data('id')}, function (res) {
			dialog.tips(res.msg, function () {
				if (res.status == 1) {
					window.location.reload();
				}
			});
		});
	});

	/**
	 * 保存个人资料
	 */
	$('#saveAbout').click(function () {
		$.post(url, {
			content: $('textarea[name="content"]').val()
		}, function (res) {
			dialog.tips(res.msg, function() {
				if (res.status == 1) {
					window.location.reload();
				}
			});
		}, 'JSON');
	});

	/**
	 * 保存友链事件
	 */
	$('#saveLink').click(function () {
		var data = $('#saveLinkForm').serializeArray();
		var postData = {};
		$(data).each(function(i){
	        postData[this.name] = this.value;
	    });

	    $.post(url, postData, function (res) {
	    	dialog.tips(res.msg, function () {
	    		if (res.status == 1) {
	    			window.location.href = res.data.url;
	    		}
	    	});
	    }, 'JSON');
	});
})();