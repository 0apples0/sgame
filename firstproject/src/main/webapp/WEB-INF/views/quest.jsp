<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>스겜GO</title>
<link rel="stylesheet" type="text/css" href="assets/css/main.css" />
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="assets/images/game-control.png" />

</head>

<body>

	<div class="wrapper">
		<div class="main">
			<div class="side-bar">
				<div class="inner">
					<nav id="menu">
						<ul>
							<li id="menu1"><a href="character.jsp">캐릭터</a></li>
							<li id="menu2"><a href="quest.jsp">퀘스트</a></li>
							<li id="menu3"><a href="write.jsp">기록</a></li>
							<li id="menu4"><a href="shop.jsp">상점</a></li>
						</ul>
					</nav>

					<footer id="footer">
						<p class="copyright">
							<a href="https://url.kr/4r16jk" target="_blank" id="logo">스겜GO</a>&nbsp;&nbsp;끊임없는
							도전! 공부를 게임처럼!
						</p>
						<img src="assets/images/game-console.png" id="moving-image">
					</footer>
				</div>
			</div>
			<div class="content">
				<div class="content-inner">
					<h1>퀘스트</h1>
					<div class="tab">
						<ul class="tabnav">
							<li><a href="#tab01">시작 가능</a></li>
							<li><a href="#tab02">진행 중</a></li>
							<li><a href="#tab03">완료</a></li>
						</ul>
						<div class="tabcontent">

							<div id="tab01">
								<table>
									<colgroup>
										<col />
										<col />
									</colgroup>
									<tbody>
										<tr>
											<td>수학 1단원 - 길이와 시간 문제풀이</td>
											<td><button class="startQuestbtn" id="startQuestbtn">수락!</button></td>
										</tr>
										<tr>
											<td>퍼즐런 속담편 - 동물과 관련된 속담1 강의 듣기</td>
											<td><button class="startQuestbtn" id="startQuestbtn">수락!</button></td>
										</tr>
										<tr>
											<td>엘리하이 영어 - 문법3 강의 듣기</td>
											<td><button class="startQuestbtn" id="startQuestbtn">수락!</button></td>
										</tr>
										<tr>
											<td>"레벨업 5학년" 읽고 독후감 쓰기</td>
											<td><button class="startQuestbtn" id="startQuestbtn">수락!</button></td>
										</tr>
										<tr>
											<td>똑똑한 초등 과학 - 식물의 생활2 강의 듣기</td>
											<td><button class="startQuestbtn" id="startQuestbtn">수락!</button></td>
										</tr>
									</tbody>
								</table>

							</div>

							<div id="tab02">
								<table>
									<colgroup>
										<col />
										<col />
									</colgroup>
									<tbody class="tbody">
										<tr>
											<td>수학 1단원 - 길이와 시간 강의 듣기</td>
											<td><button class="doneQuestbtn" id="doneQuestbtn">완료!</button></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div id="tab03">
								<table>
									<colgroup>
										<col />
										<col />
									</colgroup>
									<tbody class="tbody">
										<tr>
											<td>똑똑한 초등 과학 - 식물의 생활1 강의 듣기</td>
											<td>2023-11-01</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="assets/js/quest.js"></script>
</body>
</html>