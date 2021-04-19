$(document).ready(function(){
	$("#whoProduce").change(function() {
		if ($(this).val() == "self") {
			$(".selfLayer").show();
			$(".requestLayer").hide();
		} else if (jQuery(this).val() == "request") {
			$(".selfLayer").hide();
			$(".requestLayer").show();
		}else{
			$(".selfLayer").hide();
			$(".requestLayer").hide();
		}
	});
	
	setDateBox();
	setTimeBox();
});

function setDateBox(){
	var dt = new Date();
	var com_year = dt.getFullYear();
	
	$("#year").append("<option value=''>년</option>");
	for(var y = (com_year - 1); y <= (com_year + 5); y++){
		$("#year").append("<option value='" + y + "'>" + y + " 년</option>");
	}
	
	$("#month").append("<option value=''>월</option>");
	for(var i=1; i<=12; i++){
		$("#month").append("<option value='" + i + "'>" + i + " 월</option>");
	}
	
	$("#day").append("<option value=''>일</option>");
	for(var i=1; i<=31; i++){
		$("#day").append("<option value='" + i + "'>" + i + " 일</option>");
	}
}

function setTimeBox(){
	
	$("#hourStart").append("<option value=''>부터</option>");
	for(var i=0; i<24; i++){
		$("#hourStart").append("<option value='" + i + "'>" + i + " 시</option>");
	}

	$("#hourEnd").append("<option value=''>까지</option>");
	for(var i=0; i<24; i++){
		$("#hourEnd").append("<option value='" + i + "'>" + i + " 시</option>");
	}
}
