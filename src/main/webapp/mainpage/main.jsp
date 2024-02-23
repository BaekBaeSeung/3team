<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- href="/eattogether/css/top.css"
<link rel="stylesheet" type="text/css" href="/eattogether/css/top.css"> -->
<link rel="stylesheet" type="text/css" href="/Dining/mainpage/style.css">

<title>미식가</title>
</head>
<body>

	<!-- Header -->
	<section id="header">
		<div class="header container">
			<div class="nav-bar">
				<div class="brand">
					<a href="/Dining/mainpage/main.jsp">
						<h1>
							미식<span>家</span>
						</h1>

					</a>
				</div>
				<div class="nav-list">
					<div class="hamburger">
						<div class="bar"></div>
					</div>
					<ul>
						<li><a href="/Dining/mainpage/main.jsp">HOME</a></li>					
							<c:if test="${loginfo != null}">
								<li><a href="<%=notWithFormTag%>CustomerUpdate">MYPAGE</a></li>
							</c:if>
							<c:if test="${clientinfo != null}">
								<li><a href="<%=notWithFormTag%>ClientUpdate">MYPAGE</a></li>
							</c:if>
						<li><a href="#" onclick="weatherCheck()">WEATHER</a></li>
						
						<script>
						function weatherCheck() {
							
							var url = 'https://weather.naver.com/'
                       	 	window.open(url, 'idCheck',"width=2000,height=950,top=200,left=550,location=yes") ;
						}
                        </script>
                        
						<li><a href="https://www.instagram.com/bbs_java/">SNS</a></li>
			 			<c:choose>
							<c:when test="${sessionScope.loginfo.getU_id() != null}">
								<li><a href="<%=notWithFormTag%>ReservationHistory&U_id=${sessionScope.loginfo.getU_id()}">RESERVATION</a></li>
							</c:when>
							<c:when test="${sessionScope.loginfo.getU_id() == null}">
							
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${loginfo != null}">
								<li><a href="<%=notWithFormTag%>CustomerLogout">LOGOUT</a></li>
							</c:when>
							<c:when test="${clientinfo != null}">
								<li><a href="<%=notWithFormTag%>ClientLogout">LOGOUT</a></li>
							</c:when>
							<c:when test="${loginfo == null}">
								<li><a href="<%=notWithFormTag%>CustomerLogin">LOGIN</a></li>
							</c:when>
							<c:when test="${clientinfo == null}">
								<li><a href="<%=notWithFormTag%>ClientLogin">LOGIN</a></li>
							</c:when>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- Header -->
	<div class="slider">
		<!-- list Items -->
		<div class="list">
			<div class="item active">
				<img src="/Dining/image/뷰메인사진.jpg">
				<div class="content">
					<h3>미식家</h3>
					<h2>#뷰가 좋은</h2>
					<h3>경치가 좋은곳을 찾으시나요? 좋은 사람들과 함께하는 자리나 소개팅에 추천 좋은 경치와 함께 먹은 음식 더
						맛있겠죠?</h3>
					<a href="#view" type="button" class="cta">#뷰가좋은곳 보러가기</a>
				</div>
			</div>
			<div class="item">
				<img src="/Dining/image/모임고화질.jpg">
				<div class="content">
					<h3>미식家</h3>
					<h2>#모임장소</h2>
					<h3>연말연초 모임자리 걱정이시죠? 모임장소 더이상 여기저기 발품팔지 마세요. 20명 이상 예약가능! 모임
						핫플레이스</h3>
					<a href="#together" type="button" class="cta">#모임장소 보러가기</a>
				</div>
			</div>
			<div class="item">
				<img src="/Dining/image/데이트메인.jpg">
				<div class="content">
					<h3>미식家</h3>
					<h2>#데이트</h2>
					<h3>데이트 장소 고민이신가요?데이트 하려면 깔끔하고 분위기 좋고 음식도 조금 고급스러우면 좋겠죠?</h3>
					<a href="#date" type="button" class="cta">#데이트장소 보러가기</a>
				</div>
			</div>
			<div class="item">
				<img src="/Dining/image/혼술메인.jpg">
				<div class="content">
					<h3>미식家</h3>
					<h2>#혼술혼밥</h2>
					<h3>혼자 외식하기 불편하신가요?1000만 혼밥시대 더이상 부끄러워 말아요~ 여기는 혼밥존! 같이 먹는게
						오히려 이상하답니다</h3>
					<a href="#solo" type="button" class="cta">#혼밥장소 보러가기</a>
				</div>
			</div>
		</div>
		<!-- thumbnail -->
		<div class="thumbnail">
			<div class="item active">
				<img src="/Dining/image/뷰메인사진.jpg">
				<div class="content">#경치가 좋은곳</div>
			</div>
			<div class="item">
				<img src="/Dining/image/모임고화질.jpg">
				<div class="content">#모임장소</div>
			</div>
			<div class="item">
				<img src="/Dining/image/데이트메인.jpg">
				<div class="content">#데이트장소</div>
			</div>
			<div class="item">
				<img src="/Dining/image/혼술메인.jpg">
				<div class="content">#혼술혼밥</div>
			</div>
			<!-- button arrows -->
			<div class="arrows">
				<button id="prev"><</button>
				<button id="next">></button>
			</div>
		</div>

	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


	<!--Projects Section -->
	<section id="projects">
		<div class="projects container">
			<div class="all-projects">
				<div class="project-item">
					<div class="project-info">
						<h1>경치가 좋은곳을 찾으시나요?</h1>
						<p>
							경치가 좋아요 <br />좋은 사람들과 함께하는 자리나 소개팅에 추천 좋은 경치와 함께 먹은 음식 더 맛있겠죠?
						</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/뷰가좋은곳/광화문식당_석촌호수/광화문식당04.jpg" alt="img">
					</div>
				</div>
				<div class="project-item">
					<div class="project-info">
						<h1>데이트 장소 고민이신가요?</h1>
						<p>
							데이트하기 딱 좋아요!<br />데이트 하려면 깔끔하고 분위기 좋고<br />음식도 조금 고급스러우면 좋겠죠?
						</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/데이트/스케쥴_청담/스케쥴청담02.jpg" alt="img">
					</div>
				</div>
				<div class="project-item">
					<div class="project-info">
						<h1>연말연초 모임자리 걱정?</h1>
						<p>
							모임장소 더이상 여기저기 발품팔지 마세요!<br />많은 인원들 예약하기 힘드시죠?<br /> 20명 이상 예약가능!
							모임 핫플레이스
						</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/연말연초모임/성수명당/성수명당02.jpg" alt="img">
					</div>
				</div>
				<div class="project-item">
					<div class="project-info">
						<h1>
							반려동물 놔두고 <br />외식하시 힘드시죠?
						</h1>
						<p>
							외식은 하고 싶은데 집에 반려동물 혼자 놔둘수 없고<br />그렇다고 식당에 데려갈수도 없고 고민이시죠?<br />이제
							꼭 끌어안고같이 드세요~
						</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/반려동물과함께/핑크문_홍대입구/핑크문02.PNG" alt="img">
					</div>
				</div>
				<div class="project-item">
					<div class="project-info">
						<h1>혼자 외식하기 불편하신가요?</h1>
						<p>
							1000만 혼밥시대 더이상 부끄러워 말아요~<br /> 여기는 혼밥존! <br />같이 먹는게 오히려 이상하답니다!
						</p>
					</div>
					<div class="project-img">
						<img src="/Dining/image/혼술혼밥/사철국화/사철국화11.jpg" alt="img">
					</div>
				</div>
			</div>
		</div>
	</section>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- 요기까지 Projects Section -->



	<section class="product">
		<h2 class="product-category" id="view">#뷰가 좋은 맛집</h2>
		<button class="pre-btn"></button>
		<button class="nxt-btn"></button>
		<div class="product-container">
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/광화문식당_석촌호수/광화문식당05.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=8"
						class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">광화문식당</h2>
					<p class="product-short-description">한우정식집</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/연남제비/연남제비02.jpg"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/뷰가좋은곳/연남토마/연남토마02.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=14"
						class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남토마</h2>
					<p class="product-short-description">이탈리아요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/티원_서울역/티원03.PNG"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/뷰가좋은곳/연남제비/연남제비03.jpg"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/뷰가좋은곳/연남토마/연남토마04.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=14"
						class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남토마</h2>
					<p class="product-short-description">이탈리아요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/티원_서울역/티원05.PNG"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/뷰가좋은곳/연남제비/연남제비01.jpg"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/뷰가좋은곳/연남토마/연남토마06.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=14"
						class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">연남토마</h2>
					<p class="product-short-description">이탈리아요리</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/뷰가좋은곳/티원_서울역/티원06.PNG"
						class="product-thumb" alt="">
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
	<br />
	<br />
	<section class="product">
		<h2 class="product-category" id="date">#데이트하기 좋은 맛집</h2>
		<button class="pre-btn"></button>
		<button class="nxt-btn"></button>
		<div class="product-container">
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/디라이프스타일치킨_롯데월드몰/디라이프스타일치킨02.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=12"
						class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">디라이프스타일키친</h2>
					<p class="product-short-description">레스토랑</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/데이트/스케쥴_청담/스케쥴청담09.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=5"
						class="card-btn">상세정보 보기</a>
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
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=6"
						class="card-btn">상세정보 보기</a>
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
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=4"
						class="card-btn">상세정보 보기</a>
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
					<img src="/Dining/image/데이트/스케쥴_청담/스케쥴청담08.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=3"
						class="card-btn">상세정보 보기</a>
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
					<img src="/Dining/image/데이트/스케쥴_청담/스케쥴청담01.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=3"
						class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">스케쥴청담</h2>
					<p class="product-short-description">퓨전양식</p>
				</div>
			</div>
		</div>
	</section>
	<br />
	<br />
	<br />
	<section class="product">
		<h2 class="product-category" id="solo">#혼술혼밥</h2>
		<button class="pre-btn"></button>
		<button class="nxt-btn"></button>
		<div class="product-container">
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/혼술혼밥/미자식당_송파동/미자식당03.PNG"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=3"
						class="card-btn">상세정보 보기</a>
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
					<img src="/Dining/image/혼술혼밥/송계옥%20성수/송계옥04.jpg"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/혼술혼밥/송계옥%20성수/송계옥05.jpg"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/혼술혼밥/송계옥%20성수/송계옥10.jpg"
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
	<br />
	<br />
	<section class="product">
		<h2 class="product-category" id="together">#모임장소</h2>
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
					<img src="/Dining/image/연말연초모임/성수명당/성수명당02.jpg"
						class="product-thumb" alt="">
					<!-- 여기에 다이닝상세정보 링크-->
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=10"
						class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">성수명당</h2>
					<p class="product-short-description">퓨전음식</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-image">
					<img src="/Dining/image/연말연초모임/짠짠_성수동/짠짠01.PNG"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/연말연초모임/성수명당/성수명당03.jpg"
						class="product-thumb" alt="">
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
					<img src="/Dining/image/연말연초모임/짠짠_성수동/짠짠09.jpg"
						class="product-thumb" alt="">
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
					<a href="<%=notWithFormTag%>ReservationInsert&D_no=11"
						class="card-btn">상세정보 보기</a>
				</div>
				<div class="product-info">
					<h2 class="product-brand">퍼시픽 스탠다드</h2>
					<p class="product-short-description">레스토랑</p>
				</div>
			</div>
		</div>
	</section>
	<br />
	<br />
	<br />
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