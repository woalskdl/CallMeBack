$("#whoProduce").change(function() {
	alert("아아");
	if ($(this).val() == "self") {
		$(".selfLayer").show();
		$(".requestLayer").hide();
	} else if (jQuery(this).val() == "request") {
		$(".selfLayer").hide();
		$(".requestLayer").show();
	}
});
