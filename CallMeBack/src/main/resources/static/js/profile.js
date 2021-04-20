$(document).ready(function(){
	$("#email").blur(funtion() {
		var email = $("#email").val();
		$.ajax({
			url: "/checkDouble?input=" + input + "&field=email&userId=${ member.getId() }",
			type: 'get',
			success: function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);
		
				if (data != 0) {
					// 1 : 아이디가 중복되는 문구
					$("#checkDoubleEmail").text("사용중인 이메일입니다.");
					$("#checkDoubleEmail").css("color", "red");
					$("#reg_submit").attr("disabled", true);
				} else {
					if (email == "") {
						$('#checkDoubleEmail').text('이메일을 입력해주세요.');
						$('#checkDoubleEmail').css('color', 'red');
						$("#updateProfile").attr("disabled", true);
					} else{
						$("#checkDoubleEmail").text("");
						$("#updateProfile").attr("disabled", false);
					}
				}
			}, error: function() {
				console.log("실패");
			}
		});
	});
});