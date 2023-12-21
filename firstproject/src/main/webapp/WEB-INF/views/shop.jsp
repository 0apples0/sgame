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
          <h1>상점</h1>
          <div class="shopping">
            <div class="pointbox">
              <p>보유 골드: 30000</p>
            </div>
            <div class="product-list">
              <div class="product" id="product1">
                <a class="productbtn" id="productbtn1">구매하기</a>
                <img src="assets/images/giftcard1.jpg">
                <div class="product-name">
                  문화상품권
                </div>
                <div class="product-price">
                  5000 골드
                </div>
              </div>
              <div class="product" id="product2">
                <a class="productbtn" id="productbtn2">구매하기</a>
                <img src="assets/images/hamburger.jpg">
                <div class="product-name">
                  햄버거
                </div>
                <div class="product-price">
                  7000 골드
                </div>
              </div>
              <div class="product" id="product3">
                <a class="productbtn" id="productbtn3">구매하기</a>
                <img src="assets/images/pizza.jpg">
                <div class="product-name">
                  피자
                </div>
                <div class="product-price">
                  20000 골드
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
<script type="text/javascript" src="assets/js/shop.js"></script>
</html>