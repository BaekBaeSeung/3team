<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dining 정보 등록</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
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
            var checkboxes = document.getElementsByName("pick");
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
            var checkboxes = document.querySelectorAll('input[name="pick"]:checked');
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
            newCheckboxInput.id = "pick" + newIndex;
            newCheckboxInput.name = "pick"; // 기존 체크박스와 동일한 이름 사용
            newCheckboxInput.value = "";

            var newTextInput = document.createElement("input");
            newTextInput.type = "text";
            newTextInput.style.padding = "3px";
            newTextInput.style.width = "100px";

            newTextInput.id = "textInput" + newIndex;
            newTextInput.placeholder = "#추가 pick";
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
            newCheckboxLabel.setAttribute("for", "pick" + newIndex);
            newCheckboxLabel.appendChild(newTextInput);

            newCheckbox.appendChild(newCheckboxInput);
            newCheckbox.appendChild(newCheckboxLabel);

            // 생성한 체크박스를 컨테이너에 추가
            container.appendChild(newCheckbox);

            // 새로 추가된 체크박스도 최대 개수에 포함되도록 체크 수 업데이트
            checkboxes = document.querySelectorAll('input[name="pick"]:checked');
            if (checkboxes.length >= 5) {
                alert("최대 5개까지 선택 가능합니다.");
            }

            validateForm(document.querySelector('.validation-form'));
        }

        function addMenuField() {
            const menuForm = document.querySelector('.menu-form');
            const menuItem = document.createElement('div');
            menuItem.classList.add('menu-item');
            menuItem.innerHTML = `
        <div>
            <label for="menu-name">메뉴명:</label>
            <input type="text" name="menu-name" required>
        </div>
        <div>
            <label for="menu-price">가격:</label>
            <input type="number" name="menu-price" min="0" required>
        </div>
    `;

            // 메뉴 추가
            menuItem.style.display = 'grid';
            menuItem.style.gridTemplateColumns = 'repeat(2, 1fr)';
            menuItem.style.gridGap = '20px';
            menuForm.insertBefore(menuItem, menuForm.lastElementChild);
        }

        function validateMenuForm() {
            const menuItems = document.querySelectorAll('.menu-item');
            for (var i = 0; i < menuItems.length; i++) {
                var menuName = menuItems[i].querySelector('[name="menu-name"]').value;
                var menuPrice = menuItems[i].querySelector('[name="menu-price"]').value;

                // 메뉴명, 가격 중 하나라도 입력되지 않았을 경우
                if (!menuName || !menuPrice) {
                    alert('메뉴명, 가격을 모두 입력해 주세요.');
                    return false; // 밸리데이션 실패
                }
            }
            // 밸리데이션 통과
            alert('메뉴 추가가 완료되었습니다.');
        }
    </script>
    <script>
        function validCheck() {
            // 업체명 유효성 검사
            var dining = $('#dining').val();
            if (dining.length == 0) {
                alert('업체명을 입력해 주세요.');
                $('#dining').focus();
                return false;
            }

            // 매장 위치 유효성 검사
            var address = $('#address').val();
            if (address.length == 0) {
                alert('매장 위치를 입력해 주세요.');
                $('#address').focus();
                return false;
            }

            // 세부 상세 주소 유효성 검사
            var address2 = $('#address2').val();
            if (address2.length == 0) {
                alert('세부 상세 주소를 입력해 주세요.');
                $('#address2').focus();
                return false;
            }

            // 음식 카테고리 유효성 검사
            var menuList = $('#menu option:selected');
            if (menuList.length === 0 || menuList.val() === 'menu') {
                alert('음식 카테고리를 선택해주세요.');
                return false;
            }

            // 매장 소개글 유효성 검사
            var notice = $('#notice').val();
            if (!notice.trim()) {
                alert('매장 소개글을 입력해 주세요.');
                $('#notice').focus();
                return false;
            }

            // 영업 정보 유효성 검사
            var open = $('input[name="open"]').val();
            var close = $('input[name="close"]').val();
            var breakTime = $('input[name="breakTime"]').val();
            var holiday = $('input[name="holiday"]').val();
            var phoneNumber = $('input[name="phoneNumber"]').val();
            var parking = $('input[name="parking"]').val();
            var facilities = $('input[name="facilities"]').val();
            var count = $('#count').val();

            if (!open || !close || !breakTime || !holiday || !phoneNumber || !parking || !facilities || !count) {
                alert('영업 정보를 모두 입력해 주세요.');
                return false;
            }

            // 공지 및 알림 사항 유효성 검사
            var introduction = $('#introduction').val();
            if (!introduction) {
                alert('공지 및 알림 사항을 입력해 주세요.');
                $('#introduction').focus();
                return false;
            }

            // 매장 사진 유효성 검사
            var photo = $('input[name="photo"]').val();
            if (!photo) {
                alert('매장 사진을 첨부해 주세요.');
                return false;
            }

            // 모든 유효성 검사 통과
            return true;
        }

    </script>

    <!-- <%-- 다음 주소 검색을 위한 추가 코드 --%> -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
                    $("#address").val(addr); /* 메인 주소 입력 */
                    $("#address2").val("");
                    $("#address2").focus(); /* 상세 주소 입력란에 포커스 주기 */
                }
            }).open();
        }
    </script>
    <style>
        body {
            min-height: 180vh;
            margin: 0;
            font-family: Arial, sans-serif;
            transition: background-color 0.5s;
            background-color: #E8D8C4;
            color: black;
            display: flex;
            align-items: center;
            justify-content: space-around;
            height: auto;
            overflow: auto;
            background: -webkit-gradient(linear, left bottom, right top, from(rgb(255, 255, 255)),
                    to(#1d466c));
            background: -webkit-linear-gradient(bottom left, rgb(255, 255, 255) 0%,
                    #1d466c 100%);
            background: -moz-linear-gradient(bottom left, rgb(255, 255, 255) 0%,
                    #1d466c 100%);
            background: -o-linear-gradient(bottom left, rgb(255, 255, 255) 0%,
                    #1d466c 100%);
            background: linear-gradient(to top right, rgb(255, 255, 255) 0%, #1d466c 100%);
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

        .notice>label {
            margin-bottom: 50px;
        }

        .information {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 10px;
        }

        .hidden {
            display: block;
            width: 100%;
        }

        .item {
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


        legend {
            color: blue;
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
        <h1>Dining 정보 등록</h1>
        <h3>본인 업체 정보 입력해주세요!</h3>
        <form class="validation-form" novalidate action="<%=withFormTag%>" method="post" name="myform">
            <div>
                <label for="dinin
				g">업체명</label> <input type="text" name="dining" id="dining" placeholder="정확한 업체명을 입력해 주세요" required>
            </div>
            <div style="margin: 20px 0;">
                <label for="address">매장위치</label> <input class="input-box" name="address" id="address" value=""
                    placeholder="매장 위치를 입력해 주세요" onclick="openZipSearch();" required> <input class="input-box"
                    name="address2" id="address2" placeholder="세부 상세 주소를 입력해 주세요" required>
            </div>
            <div class="dropdown">
                <c:forEach var="fillItem" items="${menuList}" varStatus="status">
                    <label for="menu">음식 카테고리</label>
                    <select class="dropdown-select" id="menu" required>
                        <option value="menu">Select your dining</option>
                        <option value="korean">한식</option>
                        <option value="chinese">중식</option>
                        <option value="japanese">일식</option>
                        <option value="western">양식</option>
                        <option value="fusion">퓨전</option>
                        <option value="other">기타</option>
                    </select>
                </c:forEach>
            </div>
            <div class="checkbox-group" style="margin: 30px 0;">
                <label for="pick">매장 pick(style)</label>
                <div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick1" name="pick" value="연말 연초 모임">
                        <label for="pick1">#연말 연초 모임</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick2" name="pick" value="데이트 코스">
                        <label for="pick2">#데이트 코스</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick3" name="pick" value="룸이 있는">
                        <label for="pick3">#룸이 있는</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick4" name="pick" value="뷰가 좋은">
                        <label for="pick4">#뷰가 좋은</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick5" name="pick" value="상견례 장소">
                        <label for="pick5">#상견례 장소</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick6" name="pick" value="가족 모임">
                        <label for="pick6">#가족 모임</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick7" name="pick" value="반려동물 동반 가능">
                        <label for="pick7">#반려동물 동반 가능</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick8" name="pick" value="락커룸">
                        <label for="pick8">#락커룸</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick9" name="pick" value="회식">
                        <label for="pick9">#회식</label>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="pick10" name="pick" value="혼술">
                        <label for="pick10">#혼술</label>
                    </div>
                </div>
            </div>
            <button onclick="addCheckbox()" style="margin-right: 30px;">pick
                추가</button>
            <button onclick="complete()" style="margin-bottom: 30px;" required>선택
                완료</button>
            <div class="notice" style="margin: 20px 0;">
                <label for="notice">매장에 대한 소개글</label>
                <textarea id="notice" name="notice" rows="3" cols="95" placeholder="매장에 대해 2~3줄로 어필 홍보해 보세요"
                    required></textarea>
            </div>
            <form>
                <fieldset class="information">
                    <legend>영업 정보</legend>
                    <div class="item">
                        <label for="open">오픈시간:</label> <input type="time" name="open" required>
                    </div>
                    <div class="item">
                        <label for="close">마감시간:</label> <input type="time" name="close" required>
                    </div>
                    <div class="item">
                        <label for="businessHours">휴게시간:</label> <input type="text" name="breakTime"
                            placeholder="pm 12:00 ~ pm 01:00" required>
                    </div>
                    <div class="item">
                        <label for="businessHours">휴무일:</label> <input type="text" name="holiday"
                            placeholder="공휴일, 일요일 휴무" required>
                    </div>
                    <div class="item">
                        <label for="businessHours">전화번호:</label> <input type="tel" id="phoneNumber" name="phoneNumber"
                            pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-1234-5678" required>
                    </div>
                    <div class="item">
                        <label for="businessHours">주차여부:</label> <input type="text" name="parking"
                            placeholder="가능, 불가능, 요금 등" required>
                    </div>
                    <div class="item">
                        <label for="businessHours">편의시설:</label> <input type="text" name="facilities"
                            placeholder="분리홀, 어린이시설, 테이크아웃 등" required>
                    </div>
                    <div class="item">
                        <label for="count">최대 수용 인원:</label> <input type="number" id="count" min="1" max="30"  placeholder="2~30"
                            required>
                    </div>
                </fieldset>
            </form>
            <div class="introduction" style="margin: 30px 0;">
                <label for="introduction">공지 및 알림 사항(환불정책)</label>
                <textarea id="introduction" name="introduction" rows="5" cols="95"
                    placeholder="꼭 필요한 공지 및 알림 사항등을 알려주세요" required></textarea>
            </div>
            <div>
                <label for="photo">매장 사진(첨부 파일)</label> <input type="file" name="photo" multiple required>
            </div>
            <form style="margin-top: 20px;">
                <fieldset class="menu-form">
                    <legend>메뉴 정보</legend>
                </fieldset>
                <button type="button" style="font: 8px;" onclick="addMenuField();" required>매장 메뉴 추가</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="button" onclick="validateMenuForm();" required>메뉴 추가 완료</button>
            </form>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button style="margin-top: 30px;" class="btn btn-primary" type="submit" onclick="return validCheck();">매장
                정보 제출하기</button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="./main.jsp"><button style="margin-top: 30px;" class="btn btn-danger" type="button">메인 페이지로</button></a>
        </form>
    </div>
</body>

</html>