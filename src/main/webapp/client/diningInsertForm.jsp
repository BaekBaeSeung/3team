<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<%
// 음식 카테고리를 동적으로 생성하여 CategoryList 변수에 할당
List<String> categoryList = new ArrayList<>();
categoryList.add("한식");
categoryList.add("중식");
categoryList.add("일식");
categoryList.add("양식");
categoryList.add("퓨전");
categoryList.add("기타");

// CategoryList 변수에 설정
pageContext.setAttribute("CategoryList", categoryList);
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dining 정보 등록</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<script>
      window.addEventListener('load', () => {
         const forms = document.getElementsByClassName('validation-form');

         Array.prototype.filter.call(forms, (form) => {
            form.addEventListener('submit', function (event) {
               if (!form.checkValidity()) {
                  event.preventDefault();
                  event.stopPropagation();
               }

               validateForm(form);
            }, false);

            const inputs = form.querySelectorAll('input, select, textarea');
            inputs.forEach(input => {
               input.addEventListener('input', function () {
                  validateInput(input);
               });
            });
         });
      }, false);

      function validateForm(form) {
         const inputs = form.querySelectorAll('input, select, textarea');
         inputs.forEach(input => {
            validateInput(input);
         });
      }

      function validateInput(input) {
         if (input.checkValidity()) {
            input.classList.remove('is-invalid');
            input.classList.add('is-valid');
         } else {
            input.classList.remove('is-valid');
            input.classList.add('is-invalid');
         }
      }

      function complete() {
         var selectedOptions = [];
         var checkboxes = document.getElementsByName("Style1");
         var checkedCount = 0;

         for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
               selectedOptions.push(checkboxes[i].value);
               checkedCount++;
            }
         }

         if (checkedCount === 0) {
            alert("선택된 항목이 없습니다.");
         } else if (checkedCount > 5) {
            alert("최대 5개까지 선택 가능합니다.");
         } else {
            alert("본인매장 style의 선택을 완료하셨습니다");
         }

         validateForm(document.querySelector('.validation-form'));
      }

      function addCheckbox() {
         // 최대 5개까지만 추가되도록 제한
         var checkboxes = document.querySelectorAll('input[name="Style1"]:checked');
         if (checkboxes.length >= 5) {
            alert("최대 5개까지 선택 가능합니다.");
            return;
         }

         // 새로운 체크박스 생성
         var container = document.getElementsByClassName("checkbox-group")[0];
         var newCheckbox = document.createElement("div");
         newCheckbox.classList.add("checkbox");
         var newIndex = container.getElementsByClassName("checkbox").length + 1;

         var newCheckboxInput = document.createElement("input");
         newCheckboxInput.type = "checkbox";
         newCheckboxInput.id = "Style" + newIndex;
         newCheckboxInput.name = "Style1"; // 기존 체크박스와 동일한 이름 사용
         newCheckboxInput.value = "";

         var newTextInput = document.createElement("input");
         newTextInput.type = "text";
         newTextInput.style.padding = "3px";
         newTextInput.style.width = "100px";

         newTextInput.id = "textInput" + newIndex;
         newTextInput.placeholder = "#추가 Style";
         newTextInput.addEventListener('input', function (event) {
            if (!event.target.value.startsWith("#")) {
               event.target.value = "#" + event.target.value;
            }

            // 입력된 내용을 selectedOptions 배열에 추가
            if (event.target.value.trim() !== "") {
               selectedOptions.push(event.target.value);
            }
         });

         var newCheckboxLabel = document.createElement("label");
         newCheckboxLabel.setAttribute("for", "Style" + newIndex);
         newCheckboxLabel.appendChild(newTextInput);

         newCheckbox.appendChild(newCheckboxInput);
         newCheckbox.appendChild(newCheckboxLabel);

         // 생성한 체크박스를 컨테이너에 추가
         container.appendChild(newCheckbox);

         // 새로 추가된 체크박스도 최대 개수에 포함되도록 체크 수 업데이트
         checkboxes = document.querySelectorAll('input[name="Style1"]:checked');
         if (checkboxes.length >= 5) {
            alert("최대 5개까지 선택 가능합니다.");
         }

         validateForm(document.querySelector('.validation-form'));
      }

   </script>
<script>
      function validCheck() {
         // 업체명 유효성 검사
         var Name = $('#Name').val();
         if (Name.length == 0) {
            alert('업체명을 입력해 주세요.');
            $('#Name').focus();
            return false;
         }

         // 매장 위치 유효성 검사
         var Address = $('#Address').val();
         if (Address.length == 0) {
            alert('매장 위치를 입력해 주세요.');
            $('#Address').focus();
            return false;
         }

         // 세부 상세 주소 유효성 검사
         var Address_Detail = $('#Address_Detail').val();
         if (Address_Detail.length == 0) {
            alert('세부 상세 주소를 입력해 주세요.');
            $('#Address_Detail').focus();
            return false;
         }

         // 음식 카테고리 유효성 검사
         var CategoryList = $('#Category option:selected');
         if (CategoryList.length === 0 || CategoryList.val() === 'Category') {
            alert('음식 카테고리를 선택해주세요.');
            return false;
         }

         // 매장 소개글 유효성 검사
         var notice = $('#Content').val();
         if (!notice.trim()) {
            alert('매장 소개글을 입력해 주세요.');
            $('#Content').focus();
            return false;
         }

         // 영업 정보 유효성 검사
         var Opentime = $('input[name="Opentime"]').val();
         var Close_time = $('input[name="Close_time"]').val();
         var Break_time = $('input[name="Break_time"]').val();
         var Holiday = $('input[name="Holiday"]').val();
         var Phone = $('input[name="Phone"]').val();
         var Parking_status = $('input[name="Parking_status"]').val();
         var Amenities = $('input[name="Amenities"]').val();
         var Capacity = $('#Capacity').val();

         if (!Opentime || !Close_time || !Break_time || !Holiday || !Phone || !Parking_status || !Amenities || !Capacity) {
            alert('영업 정보를 모두 입력해 주세요.');
            return false;
         }

         // 공지 및 알림 사항 유효성 검사
         var Notice = $('#Notice').val();
         if (!Notice) {
            alert('공지 및 알림 사항을 입력해 주세요.');
            $('#Notice').focus();
            return false;
         }

         // 매장 사진 유효성 검사
         var Image01 = $('input[name="Image01"]').val();
         if (!Image01) {
            alert('매장 사진을 첨부해 주세요.');
            return false;
         }

         // 모든 유효성 검사 통과
         return true;
      }

   </script>

<!-- <%-- 다음 주소 검색을 위한 추가 코드 --%> -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
      function openZipSearch() {
         new daum.Postcode({
            oncomplete: function (data) {
               var addr = '';
               if (data.userSelectedType === 'R') {
                  addr = data.roadAddress;
               } else {
                  addr = data.jibunAddress;
               }

               $("#zip_code").val(data.zonecode);
               $("#Address").val(addr); /* 메인 주소 입력 */
               $("#Address_Detail").val("");
               $("#Address_Detail").focus(); /* 상세 주소 입력란에 포커스 주기 */
            }
         }).open();
      }
   </script>
<style>
body {
	background-image: url('/Dining/image/미식家.png');
	background-size: cover;
	background-attachment: fixed;
}

.enroll-box {
	position: relative;
	z-index: 1;
	margin: 0 auto;
	background-color: white;
	padding: 20px;
	width: 700px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	background: rgba(255, 255, 255, 0.8); /* 폼 배경색을 조절할 수 있습니다 */
}

.checkbox-group label {
	display: block;
}

label {
	color: blue;
	text-shadow: 3vh;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown label {
	margin-right: 20px;
}

.dropdown-select {
	width: 200px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.dropdown-select:focus {
	outline: none;
}

.dropdown-select option {
	padding: 10px;
}

.checkbox-group {
	display: flex;
	flex-wrap: wrap;
	margin: 20px 0;
}

.checkbox {
	display: inline-block;
	margin-right: 15px;
	margin-bottom: 5px;
}

.checkbox input[type="checkbox"] {
	display: none;
}

.checkbox-group>label {
	margin-right: 20px;
	margin-bottom: 20px;
}

.checkbox label {
	display: inline-block;
	cursor: pointer;
	padding: 5px 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f9f9f9;
}

.checkbox input[type="checkbox"]:checked+label {
	background-color: #007bff;
	color: #fff;
}

.hidden {
	display: none;
}

.Notice>label {
	margin-bottom: 50px;
}

.Information {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-gap: 10px;
}

.Information_name {
	display: grid;
	grid-template-columns: repeat(1, 1fr);
}

.Info {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.Item {
	width: 90%;
}

input {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	border-radius: 5px;
}

.Menu-Item {
	display: flex;
	gap: 10px;
	align-items: center;
}

textarea {
	font-family: Arial, sans-serif;
	padding: 10px;
	margin: 8px 0;
	border: 1px solid #ccc;
	box-sizing: border-box;
	display: inline-block;
	border-radius: 5px;
	width: 100%;
}

h1 {
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
	text-align: center;
}

h3 {
	color: blue;
	text-align: center;
	text-shadow: 1px 1px 2px rgba(0, 0, 255, 0.5);
}

img {
	width: 30px;
	height: 30px;
}

button {
	padding: 10px;
	border-radius: 5px;
}

.is-invalid {
	border: 2px solid red !important;
}

.is-valid {
	border: 2px solid green !important;
}
</style>
</head>

<body>
	<div class="enroll-box">
		<h1>Enroll for Client's Dining</h1>
		<h3>매장 정보 입력</h3>
		<form class="validation-form" action="<%=withFormTag%>" method="post"
			name="myform">
			<input type="hidden" name="command" value="DiningInsert"> <input
				type="hidden" name="C_id" id="C_id"
				value="${sessionScope.clientinfo.getC_id()}">
			<div>
				<label for="Name">업체명</label> <input type="text" name="Name"
					id="Name" placeholder="정확한 업체명을 입력해 주세요" required>
			</div>
			<div style="margin: 20px 0;">
				<label for="Address">매장위치</label> <input type="text"
					class="input-box" id="Address" name="Address" value=""
					onclick="openZipSearch();" placeholder="주소를 입력해주세요" required>
				<input class="input-box" name="Address_Detail" id="Address_Detail"
					placeholder="세부 상세 주소를 입력해 주세요" required>
			</div>
			<div class="dropdown">
				<label for="Category">음식 카테고리</label>
				 <select name="Category" class="dropdown-select" id="Category" required>
					<option value="Category">Select your dining</option>
					<c:forEach var="category" items="${CategoryList}">
						<option value="${category}">${category}</option>
					</c:forEach>
				</select>
			</div>
			<%-- 	<div class="dropdown">
				<c:forEach var="FillItem" items="${CategoryList}" varStatus="status">
					<label for="Category">음식 카테고리</label>
					<select class="dropdown-select" id="Category" required>
						<option value="Category">Select your dining</option>
						<option value="Korean">한식</option>
						<option value="Chinese">중식</option>
						<option value="Japanese">일식</option>
						<option value="Western">양식</option>
						<option value="Fusion">퓨전</option>
						<option value="Other">기타</option>
					</select>
				</c:forEach>
			</div> --%>
			<div class="checkbox-group" style="margin: 30px 0;">
				<label for="Style1">매장 pick(style)</label>
				<div>
					<div class="checkbox">
						<input type="checkbox" id="Style1" name="Style1" value="연말 연초 모임">
						<label for="Style1">#연말 연초 모임</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style2" name="Style2" value="데이트 코스">
						<label for="Style2">#데이트 코스</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style3" name="Style3" value="룸이 있는">
						<label for="Style3">#룸이 있는</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style4" name="Style4" value="뷰가 좋은">
						<label for="Style4">#뷰가 좋은</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style5" name="Style5" value="상견례 장소">
						<label for="Style5">#상견례 장소</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style6" name="Style6" value="가족 모임">
						<label for="Style6">#가족 모임</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style7" name="Style7" value="반려동물 동반 가능"> <label for="Style7">#반려동물 동반
							가능</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style8" name="Style8" value="락커룸">
						<label for="Style8">#락커룸</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style9" name="Style9" value="회식">
						<label for="Style9">#회식</label>
					</div>
					<div class="checkbox">
						<input type="checkbox" id="Style10" name="Style10" value="혼술">
						<label for="Style10">#혼술</label>
					</div>
				</div>
			</div>
			<button onclick="addCheckbox()" style="margin-right: 30px;">pick
				추가</button>
			<button onclick="complete()" style="margin-bottom: 30px;">선택
				완료</button>
			<div class="Content" style="margin: 20px 0;">
				<label for="Content">매장에 대한 소개글</label>
				<textarea id="Content" name="Content" rows="3" cols="95"
					placeholder="매장에 대해 2~3줄로 어필 홍보해 보세요" required></textarea>
			</div>
			<label>영업 정보</label>
			<fieldset class="Information">
				<div class="Item">
					<label for="Opentime">오픈시간:</label> <input type="time"
						name="Opentime" placeholder="영업시간: " required>
				</div>
				<div class="Item">
					<label for="Close_time">마감시간:</label> <input type="time"
						name="Close_time" placeholder="마감시간: " required>
				</div>
				<div class="Item">
					<label for="Break_time">휴게시간:</label> <input type="text"
						name="Break_time"
						placeholder="휴게 시간: HH:MM ~ HH:MM" required>
				</div>
				<div class="Item">
					<label for="Holiday">휴무일:</label> <input type="text" name="Holiday"
						placeholder="공휴일, 일요일 휴무" required>
				</div>
				<div class="item">
					<label for="Phone">전화번호:</label> <input type="tel" id="Phone"
						name="Phone"
						placeholder="010-1234-5678" required>
				</div>
				<div class="Item">
					<label for="Parking_status">주차여부:</label> <input type="text"
						id="Parking_status" name="Parking_status"
						placeholder="가능, 불가능, 요금 등" required>
				</div>
				<div class="Item">
					<label for="Amenities">편의시설:</label> <input type="text"
						id="Amenities" name="Amenities" placeholder="분리홀, 어린이시설, 테이크아웃 등"
						required>
				</div>
				<div class="Item">
					<label for="Capacity">최대 수용 인원:</label> <input type="number"
						id="Capacity" name="Capacity" min="1" max="30" placeholder="2"
						required>
				</div>
			</fieldset>

			<div class="Notice" style="margin: 30px 0;">
				<label for="Notice">공지 및 알림 사항(환불정책)</label>
				<textarea id="Notice" name="Notice" rows="5" cols="95"
					placeholder="꼭 필요한 공지 및 알림 사항등을 알려주세요" required></textarea>
			</div>
			<div>
				<label for="Image01">매장 사진(첨부 파일)</label> <input type="file"
					name="Image01" enctype="multipart/form-data" required>
			</div>

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button style="margin-top: 30px;" class="btn btn-primary"
				type="submit" onclick="return validCheck();">매장 정보 제출하기</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="clientInsertForm.jsp"><button style="margin-top: 30px;"
					class="btn btn-danger" type="button">회원가입 페이지로</button></a>
		</form>		
	</div>
</body>
</html>