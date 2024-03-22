<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/board_write.css">
    <title>저기요 EXCUSE ME</title>
</head>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<style>
    /* 폰트 설정 start */
    /* 만약 폰트 크기를 키웠는데 적용이 안된다면 ? font-weight 크기 100단위로 조절해주기 */
    *{
        font-family: 'Pretendard-Regular';
        margin:0;
        padding:0;
    }
    main{
        min-height: 100vh;
    }
    .container-fluid{
        max-width:1280px;
        display: flex;
        
    }
    /* 폰트 설정 end */
</style>
<body>
    <header class="navbar navbar-expand-lg bg-body-tertiary shadow-sm ps-5 pe-5" >
        <div class = "container-fluid">
            <a><img class = 'col-4 ms-4' src = '../img/nav_logo.png'></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <nav class="collapse navbar-collapse mr-1" id="navbarNav">
                <ul class="navbar-nav ms-auto me-2 grid gap-4">
                    <li class = "navbar-item">
                        <!-- 여기서 지도 html 추가해주세요!!!-->
                        <a href = "../mytour/mytour_map.html" class="nav-link active fs-5" aria-current="page" href="#">나만의 여행계획</a>
                    </li>
                    <li class = "navbar-item">
                        <a href = "../html/board.html" class="nav-link active fs-5" aria-current="page" href="#">게시판</a>
                    </li>
                    <li id = 'nav-login' class = "navbar-item">
                        <a href = "../login/login.html" class="nav-link active fs-5" aria-current="page" href="#">로그인</a>
                    </li>
                    <li id = 'nav-signup' class = "navbar-item">
                        <a href = "../login/signup.html" class="nav-link active fs-5" aria-current="page" href="#">회원가입</a>
                    </li>
                    <!--로그인 하면 display 변경해주기-->
                    <li id = 'nav-logout' class = "navbar-item">
                        <a href = "" class="nav-link active fs-5" aria-current="page" href="#" >로그아웃</a>
                    </li>
                    <li id = 'nav-mypage' class = "navbar-item">
                        <a href = "../mypage/mypage.html" class="nav-link active fs-5" aria-current="page" href="#" >마이페이지</a>
                    </li>
                </ul> 
            </nav>
        </div>
    </header>
    <main>
        <div class="main">
            <div class = 'container-1'>
                <h3>관광지 후기 작성</h3>
            </div>
            <form method = "POST" action="" id="form-board">
            <input type="hidden" name="action" value="write" />
	            <div class = 'container-2'>
	                <div class= "title-container">
	                    <p class = 'field-name'>제목</p>
	                    <input id = 'title' class = 'title-field' name="title" type = 'text'>
	                </div>
	                <div class = "content-container">
	                    <p class = 'field-name'>내용</p>
	                    <textarea id = 'contents' name="contents" class = 'content-field'></textarea>
	                </div>
	            </div>
	            <div class = 'button-container'>
	                <a id = 'btn-enroll' class = 'button' href="">글 등록하기</a>
	            </div>
            </form>
        </div>
    </main>
    <footer class="navbar bg-dark nav justify-content-center pt-4 pb-4" data-bs-theme="dark">
        <p class = "text-light">© SSAFY 광주_4반 김민주 박지훈 신민경 이지표</p>
    </footer>
</body>

<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F    7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous">
</script>

<script>
document.querySelector("#btn-enroll").addEventListener("click", function () {
    if (!document.querySelector("#title").value) {
      alert("제목 입력!!");
      return;
    } else if (!document.querySelector("#contents").value) {
      alert("내용 입력!!");
      return;
    } else {
      let form = document.querySelector("#form-board");
      form.setAttribute("action", "${root}/board");
      form.submit();
    }
  });
</script>

<!-- <script src = "../js/board_write.js"></script> -->
</html>