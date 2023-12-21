window.onload = function() {
	let menufind = document.querySelector("#menu4");
	menufind.style.backgroundColor = "rgb(105, 21, 131)";
	$("#moving-image").hide();
};
let productList = document.querySelectorAll(".product");
let productBtnList = document.querySelectorAll(".productbtn");

$(".product").click(function() {
	let index = $(this).index();
	let element = productList[index];
	let productName = element.querySelector(".product-name").innerText;
	alert(productName + " 구매 완료!");
});


//아이콘 위치 이동 기능: 
//2초 동안 로고에 마우스를 올리고 있으면 게임기 아이콘 표시, 아이콘은 1초마다 랜덤한 x좌표값에 따라 이동
//로고에서 마우스를 떼면 몇초간 게임기가 표시되었는지 상단 alert
let logo = document.querySelector("#logo");
let moveImage = document.querySelector("#moving-image");
let sizeCheck = document.querySelector(".side-bar");
let timer = null;
let start = null;
let end = null;
let imageX = null;
let imageY = null;
logo.addEventListener("mouseenter", () => {
	timer = setTimeout(function() {
		start = new Date();
		movingImage = document.getElementById("moving-image");
		a = movingImage.getBoundingClientRect().right;
		console.log(a);
		movingImage.style.display = "block";

	}, 5000);
	setTimeout(function() {
		setInterval(moveImageRandom, 1000);
	}, 2000);
	logo.addEventListener("mouseleave", () => {
		end = new Date();
		clearTimeout(timer);
		document.getElementById("moving-image").style.display = "none";
		if (!(start == null)) {
			alert((Math.floor((end - start) / 1000) + 1) + "초 동안 겜이를 구경했어요! 이제 다시 집중해볼까요?!");
			end = null;
			start = null;
		}
	});
});

function moveImageRandom() {
	let maxX = sizeCheck.clientWidth - moveImage.clientWidth;
	let randomX = Math.floor(Math.random() * maxX);
	if (!(randomX > maxX)) {
		moveImage.style.transform = `translate(${randomX}px, 0)`;
	}

}