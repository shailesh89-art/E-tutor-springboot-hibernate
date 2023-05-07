<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/x-icon" href="Assets/imgs/Screenshot_(160)-transformed (1)-fotor-bg-remover-20230423203452.png" >
      <title>Tutor Admin</title>
    <style>

  
  
    
     .banner {
            
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            width: 100%;
            height: 100%;
              background-color: #00838F;
        }
        
        .banner .opacity_overlay {
            height: 100%;
            width: 100%;
            background: rgba(0, 0, 0, 0.55);
            padding-top: 100px;
        }
        
        .banner .opacity_overlay .info {
            text-align: center;
            font-family: 'Montserrat', sans-serif;
        }
        
        .banner .opacity_overlay .info h2 {
            color: #fff;
            text-transform: uppercase;
            font-size: 36px;
        }
        
        .banner .opacity_overlay .info hr {
            width: 100px;
            margin-top: 30px;
            margin-bottom: 30px;
        }
        
        .banner .opacity_overlay .info h3 {
            color: #fff;
            text-transform: uppercase;
            font-size: 16px;
            letter-spacing: 1px;
        }
        
        .banner .opacity_overlay .secondary_layer {
            background: #191919;
            margin-top: 100px;
            padding-top: 15px;
            padding-bottom: 15px;
            font-family: "Open Sans", Arial, sans-serif;
        }
        
        .banner .opacity_overlay .secondary_layer .msg {
            font-size: 18px;
            color: #fff;
            font-weight: 300;
            letter-spacing: 1px;
        }
        
        .banner .opacity_overlay .secondary_layer .msg span {
            font-family: "Shadows Into Light", cursive;
            font-size: 22px;
        }
        
        .banner .opacity_overlay .secondary_layer .quote {
            font-size: 13px;
            color: #999;
            font-weight: 300;
            letter-spacing: 1px;
        }
        
        .banner .opacity_overlay .secondary_layer .btn {
            text-decoration: none;
            color: #000;
        }
        
        .banner .opacity_overlay .secondary_layer .btn button {
            background: #F5F5F5;
            border: none;
            border-radius: 6px;
            padding: 8px 15px;
            text-transform: uppercase;
            font-weight: 600;
            font-size: 14px;
            outline: none;
            transition: background-color 0.2s ease;
        }
        
        .banner .opacity_overlay .secondary_layer .btn button:hover {
            background: #000;
            color: #fff;
        }
        
        /* Font size change on browser resize */
        
        @media screen and (max-width: 991px) {
        .banner .opacity_overlay .info h2 {
            font-size: 30px;
        }
        }
        
        @media screen and (max-width: 768px) {
        .banner .opacity_overlay .info h2 {
            font-size: 26px;
        }
        }
        
        @media screen and (max-width: 631px) {
        .banner .opacity_overlay .info h2 {
            font-size: 22px;
        }
        }
        
        @media screen and (max-width: 534px) {
        .banner .opacity_overlay .info h2 {
            font-size: 20px;
        }
        }
        
        @media screen and (max-width: 991px) {
        .banner .opacity_overlay .info h3 {
            font-size: 12px;
        }
        }
        
        @media screen and (max-width: 534px) {
        .banner .opacity_overlay .info h3 {
            font-size: 10px;
        }
        }
        
        @media screen and (max-width: 768px) {
        .banner .opacity_overlay .secondary_layer .msg {
            font-size: 16px;
        }
        }
        
        @media screen and (max-width: 534px) {
        .banner .opacity_overlay .secondary_layer .msg {
            font-size: 13px;
        }
        }
        
        @media screen and (max-width: 768px) {
        .banner .opacity_overlay .secondary_layer .msg span {
            font-size: 18px;
        }
        }
        
        @media screen and (max-width: 534px) {
        .banner .opacity_overlay .secondary_layer .msg span {
            font-size: 16px;
        }
        }
        /*search button*/

      
        
        
        .advanced{
        
            text-decoration: none;
            font-size: 15px;
            font-weight: 500;
        }
        
        
        .btn-secondary,
        .btn-secondary:focus,
        .btn-secondary:active
        
        
         {
            color: #fff;
            background-color: #00838f !important;
            border-color: #00838f !important;
            box-shadow: none;
        }
        
        
        .advanced{
        
            color: #00838f !important;
        }
        
      
    
    
 #tab{
   	background-color:#00838F;
   }

 .demo{ font-family: 'Noto Sans', sans-serif; }
.panel{
    background: #00838F;
    padding: 0;
    border-radius: 1px;
    border: none;
    box-shadow: 0 0 0 5px rgba(0,0,0,0.05),0 0 0 10px rgba(0,0,0,0.05);
}
.panel .panel-heading{
    padding: 20px 15px;
    border-radius: 10px 10px 0 0;
    margin: 0;
}
.panel .panel-heading .title{
    color: #fff;
    font-size: 28px;
    font-weight: 500;
    text-transform: capitalize;
    line-height: 40px;
    margin: 0;
}
.panel .panel-heading .btn{
    color: rgba(255,255,255,0.5);
    background: transparent;
    font-size: 16px;
    text-transform: capitalize;
    border: 2px solid #fff;
    border-radius: 50px;
    transition: all 0.3s ease 0s;
}
.panel .panel-heading .btn:hover{
    color: #fff;
    text-shadow: 3px 3px rgba(255,255,255,0.2);
}
.panel .panel-heading .form-control{
    color: #fff;
    background-color: transparent;
    width: 35%;
    height: 40px;
    border: 2px solid #fff;
    border-radius: 20px;
    display: inline-block;
    transition: all 0.3s ease 0s;
}
.panel .panel-heading .form-control:focus{
    background-color: rgba(255,255,255,0.2);
    box-shadow: none;
    outline: none;
}
.panel .panel-heading .form-control::placeholder{
    color: rgba(255,255,255,0.5);
    font-size: 15px;
    font-weight: 500;
}
.panel .panel-body{ padding: 0; }
.panel .panel-body .table thead tr th{
    color: #fff;
    background-color: rgba(255, 255, 255, 0.2);
    font-size: 16px;
    font-weight: 500;
    text-transform: uppercase;
    padding: 12px;
    border: none;
}
.panel .panel-body .table tbody tr td{
    color: #fff;
    font-size: 15px;
    padding: 10px 12px;
    vertical-align: middle;
    border: none;
}
.panel .panel-body .table tbody tr:nth-child(even){ background-color: rgba(255,255,255,0.05); }
.panel .panel-body .table tbody .action-list{
    padding: 0;
    margin: 0;
    list-style: none;
}
.panel .panel-body .table tbody .action-list li{
    display: inline-block;
    margin: 0 5px;
}
.panel .panel-body .table tbody .action-list li a{
    color: #fff;
    font-size: 15px;
    position: relative;
    z-index: 1;
    transition: all 0.3s ease 0s;
}
.panel .panel-body .table tbody .action-list li a:hover{ text-shadow: 3px 3px 0 rgba(255,255,255,0.3); }
.panel .panel-body .table tbody .action-list li a:before,
.panel .panel-body .table tbody .action-list li a:after{
    content: attr(data-tip);
    color: #fff;
    background-color: #111;
    font-size: 12px;
    padding: 5px 7px;
    border-radius: 4px;
    text-transform: capitalize;
    display: none;
    transform: translateX(-50%);
    position: absolute;
    left: 50%;
    top: -32px;
    transition: all 0.3s ease 0s;
}
.panel .panel-body .table tbody .action-list li a:after{
    content: '';
    height: 15px;
    width: 15px;
    padding: 0;
    border-radius: 0;
    transform: translateX(-50%) rotate(45deg);
    top: -18px;
    z-index: -1;
}
.panel .panel-body .table tbody .action-list li a:hover:before,
.panel .panel-body .table tbody .action-list li a:hover:after{
    display: block;
}
.panel .panel-footer{
    color: #fff;
    background-color: transparent;
    padding: 15px;
    border: none;
}
.panel .panel-footer .col{ line-height: 35px; }
.pagination{ margin: 0; }
.pagination li a{
    color: #fff;
    background-color: transparent;
    border: 2px solid transparent;
    font-size: 18px;
    font-weight: 500;
    text-align: center;
    line-height: 31px;
    width: 35px;
    height: 35px;
    padding: 0;
    margin: 0 3px;
    border-radius: 50px;
    transition: all 0.3s ease 0s;
}
.pagination li a:hover{
    color: #fff;
    background-color: transparent;
    border-color: rgba(255,255,255,0.2);
}
.pagination li a:focus,
.pagination li.active a,
.pagination li.active a:hover{
    color: #fff;
    background-color: transparent;
    border-color: #fff;
}
.pagination li:first-child a,
.pagination li:last-child a{
    border-radius: 50%;
}
.container{

 
    padding-left:350px;
    
}
 #logo{
        width: 4%;
      }
@media only screen and (max-width:767px){
    .panel .panel-heading .title{
        text-align: center;
        margin: 0 0 10px;
    }
    .panel .panel-heading .btn_group{ text-align: center; }
    .container{

        padding: 45px;
    }
     #logo{
        width: 19%;
      }
      #tab{
   	background-color:#00838F;
   }
}






	
	
   } 
    </style>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
         <img  id="logo" src="Assets/imgs/Screenshot_(160)-transformed (1)-fotor-bg-remover-20230423203452.png" alt="">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarColor03">
            <ul class="navbar-nav me-auto">
    
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Select</a>
                <div class="dropdown-menu">
                 

                  <a class="dropdown-item" href="/admin_logout">Log Out</a>
                  </div>
              </li>
              
            </ul>
          </div>
        </div>
      </nav>
      <div class="banner">
    	<div class="opacity_overlay">
    		<div class="info">
    			<h2>A satisfied Student and Teacher is the best business</h2>
    			<h2>strategy of all</h2>
    			<hr>
    			<h3>We believe everyone deserves</h3>
    			<h3>The best tutor service</h3>
    		</div>
    		
    		<div class="secondary_layer">
    			<div class="container">
    				<div class="col-md-8 col-sm-6">
    					<p class="msg">The easiest and quickest way to start your <span>Learning</span></p>
    					<p class="quote">Start now</p>
    				</div>
    				<div class="col-md-4 col-sm-6 pull-right">
    					<a href="#" class="btn" ><button type="submit">Get Started</button></a>
    					
    				</div>
    			</div>
    		</div>
    		
    	</div>
    </div>
   <div class="container" id="tab">
   
    <div class="row">
        <div class="col-md-offset-1 col-md-10">
            <div class="panel">
                
                <div class="panel-body table-responsive">
                
<table class="table">
<tr>
<th>Name</th>
<th>Last Name</th>
<th>Contact</th>
<th>Email</th>
<th>State</th>
<th>City</th>
<th>Self info</th>
<th>Experience</th>
</tr>
<c:forEach  items="${tutor}" var="e">
<tr>
  
<td>${e.fname}</td>
<td>${e.lname}</td>
<td>${e.contact}</td>
<td>${e.email}</td>
<td>${e.state}</td>
<td>${e.city}</td>
<td>${e.info_self}</td>
<td>${e.exp}</td>
<td>
 
  <a href="edit_tutor?id=${e.id}"><i class='fa fa-edit' style="color:blue"></i></a> |
          <a href="delete_tutorfirst?id=${e.id}"><i class="fa fa-trash" style="color:blue"></i></a>
        </td>
</tr>
</c:forEach>
</table>
</div>
</div>
</div>
</div>
</div>
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>