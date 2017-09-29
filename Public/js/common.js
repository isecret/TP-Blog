var dialog = {
	'tips': function (msg, func=function(){}) {
		var dialog = require('dialog');
		dialog(msg)
		.effect('slide')
		.fixed()
		.modal()
		.show()
		.hide(1500)
		.on('hide', func);
	}
}