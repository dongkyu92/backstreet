<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, user-scaclable=no">
<title>김세정의 골목상권</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/jquery.fullPage.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/jquery.bxslider.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:700&display=swap" rel="stylesheet">
<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
<style>


@import url(http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);

body,h1,h2,h3,h4,h5,table,button{
 font-family: 'Nanum Gothic Coding', monospace;
}

#color-change {
   background-color: white;  /* 위에 배너 컬러 */
   text-align:center;
}

.mainspan {
   color: black;
   font-size: 1.2em;
}

.mainspan:hover {
   color: gray;
}


#container div {
   width: 250px;
   height: 300px;
   background: #fff;
   box-shadow: 0px 1px 1px #aaa;
   padding: 15px;
   padding-bottom: 15px;
   margin: 15px;
}

#container div img {
   width: 100%;
   padding-bottom: 15px;
   margin-bottom: 5px;
}

#container div h2 {
   font-size: 1em;
   color: black;
}

#container div p {
   font-family: "맑은 고딕", 돋움;
   font-size: 0.8em;
   color: #222;
   margin: 0;
   padding: 10px;
}

#wrapper {
   width: 600px;
   margin: 0 auto;
}
li{
display:inline-block;
}
ul{
text-align:center;
}


footer{
display: block;

}#footer {
padding: 4em 0 2em 0;
background: #1c1c1c;
text-align: center;
}
#footer a {
color: rgba(255, 255, 255, 0.75);
}

#footer a:hover {
			color: #fff;
}
#footer .copyright {
	color: rgba(255, 255, 255, 0.5);
	font-size: 0.9em;
	margin: 0 0 2em 0;
	padding: 0;
}
#backstreet_back{
width: 100%;

}
</style>
</head>
<body>
   <!-- 0311 jung main page 메뉴막대 부분, 한섹션식 스크롤 되도록 설정 -->
   <nav class="navbar navbar-default navbar-fixed-top">
      <div class="navbar-header">
         <!-- 0311 jung 메뉴 토글 부분 -->
         <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-collapse">
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span>
         </button>
         <!-- 0311 jung 로고 클릭시 메인화면으로 다시 불러오기 -->
         
      </div>
      <div id="color-change">
      <div class="navbar-collapse collapse">     
      <a href="http://70.12.115.176:8000/backstreet/main" class="navbar-brand"><img src="resources/images/blacklogo.png"  width="30%" ></a>            
	<br>
      <ul class="nav navbar-nav" id="mainlist">      
       <li><a href="http://70.12.115.176:8000/backstreet/intro"><span class="mainspan"> 사용가이드</span></a></li>
      <li><a href="http://70.12.115.176:8000/backstreet/map"><span class="mainspan"> 골목상권 분석</span></a></li>
      <li><a href="http://70.12.115.176:8000/backstreet/consulting"><span class="mainspan"> 내 상권 찾기</span></a></li>
      <li><a href="http://70.12.115.176:8000/backstreet/newConsulting"><span class="mainspan"> 창업 컨설팅</span></a></li>
      <li><a href="http://70.12.115.176:8000/backstreet/trands"><span class="mainspan"> 트랜드</span></a></li>
      <li><a href="http://70.12.115.176:8000/backstreet/boardmain"><span class="mainspan">고객센터</span></a></li>
	<c:if test="${sessionScope.code eq null}">
		<li id="in"><a href="http://70.12.115.176:8000/backstreet/loginView"><span class="mainspan">로그인</span></a></li>
	</c:if>
	<c:if test="${sessionScope.code ne null}">
		<li id="in"><a href="http://70.12.115.176:8000/backstreet/logout?accessToken=${requestScope.accessToken}"><span class="mainspan">로그아웃</span></a></li>
	</c:if>
      </ul>
      </div>
      </div>
   </nav> 
         <script src="resources/js/jquery-2.2.4.min.js"></script>
      <script src="resources/js/bootstrap.min.js"></script>
      <script src="resources/css/jquery.fullpage.js"></script>

      <script>
         $(document).ready(function() {
            $("#fullpage").fullpage();
         });
      </script>



      <script src="resources/js/jquery-2.2.4.min.js"></script>
      <script src="resources/js/jquery.vgrid.min.js"></script>
      <script>
         $('#container').vgrid({
            time : 400,
            delay : 30,
            wait : 500
         });
      </script>
   <br><br><br><br><br><br><br>
   
   <h3>페이지 이용 가이드 입니다.</h3>
<img id="backstreet_back" src="resources/images/backstreet_back.png">
		<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
				</ul>
				<div class="copyright">
					&copy; Untitled. Design: <a href="http://70.12.115.176:8000/backstreet/main">kim se jung</a>&nbsp;&nbsp;&nbsp; &copy;Homepage.Developers: <a href="http://70.12.115.176:8000/backstreet/main">heejung choi / dongkyu kim / seho oh</a>.
				</div>
			</footer>

   
   
  

</body>
</html>