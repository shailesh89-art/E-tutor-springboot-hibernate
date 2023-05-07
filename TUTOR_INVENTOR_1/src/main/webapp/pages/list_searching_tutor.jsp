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
      <title>Tutor Search List</title>
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
        
      
    
    
    /* for table csss*/
    table { 
  width: 100%; 
  border-collapse: collapse; 
	}
	tr:nth-of-type(odd) { 
  background: #eee; 
}
th { 
  background: #333; 
  color: white; 
  font-weight: bold; 
}
#tb{

	background:white;
}
td, th { 
width:5%;
  padding: 2px; 
  border: 1px solid #ccc; 
  text-align: center; 
}
@media screen and (max-width: 600px) {
 table { 
  width: 100%; 
  border-collapse: collapse; 
	}
	tr:nth-of-type(odd) { 
  background: #eee; 
}
th { 
  background: #333; 
  color: white; 
  font-weight: bold; 
}
#tb{

	background:white;
}
td, th { 
width:5%;
  padding: 2px; 
  border: 1px solid #ccc; 
  text-align: center; 
}
}







#logo{
        width: 5%;
      }
      @media only screen and (max-width:767px){
    
   
     #logo{
        width: 19%;
      }
     
}




/* general styling */

	
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
                  <a class="dropdown-item" href="ebook_list">Ebook</a>
                  <a class="dropdown-item" href="contact_form">Contact us</a>
                  <a class="dropdown-item" href="/parentlogout">Log Out</a>
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
   <div id="tb">
<table>
<tr>

<th style="column-width: 120px;">Teacher Name</th>
<th>Contact</th>
<th>State</th>
<th>City</th>
<th></th>
</tr>
<c:forEach  items="${list_searching_tutor}" var="e">
<tr>
  
<td>${e.fname} ${e.lname}</td>
<td>${e.contact}</td>
<td>${e.state}</td>
<td>${e.city}</td>
<td>
<a href="send_tutorrequest?id=${e.id}" class="btn btn-primary btn-mid"> Send Request</a></td>


 
 
</tr>
</c:forEach>
</table>
</div>
 
</body>

</html>