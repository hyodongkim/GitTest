<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>국외 도서</title>



    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            /* font-size: 32px; */
            font-weight: bold;
        }

        html, body {
            width: 100%;
            height: 100%;
            background-color: #bfc8d7
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

        a, a:link, a:visited {
            font-size: 25px;
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
        }

        #headerimg {
            width: 90px;
            height: 70px;
        }

        #books {
            font-size: 30px;
            font-weight: bold;
            color: black;
        }


        /* 헤더 드롭박스 */
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


        /* 페이지 너비 */
        section {
            width: 100%;
            height: 100%;
            position: relative;
        }



        /* 도서 이미지 */
        .section {
            display: flex;
            flex-wrap: wrap;
        }

        .box {
            margin-top: 100px;
            margin-left: 100px;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
        }

        .box > p {
            text-align: center;
            
        }



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
        }

        /* 푸터 종료 */





    </style>

</head>

<body>
    <!-- 헤더 -->
    <header class="header">

        <a href="main.html" target="_self">
            <img id="headerimg" src="logo.png" alt="메인 로고">
        </a>

        <div id="menu">
            <ul>
                <li><a id="books" href="books-korea.html">도서</a>
                    <ul>
                        <li><a href="books-korea.html">국내</a></li>
                        <li><a href="books-overseas.html">해외</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <a class="nav_two" href="favorites.html">즐겨찾기</a>
        <a class="nav_three" href="mypage.html">마이페이지</a>


        <nav>
            <a class="login" href="login.html">로그인</a>
        </nav>
    </header>
    <!-- 헤더 종료 -->

    

    <!-- 도서 목록 -->
    <section id="one" class="section">
        <div id="box1" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>1번도서</p></div>
        <div id="box2" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>2번도서</p></div>
        <div id="box3" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>3번도서</p></div>
        <div id="box4" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>4번도서</p></div>
        <div id="box5" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>5번도서</p></div>
        <div id="box6" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>6번도서</p></div>
        <div id="box7" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>7번도서</p></div>
        <div id="box8" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>8번도서</p></div>
        <div id="box9" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>9번도서</p></div>
        <div id="box10" class="box"><img src="http://placehold.it/150x200" alt="도서"><p>10번도서</p></div>
    </section>
    <!-- 도서 목록 종료 -->

    <!-- 푸터 -->
    <footer class="footer">
        <img id="footerimg" src="footerimg.png" alt="부키도키">
        <a id="footer-p" class="footer-p" href="login.html">1 : 1 문의</a>
        <a id="footer-p" class="footer-p" href="login.html">공지사항</a>
    </footer>
    <!-- 푸터 종료 -->

</body>
</html>