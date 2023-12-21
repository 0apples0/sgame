window.onload = function() {
	let menufind = document.querySelector("#menu2");
	menufind.style.backgroundColor = "rgb(105, 21, 131)";
	$("#moving-image").hide();
};
$(function() {
	$('.tabcontent > div').hide();
	$('.tabnav a').click(function() {
		$('.tabcontent > div').hide().filter(this.hash).fadeIn();
		$('.tabnav a').removeClass('active');
		$(this).addClass('active');
		return false;
	}).filter(':eq(0)').click();

	$('.startQuestbtn').click(function() {
		var thisRow = $(this).closest("tr");
		console.log(thisRow);
		var thisQuest = thisRow.find('td:eq(0)').text();
		alert(thisQuest + " 퀘스트를 시작합니다.");
		console.log(thisRow);
		let questtableUpdate = "<tr><td>" + thisQuest 
		+ "<td><button class='doneQuestbtn' id='doneQuestbtn'>완료!"
		console.log(questtableUpdate);
		$("#tab02 .tbody").append(questtableUpdate);
		thisRow.remove();
	});
	$(document).on("click", ".doneQuestbtn", function() {
		var thisdoneRow = $(this).closest("tr");
		console.log(thisdoneRow);
		var thisdoneQuest = thisdoneRow.find('td:eq(0)').text();
		let questtableUpdate2 = "<tr><td>" + thisdoneQuest + "<td>" + getToday();
		$("#tab03 .tbody").append(questtableUpdate2);
		thisdoneRow.remove();
		alert(thisdoneQuest + " 퀘스트 완료!\n꾸미기 레벨 +1, 골드 +300");
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
			alert((Math.floor((end - start) / 1000) + 1) 
			+ "초 동안 겜이를 구경했어요! 이제 다시 집중해볼까요?!");
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

