const id = "abc@naver.com";
const pw = "1234";
var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
submit.addEventListener("click", (event) => {
	event.preventDefault();
	let loginInput = document.querySelector("#login-form")
	let userInputId = loginInput[0].value;
	let userInputPw = loginInput[1].value;
	console.log(loginInput[0]);

	let inputIdpwResult = idpwInputcheck(userInputId, userInputPw);

	if (inputIdpwResult == 3) {
		loginInput[0].placeholder = "이메일을 입력하세요";
	} else if (inputIdpwResult == 2) {
		loginInput[1].placeholder = "비밀번호를 입력하세요";
	} else if (inputIdpwResult == 1) {
		loginInput[0].placeholder = "이메일을 입력하세요";
		loginInput[1].placeholder = "비밀번호를 입력하세요";
	} else if (inputIdpwResult == 0) {
		if (!regExp.test(userInputId)) { //조건을 통과하지 못할 경우
			loginInput[0].value = "";
			loginInput[0].placeholder = "올바른 이메일 형식이 아닙니다";
		}else{
			loginInput[0].placeholder = "이메일을 입력하세요";
			if (userInputId == id && userInputPw == pw) {
				alert("로그인 성공");
				window.location.replace("character.jsp");
			} else {
				alert("아이디 또는 비밀번호가 잘못되었습니다.");
			}
		}
	}
});

function idpwInputcheck(id, pw) {
	if (!(id == "") && !(pw == "")) { //아이디 입력함 비밀번호 입력함
		return 0;
	}
	else if (id == "" && pw == "") { //아이디 입력안함 비밀번호 입력 안함
		return 1;
	}
	else if (!(id == "") && pw == "") { //아이디 입력함 비밀번호 입력안함
		return 2;
	} else if ((id == "") && !(pw == "")) { //아이디 입력안함 비밀번호 입력함
		return 3;
	}
}