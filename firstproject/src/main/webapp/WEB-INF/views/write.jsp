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
  <link rel="icon" type="image/x-icon" href="assets/images/game-control.png" />
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
				<a href="https://url.kr/4r16jk" target="_blank" id="logo">스겜GO</a>&nbsp;&nbsp;끊임없는 도전! 공부를 게임처럼!
			</p>
			<img src="assets/images/game-console.png" id="moving-image">
          </footer>
        </div>
      </div>
      <div class="content">
        <div class="content-inner">
          <h1>기록</h1>
          <div class="board">
            <div class="boardbtn">
              <div class="newbtnbox">
                <button id="newbtn">작성</button>
                <button id="writedonebtn">완료</button>
              </div>

            </div>
            <input type="text" id="inputvalue" maxlength="30" placeholder="느낀점을 간단하게 적어보세요">
            <div class="boardtablebox">
              <table class="boardtable" id="boardtable">
                <thead class="thead">
                  <tr>
                    <td>제목</td>
                    <td>작성일</td>
                  </tr>
                </thead>
                <tbody class="tbody">
                  <tr>
                    <td>오늘 배운 사자성어! 고진감래 기억하기!!</td>
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
  <script type="text/javascript" src="assets/js/write.js"></script>
</body>
</html>