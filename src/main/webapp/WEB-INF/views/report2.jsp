<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>김세정의 골목상권</title>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		<style>
.mainspan{
	color :#33dbdb;
	font-weight: bold;
}

}
svg { width: 320px; height: 240px;  }
.bar {
    fill: skyblue;
    fill-opacity: 0.3;
    stroke: skyblue;
}
.bar:hover {
    fill-opacity: 1;
}

.green_span{
color:rgb(26, 189, 156);
}
.other_span{
font-weight: bold;}
.blue_span{
color:rgb(52, 152, 219);
}
.parent {
  display: flex;
  padding: 10px;
}

.parent .child{
  flex: 1;
  text-align: center;
}

.left{

}    
.center{

}
.right{

}



		</style>
	</head>
	<body>
<%
	String area_id = request.getParameter("area_id");
	String serv_id = request.getParameter("serv_id");
	//System.out.println(area_id);
	//System.out.println(serv_id);
	if(area_id == null&&serv_id==null){
		area_id = "";
		serv_id = "";
	}
%>
		<!-- Header -->
			<header id="header">
				<a href="http://70.12.115.176:8000/backstreet/main" class="logo"><strong>김세정의 골목상권</strong></a>				
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.html">Home</a></li>
					<li><a href="generic.html">Generic</a></li>
					<li><a href="elements.html">Elements</a></li>
				</ul>
			</nav>
<c:if test="${requestScope.month_money eq null}">
<span>${requestScope.area_coname}</span> 상권의 <span>${requestScope.serv_coname}</span> 업종 관련 자료가 없습니다.
<a href="#" class="button" onclick="location.href='/backstreet/map'">상권 다시 선택하기</a>
<a href="#" class="button" onclick="history.back()">업종 다시 선택하기</a>
</c:if>
<c:if test="${requestScope.month_money != null}">		<!-- Header -->


		<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<h3>김세정의 골목상권의 컨설팅 서비스 입니다.</h3>					
					<h3>고객님께서 선택하신   <span class="mainspan">${requestScope.area_coname}</span> 상권의 </h3> 
					<h3><span class="mainspan">${requestScope.serv_coname}</span> 업종 분석 정보에 대해 안내 드리겠습니다.</h3>
					<br>
					<ul class="actions">
						<li><a href="#one" class="button alt scrolly big">Continue</a></li>
					</ul>
				</div>
			</section>

		<!-- One -->
			<article id="one" class="post style1">
				<div class="image" >
					<img src="resources/images/store_back_1.jpg" alt="" data-position="75% center" />
				</div>
				<div class="content">
					<div class="inner" style="float:right;">
						<header>
							<h2>매출액 분석</h2>
							<p class="info"><span class="green_span">${requestScope.area_coname}</span>&nbsp;상권의&nbsp;&nbsp; <span class="green_span">${requestScope.serv_coname}</span>&nbsp;업종 </p>
						</header>
						<p><span class="green_span">${requestScope.serv_coname}</span> 업종의 월매출 금액은 <span class="green_span">${requestScope.month_money}</span> 원 이고 월 매출 수는 <span class="green_span">${requestScope.month_num}</span> 건 입니다.
						<span class="green_span">${requestScope.serv_coname}</span> 업종의 주중(월-금) 매출 금액은 <span class="green_span">${requestScope.wday_money}</span> 원 이고. 주말(토,일) 매출 금액은 <span class="green_span">${requestScope.wkend_money}</span> 원 입니다.
						<span class="green_span">${requestScope.serv_coname}</span > 업종의 남성 매출 금액은 <span class="green_span">${requestScope.m_money}</span> 원 이고, 여성 매출 금액은 <span class="green_span">${requestScope.w_money}</span> 원 입니다.
						
						
						
						</p>
						<ul class="actions">
							<li><a href="#two" class="button alt scrolly big"">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#" class="prev disabled"><span class="icon fa-chevron-up"></span></a>
						<a href="#two" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Two -->
			<article id="two" class="post invert style1 alt">
				<div class="image">
					<img src="resources/images/store_back_2.jpg" alt="" data-position="100% center" />
				</div>
				<div class="content">
					<div class="inner">
						<header>
							<h2>연령별 매출 금액 분석</h2>
							<p class="info"><span class="other_span">${requestScope.area_coname}</span>&nbsp;상권의&nbsp;&nbsp; <span class="other_span">${requestScope.serv_coname}</span>&nbsp;업종 </p>
						</header>
						<p>
						10대 매출 금액 : <span class="other_span">${requestScope.money_10}</span> 원, 
						20대 매출 금액 : <span class="other_span">${requestScope.money_20}</span> 원 , 		
						30대 매출 금액: <span class="other_span">${requestScope.money_30}</span> 원, 			
						40대 매출 금액: <span class="other_span">${requestScope.money_40}</span> 원, 			
						50대 매출 금액: <span class="other_span">${requestScope.money_50}</span> 원, 				
						60대 매출 금액: <span class="other_span">${requestScope.money_60}</span> 원 입니다.						
						</p>									
						<ul class="actions">
							<li><a href="#three" class="button alt scrolly big"">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#one" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#three" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Three -->
			<article id="three" class="post style2">
				<div class="image">
					<img src="resources/images/store_back_3.jpg" alt="" data-position="80% center" />
				</div>
				<div class="content">
					<div class="inner">
						<header>
								<h2>주중-주말 매출 수, 남성-여성 매출 수 분석</h2>
							<p class="info"><span class="blue_span">${requestScope.area_coname}</span>&nbsp;상권의&nbsp;&nbsp; <span class="blue_span">${requestScope.serv_coname}</span>&nbsp;업종 </p>
						</header>
						<p>
						<span class="blue_span">${requestScope.serv_coname}</span> 업종의 주중(월-금) 매출 수는 <span class="blue_span">${requestScope.wday_num}</span> 건 이고, 주말(토-일) 매출 수는 <span class="blue_span">${requestScope.wkend_num}</span> 건 입니다.
						<span class="blue_span">${requestScope.serv_coname}</span> 업종의 남성 매출 수는 <span class="blue_span">${requestScope.m_num}</span> 건 이고, 여성 매출 수는 <span class="blue_span">${requestScope.w_num}</span> 건 입니다.					
						</p>	
						<ul class="actions">
							<li><a href="#four" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#two" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#four" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Four -->
			<article id="four" class="post invert style2 alt">
				<div class="image">
					<img src="resources/images/store_back_4.jpg"  alt="" data-position="60% center" />
				</div>
				<div class="content">
					<div class="inner">
					<header>
					<h2>연령대별 매출 수 분석</h2>
						<p class="info"><span class="other_span">${requestScope.area_coname}</span>&nbsp;상권의&nbsp;&nbsp; <span class="other_span">${requestScope.serv_coname}</span>&nbsp;업종 </p>
					</header>
						<p>
						10대 매출 수 : <span class="other_span">${requestScope.num_10}</span> 건,
						20대 매출 수 : <span class="other_span">${requestScope.num_20}</span> 건,						
						30대 매출 수: <span class="other_span">${requestScope.num_30}</span> 건,						
						40대 매출 수: <span class="other_span">${requestScope.num_40}</span> 건,						
						50대 매출 수: <span class="other_span">${requestScope.num_50}</span> 건,						
						60대 매출 수: <span class="other_span">${requestScope.num_60}</span> 건, 입니다.
						
						</p>	<ul class="actions">
							<li><a href="#five" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#three" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#five" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Five -->
			<article id="five" class="post style3">
				<div class="image">
					<img src="resources/images/store_back_5.jpg" alt="" data-position="5% center" />
				</div>
				<div class="content">
					<div class="inner">
						<header>
							<h2><a href="generic.html">Interdum et rutrum</a></h2>
							<p class="info">3 days ago by <a href="#">Jane Doe</a></p>
						</header>
						<p>Nullam posuere erat vel placerat rutrum. Praesent ac consectetur dui, et congue quam. Donec aliquam lacinia condimentum. Integer porta massa sapien, commodo sodales diam suscipit vitae. Aliquam quis felis sed urna semper semper. Phasellus eu scelerisque mi. Vivamus aliquam nisl libero, sit amet scelerisque ligula laoreet vel.</p>
						<ul class="actions">
							<li><a href="generic.html" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#four" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#six" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Six -->
			<article id="six" class="post invert style3 alt">
				<div class="image">
					<img src="resources/images/store_back_6.jpg" alt="" data-position="80% center" />
				</div>
				<div class="content">
					<div class="inner">
						<header>
							<h2><a href="generic.html">Magna porta aliquam</a></h2>
							<p class="info">3 days ago by <a href="#">Jane Doe</a></p>
						</header>
						<p>Nullam posuere erat vel placerat rutrum. Praesent ac consectetur dui, et congue quam. Donec aliquam lacinia condimentum. Integer porta massa sapien, commodo sodales diam suscipit vitae. Aliquam quis felis sed urna semper semper. Phasellus eu scelerisque mi. Vivamus aliquam nisl libero, sit amet scelerisque ligula laoreet vel.</p>
						<ul class="actions">
							<li><a href="generic.html" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#five" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#" class="scrolly next disabled"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>
<div class="parent">
<div class="child left">
<a href="#" class="button alt" onclick="location.href='/backstreet/map'">상권 다시 선택</a>
</div><div class="child center">
<a href="#"class="button alt" onclick="history.back()">업종 다시 선택</a>
</div><div class="child right">
<a href="#" class="button alt" onclick="location.href='/backstreet/changeConsulting1?area_id=<%= area_id %>&serv_id=<%= serv_id %>'">더 자세한 컨설팅으로</a>
</div></div>

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

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</c:if>
	</body>
</html>