jQuery('#whoProduce').change(function(){
	alert("아아");
	var state = jQuery('#whoProduce option:selected').val();
	if(state == 'self'){
		jQuery('.selfLayer').show();
	}else if(state == 'request'){
		jQuery('.requestLayer').show();
	}
});