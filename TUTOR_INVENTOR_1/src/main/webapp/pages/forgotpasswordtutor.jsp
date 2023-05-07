<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password Tutor</title>
<style>

.login-page-background{
    background-color: aliceblue;
    height: 100vh;
    display: flex;
    align-items: center;
}
.login-page-container{
    width: 60%;
    margin: 3rem auto 5rem auto;
    display: flex;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 10px 10px 25px #d9d7d7;
}
.login-form{
    width: 60%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}
.login-form h1{
    margin-bottom: 2rem;
    text-align: center;
}

.input-field{
    display: flex;
    align-items: center;
    margin: 0 auto 20px auto;
    border-bottom: 1px solid gray;
    width: 60%;
}
.input-field svg{
    fill: #222;
}
.input{
    border: none;
    outline: none;
    padding: 10px;
    width: 100%;
}


.register-btn{
    width: 60%;
    border: none;
    outline: none;
    padding: 12px;
    margin: 10px auto;
    border-radius: 5px;
    font-weight: bold;
    background-color: #6dabe4; /*#f5c833;*/
    color: #fff;
    cursor: pointer;
}
.register-btn:hover{
    background-color: #4292dc; /*#f5c21b;*/
}

.link{
    text-align: center;
    color: gray;
    padding: 0.7rem;
}
.image-container{
    width: 40%;
    display: flex;
    align-items: center;
    /* padding: 1rem; */
}
.image-container img{
    width: 100%;
    border-radius: 10px;
    height: 100%;
       background-color:white;
}

@media screen and (max-width: 900px){
    .login-page-container{
        width: 80%;
        justify-content: center;
    }
    .login-form{
        width: 80%;
    }
    .image-container{
        display: none;
        background-color:white;
    }
}
</style>
</head>
<body>
<form action="password_tutor" method="post" autocomplete="off">


<div class="login-page-background">
      <div class="login-page-container">
        <div class="login-form">
          <h1>Forgot Password</h1>
          <div class= "input-field invalid-field" >
            <label for='email' class="label"></label>
            <input id="email" class="input" placeholder="Email" name="email" />
          </div>

        

          <input type="submit" class="register-btn" value="Check Password" id="btn">
          
</div>

	 <div class="image-container">
          <img src="Assets/imgs/login_image-transformed.png" alt="login" />
        </div>
</div>
</div>

</form>
</body>
</html>