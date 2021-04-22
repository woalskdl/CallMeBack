$(document).ready(function() {
	var idCk = 0;
	var nameCk = 0;
	var emailCk = 0;
	var pwdCk = 0;
	
	$(".idCk").hide();
	$(".idCk2").hide();
	$(".idCk3").hide();
	$(".nCk").hide();
	$(".nCk2").hide();
	$(".emCk").hide();
	$(".emCk2").hide();
	
	const id = document.getElementById("id");
	const name = document.getElementById("name");
	const email = document.getElementById("email");
	const password = document.getElementById("password");
	const passwordCk = document.getElementById("passwordCk");
	
	id.addEventListener('input',checkId);
	name.addEventListener('input',checkName);
	email.addEventListener('input',checkEmail);
	password.addEventListener('input',checkPwd);
	passwordCk.addEventListener('input',checkPwd);
	
	function checkId(){
		var input = $('#id').val();
		var field = "ID";
		var id = $('#id').val();
		
		var idRegExp = /^[a-z0-9]{4,12}$/;
	
		$.ajax({
			data: {
				input: input,
				field: field,
				userId: id
			},
			url: "/checkDouble",
			success: function(data) {
				if (input == "" && data == '0') {
					$(".idCk").show();
					$(".idCk2").hide();
					$(".idCk3").hide();
					$("#signUp").prop("disabled", true);
					$("#id").css("background-color", "#ffe0e0");
					idCk = 0;
				} else if (data == '0') {
					if(idRegExp.test($('#id').val())){
						$(".idCk").hide();
						$(".idCk2").hide();
						$(".idCk3").hide();
						$("#id").css("background-color", "#e2ffe0");
						idCk = 1;
						if (idCk == 1 && nameCk == 1 && emailCk == 1 && pwdCk == 1) {
							$("#signUp").prop("disabled", false);
						}
					}else{
						$(".idCk").hide();
						$(".idCk2").show();
						$(".idCk3").hide();
						$("#signUp").prop("disabled", true);
						$("#id").css("background-color", "#ffe0e0");
						idCk = 0;
					}
				} else {
					$(".idCk").hide();
					$(".idCk2").hide();
					$(".idCk3").show();
					$("#signUp").prop("disabled", true);
					$("#id").css("background-color", "#ffe0e0");
					idCk = 0;
				}
			}
		});
	}
	
	function checkName(){
		var nRegExp = /^[가-힣]{2,6}$/;
		
		if(!$('#name').val()){
			$(".nCk").show();
			$(".nCk2").hide();
			$("#signUp").prop("disabled", true);
			$("#name").css("background-color", "#ffe0e0");
			nameCk = 0;
		}else{
			if(nRegExp.test($('#name').val())){
				nameCk = 1;
				$(".nCk").hide();
				$(".nCk2").hide();
				$("#name").css("background-color", "#e2ffe0");
				if (idCk == 1 && nameCk == 1 && emailCk == 1 && pwdCk == 1) {
					$("#signUp").prop("disabled", false);
				}
			}else{
				nameCk = 0;
				$(".nCk").hide();
				$(".nCk2").show();
				$("#signUp").prop("disabled", true);
				$("#name").css("background-color", "#ffe0e0");
			}
		}
	}
	
	function checkEmail() {
		var input = $('#email').val();
		var field = "EMAIL";
		var id = "-";
		
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
					$(".emCk").show();
					$(".emCk2").hide();
					$("#signUp").prop("disabled", true);
					$("#email").css("background-color", "#ffe0e0");
					emailCk = 0;
				} else if (data == '0') {
					if(eRegExp.test($('#email').val())){
						$(".emCk").hide();
						$(".emCk2").hide();
						$("#email").css("background-color", "#e2ffe0");
						emailCk = 1;
						if (idCk == 1 && nameCk == 1 && emailCk == 1 && pwdCk == 1) {
							$("#signUp").prop("disabled", false);
						}
					}else{
						$(".emCk").show();
						$(".emCk2").hide();
						$("#signUp").prop("disabled", true);
						$("#email").css("background-color", "#ffe0e0");
						emailCk = 0;
					}
				} else {
					$(".emCk").hide();
					$(".emCk2").show();
					$("#signUp").prop("disabled", true);
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
			pwdCk = 0;
			$("#signUp").prop("disabled", true);
			$('#password').css("background-color", "#ffe0e0");
			$('#passwordCk').css("background-color", "#ffe0e0");
		}
		else if (input == reinput) {
			$(".pwCk").hide();
			$('#password').css("background-color", "#e2ffe0");
			$('#passwordCk').css("background-color", "#e2ffe0");
			pwdCk = 1;
			if (idCk == 1 && nameCk == 1 && emailCk == 1 && pwdCk == 1) {
				$("#signUp").prop("disabled", false);
			}
		} else if (input != reinput) {
			pwdCk = 0;
			$(".pwCk").show();
			$("#signUp").prop("disabled", true);
			$('#password').css("background-color", "#ffe0e0");
			$('#passwordCk').css("background-color", "#ffe0e0");
	
		}
	}
})