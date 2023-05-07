<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <style>
    @charset "ISO-8859-1";
@import url('https://fonts.googleapis.com/css2?family=Castoro+Titling&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: '', cursive;
}

.row{
    --bs-gutter-x:0rem;
}

section{
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background:url(../Assets/imgs/background2.jpg);
    background-repeat: no-repeat;
    background-position: center center;
    background-size: cover;
    animation: ani1 10s infinite linear;

}
@keyframes ani1 {
    100%{
        filter: hue-rotate(360deg);
    }
}

.box_container{
    /* background: #ccc; */
    padding: 10px 15px;
    border: 2px solid rgba(136, 134, 134, 0.396);
    border-radius: 5px;
    background: transparent;
    backdrop-filter: blur(5px);
    color: #fff;


}
.box_container form{
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;

}
.box_container form .title{
    color: rgb(253, 253, 253);
    display: flex;
    align-items: center;
    justify-content: center;
}
.box_container form .input_box{
    margin: 15px 0;
    position: relative;
}

.box_container form .input_box .input{
    border: none;
    outline: none;
    background: transparent;
    padding: 10px 15px;
    box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
}
.box_container form .input_box .label{
    position: absolute;
    left: 10px ;
    top: 13px;
    pointer-events: none;
    transition: all 0.3s linear;

}
.box_container form .input_box .icon{
    position: absolute;
    font-size: 28px;
    right: -10px;
    top: 10%;
    transform: translateX(-58%);
    transition: all 0.3s linear;

}

.input_box .input:focus ~ .label,
.input_box .input:valid ~ .label{
    top: -16px;
    left: 1px;
    color: rgb(12, 179, 179);
}

.input_box .input:focus ~ .icon,
.input_box .input:valid ~ .icon{
    color: rgb(12, 179, 179);
}

.input_box .input:focus{
    color: rgb(12, 179, 179);
}

.remember{
    margin: 10px 0;
    padding: 5px ;
    display: flex;
    flex-direction: row;
    gap: 15px;
    font-size: 14px;
}

.remember .checkbox{
    --background: #fff;
    --border: #D1D6EF;
    --border-hover: #BBC1E1;
    --border-active: #1E2235;
    --tick: #FFF;
    display: flex;
    position: relative;
    justify-content: center;
    align-items: center;
    gap: 10px;
}
.remember .checkbox input,
.remember .checkbox svg{
    width: 18px ;
    height:18px;
    display: block;
 
}
.remember .checkbox input{
    -webkit-appearance: none;
    -moz-appearance: none;
    position: relative;
    outline: none;
    background: var(---background);
    border: none;
    margin: 0;
    padding: 0;
    cursor: pointer;
    border-radius: 4px;
    transition: box-shadow 0.3s;
    box-shadow: inset 0 0 0 var(--s,1px) var(--b,var(--border));

}
.remember .checkbox input:hover{
    --s:2px;
    --b: var(--border-hover)
}
.remember .checkbox input:checked{
    --b:var(--border-active)
}
svg{
    pointer-events: none;
    fill: none;
    stroke-width: 2px;
    stroke-linecap: round;
    stroke: var(--stroke,var(--border-active));
    position: absolute;
    top: 0;
    left: 0;
    width: 17px;
    height: 17px;
    transform: scale(var(--scale,1)) translateZ(0);

}

.path input:checked{
    --s:3px;
    transition-delay: 0.4s;

}

.path input:checked + svg{
    --a:16.1 86.12;
    --o:102.22;
}

.path svg{
    stroke-dasharray: var(--a,86.12);
    stroke-dashoffset: var(--o,86.12);
    transition: stroke-dashoffset 0.6s, stroke-dasharray 0.6s;

}


.remember a{
    text-decoration: none;
    color: rgb(77,148, 255);
    font-size: 13px;
    margin-left: 15px;
}
button{
    outline: none;
    border: none;
    padding: 14px 15px 10px 15px;
    width: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 5px;
    margin: 10px 0;
    transition: background 2s linear;
    position: relative;
}
button::before{
    position: absolute;
    content: '';
    width: 100%;
    height: 100%;
    z-index: 800;
    opacity: 0;
    display: flex;
    justify-content: center;
    align-items: center;
}
button:hover::before{
    animation:  ani2 infinite 2s cubic-bezier(0.79,0.33,0.14,0.53);
}
@keyframes ani2 {
    100%{
        opacity: 1;
        content: 'Login';
    }
    50%{
        box-shadow: 0 -1px 15px 1px rgb(25, 167, 160);
    }

    0%{
        z-index: 0;
        content: 'Login';
        background: rgb(49, 225, 231);
        box-shadow: 1px 1px 25px 2px rgb(1, 161, 153);
    }
}

button:hover{
    box-shadow: 0 -1px 10px 1px rgb(25, 167, 160);
}

.register_link{
    font-size: 14px;
    padding: 10px 15px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 15px;

}

.register_link a{
    text-decoration: none;
    margin-left: 10px;
    color: rgb(77,148, 255);
}
    </style>
    <link rel="icon" type="image/x-icon" href="Assets/imgs/Screenshot_(160)-transformed (1)-fotor-bg-remover-20230423203452.png" >
    <title>Login Tutor</title>
</head>
<body>
   <section>
    <div class="box_container row">
        <form action="loginvalidtutor" method="post" autocomplete="off">
            <c:if test="${not empty error}">
                <script>
                   alert("${error}");
                </script>
             </c:if>
            <h2 class="title col-12">
                Login
            </h2>
            <div class="input_box col-12">
                <input type="text" class="input" name="email" required>
                <label  class="label">Email</label>
                <div class="icon">
                    <i class='bx bx-envelope'></i>
                </div>
            </div>
            <div class="input_box col-12">
                <input type="text" class="input" name="pass" required>
                <label  class="label">Password</label>
                <div class="icon">
                    <i class='bx bx-key' ></i>
                </div>
            </div>
            <div class="remember col-12">
                <label class="checkbox path">
                    <input type="checkbox">
                            Remember
            
                    <svg viewBox="0 0 21 21">
                        <path d="M5,10.75 L8.5,14.25 L19.4,2.3 C18.8333333,1.43333333 18.0333333,1 17,1 L4,1 C2.35,1 1,2.35 1,4 L1,17 C1,18.65 2.35,20 4,20 L17,20 C18.65,20 20,18.65 20,17 L20,7.99769186"></path>

                    </svg>
                </label>
                <a href="forgotpasswordtutor">
                    Forget Password ?
                </a>
            </div>
            <button type="submit" class="col-8">Login</button>
            <div class="register_link col-12">
                <p>
                    Dont have an account ?
                    <a href="/reg_tutor">Register</a>
                </p>
            </div>
        </form>
    </div>
     
</section>
   
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>

</body>
</html>