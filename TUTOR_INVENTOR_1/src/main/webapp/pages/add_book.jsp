<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>

<style>

.signup-page-background{
    background-color: aliceblue;
    height: 100vh;
    display: flex;
    align-items: center;
}
.signup-page-container{
    width: 60%;
    margin: 3rem auto 5rem auto;
    display: flex;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 10px 10px 25px #d9d7d7;
}
.signup-form{
    width: 60%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}
.signup-form h1{
    margin-bottom: 1rem;
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

.invalid-field svg{
    fill: red;
}
.error-message{
    color: red;
    margin: 0 auto;
    text-align: center;
    padding: 4px 10px;
    margin-bottom: 1rem;
    background-color: #f7c5b2;
    border-radius: 5px;
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
}

@media screen and (max-width: 900px){
    .signup-page-container{
        width: 80%;
        justify-content: center;
    }
    .signup-form{
        width: 80%;
    }
    .image-container{
        display: none;
    }
}

</style>
</head>
<body>
<form action="book_upload" method="post"  enctype="multipart/form-data">
<div class="signup-page-background">
      <div class="signup-page-container">
        <div class="signup-form">
          <h1>Add Book</h1>
          <div class="input-field">
            <label For='userName' class="label"></label>
            <input class="input" id="userName" placeholder="Enter Book Name" name="bname"  />
          </div>
          
          <div class="input-field">
            <label For='aName' class="label"></label>
            <input class="input" id="userName" placeholder="Enter Author Name" name="aname"  />
          </div>
          
           <div class="input-field">
            <label For='desc' class="label"></label>
            <input class="input" id="userName" placeholder="Enter Book Description" name="bdesc"  />
          </div>
          <div class="input-field">
            <label For='desc' class="label"></label>
            <input type="file" class="input" id="userName" name="file"  />
          </div>
           
            
         
             
        
          <input type="submit" class="register-btn"  value="Add Book"  onclick="show_alert();" />

         
          
           

        </div>
        <div class="image-container">
          <img src="Assets/imgs/registration-transformed.png" alt="add-book" />
        </div>
      </div>
    </div>

</form>

</body>
<script>

function show_alert() {
	  alert("Your Book is Added!  please click ok");
	}
</script>
</html>