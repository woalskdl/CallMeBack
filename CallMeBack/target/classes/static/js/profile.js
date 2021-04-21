$(document).ready(function() {
	var nameCk = 0;
	var emailCk = 0;
	var pwdCk = 0;
	
	checkName();
	checkEmail();
	checkPwd();
});

function checkName(){
	var input = $('#name').val();
	if(input = ""){
		$(".nCk").show();
		$("#updateProfile").prop("disabled", true);
		$("#name").css("background-color", "#ffe0e0");
	}else{
		nameCk = 1;
		$(".nCk").hide();
		$("#name").css("background-color", "#e2ffe0");
		if (nameCk == 1 && emailCk == 1 && pwdCk == 1) {
			$("#updateProfile").prop("disabled", false);
		}
	}
}

function checkEmail() {
	var input = $('#email').val();
	var field = "EMAIL";
	var id = $('#id').val();
	
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	$.ajax({
		data: {
			input: input,
			field: field,
			userId: id
		},
		url: "/checkDouble",
		success: function(data) {
			if (input == "" && data == '0') {
				$(".emCk").hide();
				$("#updateProfile").prop("disabled", true);
				$("#updateProfile").css("background-color", "#aaaaaa");
				$("#email").css("background-color", "#ffe0e0");
				emailCk = 0;
			} else if (data == '0') {
				if(input.match(regExp) != null){
					$(".emCk").hide();
					$("#email").css("background-color", "#e2ffe0");
					emailCk = 1;
					if (nameCk == 1 && emailCk == 1 && pwdCk == 1) {
						$("#updateProfile").prop("disabled", false);
					}
				}else{
					$(".emCk").show();
					$("#updateProfile").prop("disabled", true);
					$("#updateProfile").css("background-color", "#aaaaaa");
					$("#email").css("background-color", "#ffe0e0");
					emailCk = 0;
				}
			} else {
				$(".emCk").hide();
				$("#updateProfile").prop("disabled", true);
				$("#updateProfile").css("background-color", "#aaaaaa");
				$("#email").css("background-color", "#ffe0e0");
				emailCk = 0;
			}
		}
	});
}

function checkPwd() {
	var input = $('#password').val();
	var reinput = $('#passwordCk').val();
	if (reinput == "" && (input != reinput || input == reinput)) {
		$("#updateProfile").prop("disabled", true);
		$("#password").css("background-color", "#ffe0e0");
		$("#passwordCk").css("background-color", "#ffe0e0");
	}
	else if (input == reinput) {
		$(".pwCk").hide();
		$("#password").css("background-color", "#e2ffe0");
		$("#passwordCk").css("background-color", "#e2ffe0");
		pwdCk = 1;
		if (nameCk == 1 && emailCk == 1 && pwdCk == 1) {
			$("#updateProfile").prop("disabled", false);
		}
	} else if (input != reinput) {
		$(".pwCk").show();
		pwdCheck = 0;
		$("#updateProfile").prop("disabled", true);
		$("#password").css("background-color", "#ffe0e0");
		$("#passwordCk").css("background-color", "#ffe0e0");

	}
}
