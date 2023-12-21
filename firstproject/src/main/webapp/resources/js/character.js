window.onload = function() {
	let menufind = document.querySelector("#menu1");
	console.log(menufind);
	menufind.style.backgroundColor = "rgb(105, 21, 131)";
	$(".deco").hide();
	$("#moving-image").hide();
};
$(function() {
	let switchdeco = 0;
	$('.showEncyclopedia').click(function() {
		if (switchdeco == 0) {
			$(".deco").show();
			switchdeco = 1;
		} else {
			$(".deco").hide();
			switchdeco = 0;
		}
	});

	$('#decoitem1').click(function() {
		$(".character-image>img").remove();
		$(".character-image").append("<img src='assets/images/shinjjang_with_shiro.png' style='margin-right:35px;'>")
	});
	$('#decoitem2').click(function() {
		$(".character-image>img").remove();
		$(".character-image").append("<img src='assets/images/shinjjang_with_cake.png' style='margin-right:35px;'>")
	});
	$('#decoitem3').click(function() {
		$(".character-image>img").remove();
		$(".character-image").append("<img src='assets/images/shinjjang_with_pudding.png' style='margin-right:35px;'>")
	});
	$('#decoitem4-reset').click(function() {
		$(".character-image>img").remove();
		$(".character-image").append("<img src='assets/images/runjjang2.png'>")
	});
});
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