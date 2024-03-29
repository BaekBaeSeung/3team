<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="/Dining/mainpage/style.css">
   <title>미식가</title>

</head>
<body>
	<!-- Header -->
	<section id="header">
		<div class="header container">
			<div class="nav-bar">
				<div class="brand">
					<a href="#hero">
						<h1>미식<span>家</span></h1>
					</a>
				</div>
				<div class="nav-list">
					<div class="hamburger">
						<div class="bar"></div>
					</div>
					<ul>
						<li><a href="/Dining/mainpage/main1.jsp">HOME</a></li>
						<!-- <li><a href="/Dining/Customer/Customer_Update_DeleteForm.jsp">MYPAGE</a></li> -->
						<li><a href="<%=notWithFormTag%>GotoMypage">MYPAGE</a></li>
						<li><a href="#">WISH_LIST</a></li>
						<li><a href="#">DINIG_LIST</a></li>
						<li><a href="#">RESERVATION</a></li>
						<li><a href="<%=notWithFormTag%>CustomerLogin">LOGIN</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- Header -->


	<!-- Hero Section  -->
	<section id="hero">
		<div class="hero container">
			<div>
				<h1>뭐 먹지? 고민 NO</h1>
				<h1>맛이 쉬워진다</h1>
				<h1>미식家</h1>
				<a href="" type="button" class="cta">다이닝 보러가기</a>
			</div>
		</div>
	</section>
	<!-- End Hero Section  -->

	<!-- 미식가 Service Section -->
	<section id="services">
		<div class="services container">
			<div class="service-top">
				<h1 class="section-title">
					미식<span>家</span>
				</h1>
				<p>우리의 일상에 빠질수 없는 음식 하지만 어디서 무얼 먹을지 분위기는 어떤지 고민이 많으셨죠 그런 고민을
					덜어주기 위해 만든 사이트 입니다.각종 태그를 이용하여 원하는 종류와 분위기와 테마를 선택하시고 간편하게 예약하세요.</p>
			</div>
			<div class="service-bottom"></div>
		</div>
	</section>
	<!-- 요기까지 Service Section -->

	<!-- #태그 Projects Section -->
	<section id="projects">
		<div class="projects container">
			<div class="all-projects">
				<div class="project-item">
					<div class="project-info">
						<h1>경치가 좋은곳을 찾으시나요?</h1>
						<h2>경치가 끝내줘요~</h2>
						<p>경치가 좋아요 좋은 사람들과 함께하는 자리나 소개팅에 추천 좋은 경치와 함께 먹은 음식 더 맛있겠죠?</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/뷰가좋은곳/광화문식당_석촌호수/광화문식당04.jpg" alt="img">
					</div>
				</div>
				<div class="project-item">
					<div class="project-info">
						<h1>데이트 장소 고민이신가요?</h1>
						<h2>데이트하기 딱 좋아요!</h2>
						<p>데이트 하려면 깔끔하고 분위기 좋고 음식도 조금 고급스러우면 좋겠죠?</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/데이트/스케쥴_청담/스케쥴청담02.jpg" alt="img">
					</div>
				</div>
				<div class="project-item">
					<div class="project-info">
						<h1>연말연초 모임자리 걱정이시죠?</h1>
						<h2>모임장소 더이상 여기저기 발품팔지 마세요!</h2>
						<p>많은 인원들 예약하기 힘드시죠? 20명 이상 예약가능! 모임 핫플레이스</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/연말연초모임/성수명당/성수명당02.jpg" alt="img">
					</div>
				</div>
				<div class="project-item">
					<div class="project-info">
						<h1>반려동물 놔두고 외식하시 힘드시죠?</h1>
						<h2>다롱아 외식가자!!</h2>
						<p>외식은 하고 싶은데 집에 반려동물 혼자 놔둘수 없고 그렇다고 식당에 데려갈수도 없고 고민이시죠? 이제
							겸상합시다~</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/반려동물과함께/핑크문_홍대입구/핑크문02.PNG" alt="img">
					</div>
				</div>
				<div class="project-item">
					<div class="project-info">
						<h1>혼자 외식하기 불편하신가요?</h1>
						<h2>인생은 혼자야~</h2>
						<p>1000만 혼밥시대 더이상 부끄러워 말아요~ 여기는 혼밥존! 같이 먹는게 오히려 이상하답니다!</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/혼술혼밥/사철국화/사철국화11.jpg" alt="img">
					</div>
				</div>
			</div>
		</div>
	</section>
	<br/>

	<!-- 요기까지 Projects Section -->
	<section class="product">
		<h2 class="product-category">#뷰가 좋은 맛집</h2>
		<button class="pre-btn"></button>
		<button class="nxt-btn"></button>
		<div class="product-container">
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/광화문식당_석촌호수/광화문식당05.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=8" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">광화문식당</h2>
					<p class="product-short-description">한우정식집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/연남제비/연남제비02.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남제비</h2>
					<p class="product-short-description">삼겹살집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/연남토마/연남토마02.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=14" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남토마</h2>
					<p class="product-short-description">이탈리아요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/티원_서울역/티원03.PNG" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">티원</h2>
					<p class="product-short-description">중국요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/광화문식당_석촌호수/광화문식당06.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">광화문식당</h2>
					<p class="product-short-description">한우정식집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/연남제비/연남제비03.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남제비</h2>
					<p class="product-short-description">삼겹살집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/연남토마/연남토마04.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=14" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남토마</h2>
					<p class="product-short-description">이탈리아요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/티원_서울역/티원05.PNG" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">티원</h2>
					<p class="product-short-description">중국요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/광화문식당_석촌호수/광화문식당07.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">광화문식당</h2>
					<p class="product-short-description">한우정식집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/연남제비/연남제비01.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남제비</h2>
					<p class="product-short-description">삼겹살집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/연남토마/연남토마06.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=14" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남토마</h2>
					<p class="product-short-description">이탈리아요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/티원_서울역/티원06.PNG" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">티원</h2>
					<p class="product-short-description">중국요리</p>
				</div>
			</div>
		</div>
	</section>
	<br />
	<section class="product">
		<h2 class="product-category">#데이트하기 좋은 맛집</h2>
		<button class="pre-btn"></button>
		<button class="nxt-btn"></button>
		<div class="product-container">
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/디라이프스타일치킨_롯데월드몰/디라이프스타일치킨02.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=12" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">사철국화</h2>
					<p class="product-short-description">퓨전 레스토랑</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/스케쥴_청담/스케쥴청담09.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=5" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">스케쥴청담</h2>
					<p class="product-short-description">퓨전양식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/촛불1978_남산/촛불1978_03.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=6" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">남산촛불1978</h2>
					<p class="product-short-description">양식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/촛불1978_남산/촛불1978_04.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=4" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">남산촛불1978</h2>
					<p class="product-short-description">양식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/촛불1978_남산/촛불1978_05.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">남산촛불1978</h2>
					<p class="product-short-description">양식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/촛불1978_남산/촛불1978_06.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">남산촛불1978</h2>
					<p class="product-short-description">양식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/촛불1978_남산/촛불1978_07.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">남산촛불1978</h2>
					<p class="product-short-description">양식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/디라이프스타일치킨_롯데월드몰/디라이프스타일치킨04.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">디라이프스타일키친</h2>
					<p class="product-short-description">레스토랑</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/스케쥴_청담/스케쥴청담08.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=3" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">스케쥴청담</h2>
					<p class="product-short-description">퓨전양식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/디라이프스타일치킨_롯데월드몰/디라이프스타일치킨06.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">디라이프스타일키친</h2>
					<p class="product-short-description">레스토랑</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/스케쥴_청담/스케쥴청담01.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=3" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">스케쥴청담</h2>
					<p class="product-short-description">퓨전양식</p>
				</div>
			</div>
		</div>
	</section>
	<br />
	<section class="product">
		<h2 class="product-category">#혼술혼밥</h2>
		<button class="pre-btn"></button>
		<button class="nxt-btn"></button>
		<div class="product-container">
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/미자식당_송파동/미자식당03.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=3" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">미자식당</h2>
					<p class="product-short-description">한식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/사철국화/사철국화07.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">사철국화</h2>
					<p class="product-short-description">일식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/송계옥%20성수/송계옥04.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">송계옥</h2>
					<p class="product-short-description">닭요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/미자식당_송파동/미자식당04.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">미자식당</h2>
					<p class="product-short-description">한식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/사철국화/사철국화08.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">사철국화</h2>
					<p class="product-short-description">일식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/송계옥%20성수/송계옥05.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">송계옥</h2>
					<p class="product-short-description">닭요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/미자식당_송파동/미자식당06.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">미자식당</h2>
					<p class="product-short-description">한식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/사철국화/사철국화09.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">사철국화</h2>
					<p class="product-short-description">일식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/송계옥%20성수/송계옥010.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">송계옥</h2>
					<p class="product-short-description">닭요리</p>
				</div>
			</div>
		</div>
	</section>
	<br />
	<section class="product">
		<h2 class="product-category">#모임장소</h2>
		<button class="pre-btn"></button>
		<button class="nxt-btn"></button>
		<div class="product-container">
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/그믐족발%20문래/그믐족발11.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">그믐족발</h2>
					<p class="product-short-description">족발집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/성수명당/성수명당02.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=10" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">성수명당</h2>
					<p class="product-short-description">퓨전음식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/짠짠_성수동/짠짠01.PNG" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">짠짠</h2>
					<p class="product-short-description">주점</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/퍼시픽%20스탠다드_가로수길/퍼시픽%20스탠다드_05.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">퍼시픽 스탠다드</h2>
					<p class="product-short-description">레스토랑</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/그믐족발%20문래/그믐족발03.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">그믐족발</h2>
					<p class="product-short-description">족발집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/성수명당/성수명당03.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">성수명당</h2>
					<p class="product-short-description">퓨전음식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/짠짠_성수동/짠짠09.jpg" class="product-thumb"
						alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="#" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">짠짠</h2>
					<p class="product-short-description">주점</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/퍼시픽%20스탠다드_가로수길/퍼시픽%20스탠다드_06.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=11" class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">퍼시픽 스탠다드</h2>
					<p class="product-short-description">레스토랑</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<section id="footer">
		<div class="footer container">
			<div class="brand">
				<h1>
					미식<span>가</span>
				</h1>
			</div>
			<h2>
				<p>Copyright © 미식家 Corp</p>
				<span>대표자 : 지누기</span> <span>사업자번호 : 120-87-65764</span></br> <span>TEL
					: 1800-4564</span>&nbsp;&nbsp; <span>FAX : 02-111-5444</span></br> MAIL : <a
					href="mailto:mesikga@naver.com"
					class="LinkText-stylesLine-sc-7eefccf8-0 kqBnJi"><span>mesikga@naver.com</span></a>
			</h2>
			<div class="social-icon">
				<div class="social-item">
					<a href="#"><img
						src="https://img.icons8.com/bubbles/100/000000/instagram-new.png" /></a>
				</div>
			</div>
			<div>
				<a href="#" style="text-decoration: none;">개인정보 처리방침 
			</div>
		</div>
		<br />
	</section>
	<!-- Footer -->
	<script type="text/javascript" src="/Dining/mainpage/app.js"></script>
</body>

</html>