<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>

    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">   
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->


    <script>
        // 스크롤 기능 제거
        window.addEventListener("wheel", function (e) {
            e.preventDefault();
        }, { passive: false });


        //  참조하는 요소 미리 탐색 및 선언
        var $html = $("html");
        var page = 1;
        var lastPage = $(".section").length;
        $html.animate({ scrollTop: 0 }, 10);


        // 휠 굴리면 다음페이지, 이전 페이지
        $(window).on("wheel", function (e) {

            if ($html.is(":animated")) return;

            if (e.originalEvent.deltaY > 0) {
                if (page == lastPage) return;

                page++;
            } else if (e.originalEvent.deltaY < 0) {
                if (page == 1) return;

                page--;
            }
            var posTop = (page - 1) * $(window).height();

            $html.animate({ scrollTop: posTop });

        });

        // 스크롤 스파이 시작
        $(function(){

        var link = $('#navbar a.dot');
        link.on('click',function(e){
            
            //href 속성을 통해, section id 타겟을 잡음
            var target = $($(this).attr('href')); 
            
            //target section의 좌표를 통해 꼭대기로 이동
            $('html, body').animate({
                scrollTop: target.offset().top
            },600);
            
            //active 클래스 부여
            $(this).addClass('active');

            //앵커를 통해 이동할때, URL에 #id가 붙지 않도록 함.
            e.preventDefault();
        });

        $(window).on('scroll',function(){
            findPosition();
        });

        function findPosition(){
            $('section').each(function(){
                if( ($(this).offset().top - $(window).scrollTop() ) < 20){
                    link.removeClass('active');
                    $('#navbar').find('[data-scroll="'+ $(this).attr('id') +'"]').addClass('active');
                }
            });
        }

        findPosition();
        });

        // 스크롤 스파이 종료

        


    </script>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-weight: bold;
        }

        html {
            overflow: hidden;
        }

        html, body {
            width: 100%;
            height: 100%;
            background-color: #bfc8d7
        }

        /* 페이지 너비 */
        .section {
            width: 100%;
            height: 100%;
            position: relative;
        }

        .section > img {
            /* 휠 할때 슬라이드 */
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);

            font-weight: bold;
            text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.6);
        }


        /* 헤더 */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;

            height: 75px;
            padding: 1rem;
            color: white;
            background: rgba(0, 0, 0, 0.8);
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1;
        }

        .a, a:link, a:visited {
            font-size: 25px;
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
        }

        #headerimg {
            width: 90px;
            height: 70px;
        }

        ul li {
            list-style: none;
        }

        #menu {
		font:bold 16px "malgun gothic";
		color:black;
		line-height: 50px; 
		text-align: center;
        }

        #menu > ul > li {
            float:left;
            width:140px;
            position:relative;
        }

        #menu > ul > li > ul {
            width:130px;
            display:none;
            position: absolute;
            font-size:14px;
            background: skyblue;
        }

        #menu > ul > li:hover > ul {
            display:block;
            
        }

        #menu > ul > li > ul > li:hover {
            background: orange;
            transition: ease 1s;
            }
        

        /* 헤더 종료 */

        
        /* 스크롤 스파이 */
        .navbar {
            position: fixed;
            z-index: 999;
            top: 50%;
            right: 50px;
            transform: translateY(-50%);
        }

        .navbar .nav-menu {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }

        .navbar .nav-menu li {
            position: relative;
            min-width: 200px;
            text-align: right;
        }

        .navbar .nav-menu li .dot {
            display: block;
            color: #fff;
            padding: 5px 0;
        }

        .navbar .nav-menu li .dot::before,
        .navbar .nav-menu li .dot::after {
            display: block;
            position: absolute;
            content: '';
            border-radius: 50%;
            top: 50%;
            transition: all .3s ease;
        }

        .navbar .nav-menu li .dot::before {
            width: 5px;
            height: 5px;
            right: 0;
            border: 2px solid #181818;
            transform: translateY(-50%);
        }

        .navbar .nav-menu li .dot::after {
            width: 15px;
            height: 15px;
            border: 2px solid #f44336;
            right: -5px;
            transform: translateY(-50%) scale(0);
        }

        .navbar .nav-menu li .dot.active::before,
        .navbar .nav-menu li:hover .dot::before {
            background: #f44336;
            border-color: #f44336;
        }

        .navbar .nav-menu li .dot.active::after,
        .navbar .nav-menu li:hover .dot::after {
            transform: translateY(-50%) scale(1);
        }

        .navbar .nav-menu li .dot span {
            display: inline-block;
            opacity: 0;
            /* font-weight: 700; */
            font-size: 20px;
            letter-spacing: .5px;
            text-transform: capitalize;
            background-color: #f44336;
            padding: 10px 20px;
            border-radius: 3px;
            margin-right: 30px;
            transform: translateX(20px);
            transition: all .3s ease;
        }

        .navbar .nav-menu li .dot span::before {
            display: block;
            position: absolute;
            content: '';
            border-left: 7px solid #f44336;
            border-top: 7px solid transparent;
            border-bottom: 7px solid transparent;
            top: 50%;
            transform: translate(7px, -50%);
            right: 0;
            transition: all .3s ease;
        }

        .navbar .nav-menu li .dot.active span,
        .navbar .nav-menu li:hover .dot span {
            transform: translateX(0px);
            opacity: 1;
        }
        /* 스크롤 스파이 */
        


        /* 2페이지 버튼 */
        #btn1 {
            position: absolute;
            top: 600px;
            left: 20%;
            background-color: #eeafaf;
            width: 100px;
            height: 100px;
        }

        #btn2 {
            position: absolute;
            top: 600px;
            left: 40%;
            background-color: #eeafaf;
            width: 100px;
            height: 100px;
        }

        #btn3 {
            position: absolute;
            top: 600px;
            left: 60%;
            background-color: #eeafaf;
            width: 100px;
            height: 100px;
        }

        #btn4 {
            position: absolute;
            top: 600px;
            left: 80%;
            background-color: #eeafaf;
            width: 100px;
            height: 100px;
        }
        /* 2페이지 버튼 종료 */



        /* 푸터 */
        .footer {
            width: 100%;
            height: 200px;
            background: rgba(0, 0, 0, 0.8);
        }

        #footerimg {
            margin: 0;
            margin-left: 50px;
            margin-top: 50px;
        }

        .footer-p {
            margin-left: 100px;
        }

        #footer-p {
            font-size: 30px;
            /* color: black; */
        }

        /* 푸터 종료 */








    </style>

</head>

<body>

    <!-- 헤더 -->
    <header class="header">
        <a href="main.jsp" target="_self">
            <img id="headerimg" src="logo.png" alt="메인 로고">
        </a>

        <div id="menu">
            <ul>
                <li><a href="books-korea.jsp">도서</a>
                    <ul>
                        <li><a href="books-korea.jsp">국내</a></li>
                        <li><a href="books-overseas.jsp">해외</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <a class="nav_two" href="favorites.jsp">즐겨찾기</a>
        
        <a class="nav_three" href="mypage.jsp">마이페이지</a>


        <nav>
            <a class="login" href="login.jsp">로그인</a>
        </nav>
    </header>
    <!-- 헤더 종료 -->
    

    <!-- 스크롤 -->
    <!-- Start Nav Section -->
<nav id="navbar" class="navbar">
    <ul class="nav-menu">
      <li>
        <a data-scroll="home" href="#home" class="dot active">
          <span>홈</span>
        </a>
      </li>
      <li>
        <a data-scroll="one" href="#one" class="dot">
          <span>하나
          </span>
        </a>
      </li>
      <li>
        <a data-scroll="two" href="#two" class="dot">
          <span>two</span>
        </a>
      </li>
    </ul>
  </nav>
  <!-- End Nav Section -->



    <!-- 1 페이지 -->
    <section id="home" class="section">

        <!-- 캐러셀 슬라이드 html 시작 -->

        <!-- 캐러셀 슬라이드 html 끝 -->


            <img src="http://placehold.it/800x600" alt="1페이지">

    </section>
    <!-- 1 페이지 종료 -->

    <!-- 2페이지 -->
    <section id="one" class="section">

        <!-- 더미 이미지 -->
        <img src="http://placehold.it/1158x718" alt="2페이지">
        <!-- 버튼 -->
        <button id="btn1" class="btn" type="button" onclick="location.href='#'" >1</button>
        <button id="btn2" class="btn" type="button" onclick="location.href='#'" >2</button>
        <button id="btn3" class="btn" type="button" onclick="location.href='#'" >3</button>
        <button id="btn4" class="btn" type="button" onclick="location.href='#'" >4</button>
    </section>

    <!-- 2 페이지 종료 -->


    <!-- 3페이지 -->
    <section id="two" class="section">

        <img src="http://placehold.it/1158x718" alt="3페이지">
    </section>

    <!-- 3 페이지 종료 -->



    <!-- 푸터 -->
    <footer class="footer">
        <img id="footerimg" src="footerimg.png" alt="부키도키">
        <a id="footer-p" class="footer-p" href="login.jsp">1 : 1 문의</a>
        <a id="footer-p" class="footer-p" href="login.jsp">공지사항</a>
    </footer>
    <!-- 푸터 종료 -->




</body>

</body>

</html>