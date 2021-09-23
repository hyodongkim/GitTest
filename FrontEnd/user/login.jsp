<!DOCTYPE html>
<html lang="en">
<head>
  <title>로그인</title>
    <script>
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
            height:500px;
            display:flex;
            align-items: center;
            justify-content: center;
        }
        #login{
            display: flex;
            position:relative;
            border: solid black 1px;
            width:300px;
            height:200px;
            flex-direction: column;
            align-items: center;
            margin: 10px;
            
        }
        img{
          width: 80px;
          height: 80px;
        }
      input[type=text]{
      text-align:center;
      position:relative;
      display: flex;
      flex-direction : row;
      justify-content : space-between;
      width :200px;
      height : 30px;
      border-radius:2px;
      }
      input[type=password]{
      text-align:center;
      position:relative;
      display: flex;
      flex-direction : row;
      justify-content : space-between;
      width :200px;
      height : 30px;
      border-radius:2px;
      }
      input[type=submit]{
      position:relative;
      width:250px;
      height: 30px;
      margin-bottom:10px;
      border-radius:8px;
      }
      a{
          color: black;
        }


  
    </style>
    
</head>
<body>

    <div id="wrap">
      <div id="top">
        <a href="main.html"><img src="logo.png" alt="logo"></a>
      </div>
      <div id="main">
        <div id="login">
          <form method="get" action="hp_member.php">
            <label>ID<input type="text" name="hp_id"></label>
            <label>Password<input type="password" name="hp_password"></label>
            </br>
            <input type="submit" value="로그인">
          </form>
          <a href="join.html">회원가입</a>
        </div>
      </div>
    </div>
      
    
</body>
</html>