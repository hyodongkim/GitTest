<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>회원 목록</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        *{
            margin: 0; padding: 0;
        }
        #wrap{
            position: absolute;
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: row;
            align-content: flex-start;
        }
        a img{
            height: 150px;
            width: 150px;
        }
        #logo{
            height: 150px;
        }
        nav{
            width: 150px;
            height: 100%;
            display: flex;
            flex-direction:column;
            justify-content: space-between;

        }
        #nav1{
            display: flex;
            flex-direction: column;
            height: 400px;
            width: 150px;
            list-style-type: none;
        }
        #nav2{
            display: flex;
            flex-direction: column;
            height: 100px;
            width: 150px;
            list-style-type: none;
        }
        ul li{
            display: flex;
            width: 150px;
            height: 50px;
            align-items: center;
            cursor: pointer;
            border: black 1px solid;
        }
        li a{
            text-decoration: none;
            font-size: 16pt;
            color: black;
        }
    </style>
    <script type="text/javascript">
        function writeForm(){
            location.href="BoardWriteForm.bo";
        }
    </script>
</head>
<body>
    <div id="wrap">
        <nav>
            <ul id="nav1">
                <li id="logo"><a href="admin_member.html"><img src="./img/logo.png" alt="로고"></a></li>
                <li><a href="admin_member.html">회원정보</a></li>
                <li><a href="admin_book.html">도서정보</a></li>
                <li><a href="admin_review.html">리뷰관리</a></li>
                <li><a href="admin_qna.html">1:1문의</a></li>
                <li><a href="admin_notice.html">공지사항</a></li>
            </ul>
            <ul id="nav2">
                <li><a href="">회원정보 변경</a></li>
                <li><a href="admin.html">로그아웃</a></li>
            </ul>
        </nav>
        <table class="table table-hover">
            <Thead>
                <tr>
                    <th>번호</th>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>비밀번호</th>
                    <th>성별</th>
                    <th>연도</th>
                    <th>월</th>
                    <th>이메일</th>
                    <th>휴대폰</th>
                    <th>이용권</th>
                    <th>권한</th>
                    
                </tr>
            </Thead>
            <c:forEach var="hp_member" items="${requestScope.list}">
                <tr>
                    <td>${hp_member.hp_Index}</td>
                    <td>${hp_member.hp_ID}</td>
                    <td>${hp_member.hp_Name}</td>
                    <td>${hp_member.hp_Password}</td>
                    <td>${hp_member.hp_Sex}</td>
                    <td>${hp_member.Birthday_Year}</td>
                    <td>${hp_member.hp_Birthday_Month}</td>
                    <td>${hp_member.hp_Email}</td>
                    <td>${hp_member.hp_Phone}</td>
                    <td>${hp_member.hp_Ticket}</td>
                    <td>${hp_member.hp_Auth}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>