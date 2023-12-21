<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>스겜GO</title>
  <link rel="stylesheet" type="text/css" href="assets/css/main.css" />
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="assets/images/game-control.png" />
  <script src="https://code.jquery.com/jquery-latest.min.js"></script>
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
            <p class="copyright"><a href="https://url.kr/4r16jk" target="_blank" id="logo">스겜GO</a>&nbsp;&nbsp;끊임없는 도전!
              공부를 게임처럼! </p>
            <img src="assets/images/game-console.png" id="moving-image">
          </footer>
        </div>
      </div>
      <div class="content">
        <div class="content-inner">

          <h1>내 캐릭터</h1>
          <div class="character">
            <div class="character-image">
              <img src="assets/images/runjjang2.png">
            </div>
            <div class="character-info">
              <p>이름: 짱구</p>
              <p>꾸미기 레벨: 3</p>
            </div>
            <div class="deco" id="deco">
              <table id="deco">
                <colgroup>
                  <col />
                  <col />
                </colgroup>
                <tbody>
                  <tr>
                    <td class="decoitem" id="decoitem1"><img src="assets/images/shiro.png"></td>
                    <td class="decoitem" id="decoitem2"><img src="assets/images/cake.png"></td>
                  </tr>
                  <tr>
                    <td class="decoitem" id="decoitem3"><img src="assets/images/pudding.png"></td>
                    <td class="decoitem" id="decoitem4-reset"><img src="assets/images/reset.png"></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="characterbottomBtn">
            <button class="movetoQuest"><a href="quest.jsp">퀘스트 하러가기</a></button>
            <button class="showEncyclopedia"><a href="#">꾸미기 아이템</a></button>
          </div>


        </div>

      </div>
    </div>
  </div>
  <script type="text/javascript" src="assets/js/character.js"></script>
</body>
</html>