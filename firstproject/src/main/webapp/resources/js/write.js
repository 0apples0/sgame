window.onload = function() {
	let menufind = document.querySelector("#menu3");
	console.log(menufind);
	menufind.style.backgroundColor = "rgb(105, 21, 131)";
	$("#moving-image").hide();
};
$(function() {
	$('#newbtn').click(function() {
		$("#inputvalue").show();
		$("#writedonebtn").show();
	});
	$('#writedonebtn').click(function() {
		let inputval;
		let tableupdate;
		inputval = $("#inputvalue").val();
		if (!(inputval == "")) {
			tableupdate = "<tr><td>" + inputval + "<td>" + getToday();
			$(".tbody").append(tableupdate);
			$("#writedonebtn").hide();
			$("#inputvalue").hide();
			$("#inputvalue").val("");
			$("#inputvalue").attr("placeholder", "느낀점을 간단하게 적어보세요");
		} else {
			$("#inputvalue").attr("placeholder", "내용을 입력하세요");
		}
	});
});
function getToday() {
	var date = new Date();
	var year = date.getFullYear();
	var month = ("0" + (1 + date.getMonth())).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	return year + "-" + month + "-" + day;
}

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