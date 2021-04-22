$(document).ready(function() {
	var nameCk = 0;
	var emailCk = 0;
	var pwdCk = 0;
	
	checkName();
	checkEmail();
	checkPwd();
	
	const name = document.getElementById("name");
	const email = document.getElementById("email");
	const password = document.getElementById("password");
	const passwordCk = document.getElementById("passwordCk");
	
	name.addEventListener('input',checkName);
	email.addEventListener('input',checkEmail);
	password.addEventListener('input',checkPwd);
	passwordCk.addEventListener('input',checkPwd);
	
	function checkName(){
		var nRegExp = /^[가-힣]{2,6}$/;
		
		if(!$('#name').val()){
			nameCk = 0;
			$(".nCk").show();
			$(".nCk2").hide();
			$("#updateProfile").prop("disabled", true);
			$("#name").css("background-color", "#ffe0e0");
		}else{
			if(nRegExp.test($('#name').val())){
				nameCk = 1;
				$(".nCk").hide();
				$(".nCk2").hide();
				$("#name").css("background-color", "#e2ffe0");
				if (nameCk == 1 && emailCk == 1 && pwdCk == 1) {
					$("#updateProfile").prop("disabled", false);
				}
			}else{
				nameCk = 0;
				$(".nCk").hide();
				$(".nCk2").show();
				$("#updateProfile").prop("disabled", true);
				$("#name").css("background-color", "#ffe0e0");
			}
		}
	}
	
	function checkEmail() {
		var input = $('#email').val();
		var field = "EMAIL";
		var id = $('#id').val();
		
		var eRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
		$.ajax({
			data: {
				input: input,
				field: field,
				userId: id
			},
			url: "/checkDouble",
			success: function(data) {
				if (input == "" && data == '0') {
					emailCk = 0;
					$(".emCk").show();
					$(".emCk2").hide();
					$("#updateProfile").prop("disabled", true);
					$("#email").css("background-color", "#ffe0e0");
				} else if (data == '0') {
					if(eRegExp.test($('#email').val())){
						emailCk = 1;
						$(".emCk").hide();
						$(".emCk2").hide();
						$("#email").css("background-color", "#e2ffe0");
						if (nameCk == 1 && emailCk == 1 && pwdCk == 1) {
							$("#updateProfile").prop("disabled", false);
						}
					}else{
						emailCk = 0;
						$(".emCk").show();
						$(".emCk2").hide();
						$("#updateProfile").prop("disabled", true);
						$("#email").css("background-color", "#ffe0e0");
					}
				} else {
					emailCk = 0;
					$(".emCk").hide();
					$(".emCk2").show();
					$("#updateProfile").prop("disabled", true);
					$("#email").css("background-color", "#ffe0e0");
				}
			}
		});
	}
	
	function checkPwd() {
		var input = $('#password').val();
		var reinput = $('#passwordCk').val();
		if (reinput == "" && (input != reinput || input == reinput)) {
			pwdCk = 0;
			$("#updateProfile").prop("disabled", true);
			$('#password').css("background-color", "#ffe0e0");
			$('#passwordCk').css("background-color", "#ffe0e0");
		}
		else if (input == reinput) {
			pwdCk = 1;
			$(".pwCk").hide();
			$('#password').css("background-color", "#e2ffe0");
			$('#passwordCk').css("background-color", "#e2ffe0");
			if (nameCk == 1 && emailCk == 1 && pwdCk == 1) {
				$("#updateProfile").prop("disabled", false);
			}
		} else if (input != reinput) {
			pwdCk = 0;
			$(".pwCk").show();
			$("#updateProfile").prop("disabled", true);
			$('#password').css("background-color", "#ffe0e0");
			$('#passwordCk').css("background-color", "#ffe0e0");
	
		}
	}
})