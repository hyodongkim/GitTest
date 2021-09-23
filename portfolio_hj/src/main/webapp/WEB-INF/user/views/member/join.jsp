<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>회원가입</title>
  <script type="text/javascript">
    function check_Password(){
      var password = document.getElementById('pw');
      var repassword = document.getElementById('pw2');
      var confrimMsg = document.getElementById('confirmMsg');
      var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
      var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
      if(password.value == repassword.value){//password 변수의 값과 repassword 변수의 값과 동일하다.
        confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
        confirmMsg.innerHTML ="비밀번호 일치";
      }else{
        confirmMsg.style.color = wrongColor;
        confirmMsg.innerHTML ="비밀번호 불일치";
      }
    }

  </script>
    <style>
          /* 초기화 */
    * {
      margin: 0; padding:0;
    }
    #wrap{
      position:absolute;
      width:100%;
      height:100%;
      display:flex;
      flex-direction:column;
    }
        #top{
          display: flex;
          position: relative;
          width: 100%;
          height: 100px;
          align-items: center;
          justify-content: center;
          background-color: skyblue;
        }
        #main{
            position:relative;
            width:100%;
            height:800px;
            display:flex;
            align-items: center;
            justify-content: center;
        }

        #join{
            display: flex;
            position:relative;
            border: solid black 1px;
            width:400px;
            height:600px;
            flex-direction: column;
            align-items: center;
            padding: 2%;
            margin: 10px;
            
        }
        img{
          width: 80px;
          height: 80px;
        }
        a{
          color: black;
        }

input[type=text]{
text-align:center;
position:relative;
display: flex;
flex-direction : row;
justify-content : space-between;
width :250px;
height : 30px;
border-radius:2px;
}
input[type=password]{
text-align:center;
position:relative;
display: flex;
flex-direction : row;
justify-content : space-between;
width :250px;
height : 30px;
border-radius:2px;
}
input[type=email]{
text-align:center;
position:relative;
display: flex;
flex-direction : row;
justify-content : space-between;
width :250px;
height : 30px;
border-radius:2px;
}
input[type=submit]{
position:relative;
width: 250px;
height : 30px;
margin-bottom:10px;
border-radius:8px;

}
  
    </style>
    
</head>
<body>

    <div id="wrap">
      <div id="top">
        <a href="main.jsp"><img src="./img/logo.png" alt="logo"></a>
      </div>
      <div id="main">
        <div id="join">
          <form method="get" action="hp_member.php">
            <p>아이디</p>
            <input type="text" name="hp_id" required>
            <!-- <button type="button" class="id_check_button" onclick="check_id()">중복검사</button>
            <img id="id_check_sucess" style="display: none;"> -->
            <p>패스워드</p>
            <input type="password" name="hp_password" id = "pw" onchange="check_Password()" required>
            <p>패스워드 확인</p>
            <input type="password" name="hp_repassword" id = "pw2" onchange="check_Password()" required>
            <span id="confirmMsg"></span>
            <p>이름</p>
            <input type="text" name="hp_name" required>
            <p>생년월일(주민등록번호 앞자리)</p>
            <input type="text" name="hp_birthday" required>
            <p>성별</p>
            <label><input type="radio" name="hp_sex" value="male" checked="checked">남</label>
            <label><input type="radio" name="hp_sex" value="female">여</label>
            <p>이메일</p>
            <input type="email" name="hp_email" required>
            <p>전화번호</p>
            <input type="text" name="hp_phone" required>
            </br></br></br>
            <input type="submit" value="회원가입">
          </form>
          <a href="login.jsp">로그인화면으로</a>
        </div>
      </div>
    </div>

    
</body>
</html>