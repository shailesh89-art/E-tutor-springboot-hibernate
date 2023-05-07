<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="Assets/imgs/Screenshot_(160)-transformed (1)-fotor-bg-remover-20230423203452.png" >
    <title>Parent Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>

        .banner {
            height:100vh;
            position:relative;
            width:100%;
            overflow: hidden;
        }
        .banner video {
            width: 100%;
            position: absolute;
                overflow: hidden;
        }
        .banner-innner {
            padding: 200px 0;
        }
        
        header{
            position:absolute;
            width:100%;
            top:0;
            z-index:11;
        }
        .banner-left {
            text-align: center;
            width: 65%;
            margin: 0 auto;
        }
        
        .overlay {
            background: #3f51b569;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
        }
        
        .banner-left h1 {
            color: #fff;
            text-transform: uppercase;
            font-size: 42px;
            font-weight: 800;
            line-height: 50px;
            text-shadow: 1px 2px #000;
            margin-bottom:15px;
        }
        
        .banner-left p {
            color: #fff;
            letter-spacing: 0.5px;
            line-height: 28px;
            margin-bottom:30px;
        }
        
        .custom-btn {
            width: 100%;
            background: #E91E63;
            color: #fff;
            letter-spacing: 2.5px;
            transition:0.8 ease;
        }
        
        .banner-left a {
            background: #e91e63;
            color: #fff;
            text-decoration: none;
            text-transform: uppercase;
            letter-spacing: 2.5px;
            padding: 8px 35px;
            border-radius: 4px;
            transition:0.8 ease;
        }
        
        .banner-left a:hover{
            letter-spacing:3px;
            transition:0.8 ease;
        }
        
        .custom-btn:hover{
            letter-spacing:3px;
            transition:0.8 ease;
        }
        
        .navbar-light .navbar-brand {
            color: rgba(255, 255, 255, 0.9);
            font-weight: 700;
            font-size: 30px;
            text-transform: uppercase;
            text-shadow: 1px 2px #000;
        }
        
        .navbar-light .navbar-nav .nav-link {
            color: #fff;
            font-weight: 500;
            font-size: 18px;
            padding-left: 1.5rem;
            padding-right: 1.5rem;
        }
        
        .navbar-light .navbar-nav .active>.nav-link, .navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show>.nav-link {
            color: #fff;
        }
        .navbar-light .navbar-nav .active>.nav-link, .navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show>.nav-link:hover {
            color: #e91e63;
        }
        .navbar-light .navbar-brand:focus, .navbar-light .navbar-brand:hover {
            color: #fff;
        }
        .navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
            color: #e91e63;
        }
        
        .dropdown-menu {
            padding: 0px;
        }
        span.navbar-toggler-icon {
            background-image: url(https://i.ibb.co/1v9M0dZ/menu.png) !important;
            width: 25px;
            height: 25px;
            cursor:pointer;
        }
        button.navbar-toggler:focus {
            outline: none;
        }
        
        a.dropdown-item {
            padding: 10px;
            background: #515156;
            color: #fff;
        }
        #logo{
          width: 4%;
        }
        
        
        @media only screen and (max-width: 800px ){
            .banner-left h1 {
            color: #fff;
            text-transform: uppercase;
            font-size: 30px;
            font-weight: 800;
            line-height: 35px;
            text-shadow: 1px 2px #000;
        }
        .video-container {
          position: relative;
          width: 100%;
          height: 0;
          padding-bottom: 56.25%;
      }
      #logo{
        width: 19%;
      }
      
      .tagline-video {
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          object-fit: cover;
      }
      
        .banner{
            padding:120px 0;
            height: auto;
        }
        
        .nav-color{
            background:#000;
        }
        .navbar-light .navbar-nav .nav-link{
            padding-left:0;
        }
        .banner-innner {
            padding: 120px 0;
        }
        }

        .social-link {
          width: 30px;
          height: 30px;
          border: 1px solid #ddd;
          display: flex;
          align-items: center;
          justify-content: center;
          color: #666;
          border-radius: 50%;
          transition: all 0.3s;
          font-size: 0.9rem;
        }
        
        .social-link:hover,
        .social-link:focus {
          background: #ddd;
          text-decoration: none;
          color: #555;
        }
    </style>
</head>
<body>
    
    
<!------ Include the above in your HEAD tag ---------->

<header> <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
    <img  id="logo" src="Assets/imgs/Screenshot_(160)-transformed (1)-fotor-bg-remover-20230423203452.png" alt="">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ebook_list">E-Book</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact_form">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/parentlogout">Log Out</a>
        </li>
      
      
       
      </ul>
      <% String email=(String)session.getAttribute("email"); %> 
      
   <a href="edit_profile?email=<%=email%>" ><i class="fa fa-user-circle-o" style="font-size:24px"></i></a>

     

    </div>
  </nav>
    </header> 
	 
	<div class="banner">
	   <video autoplay muted loop class="tagline-video embed-responsive embed-responsive-16by9">
      <source src="Assets/imgs/course-video.mp4" type="video/mp4">
    </video> <div class="overlay"></div>
      <div class="banner-innner">
	    <div class="container">
		  <div class="row">
		  
		    <div class="col-md-12">
			  <div class="banner-left">
			    <h1> A satisfied Student and Teacher is the best business strategy of all </h1>
				<p>We believe everyone deserves</p>
				<a href="contact_form"> Contact </a>
			  </div>
			</div>

		  </div>
		</div>
	  </div>
    </div>	
<!-- banner closed with header -->
<form action="search_valid" method="post">
  <div class="container mt-5">

      <div class="row d-flex justify-content-center">

          <div class="col-md-10">

              <div class="card p-3  py-4">

                  <h5>An Easier way to find your Tutor</h5>

                  <div class="row g-3 mt-2">

                      <div class="col-md-3">

                         </div>

                      <div class="col-md-6">

                          <input type="text" class="form-control" name="city" placeholder="Enter  city " style="border-color:black;"><br><br>
                          <input type="text" class="form-control" name="state" placeholder="Enter state"  style="border-color:black;"><br><br>
                          
                          
                      </div>

                      <div class="col-md-3">

                          <button type="submit" class="btn btn-secondary btn-block" id="ser">Search Results</button>
                          
                      </div>
                      
                  </div>
                   </div>
              
          </div>
          
      </div>

   </div>
  </form>

  
  
  <div class="bg-white py-5">
    <div class="container py-5">
      <div class="row align-items-center mb-5">
        <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
          <h2 class="font-weight-light" id="ab"><strong>About Us</strong></h2>
          <p class="font-italic text-muted mb-4"> This system will help to 
find tuition teachers from nearby locations. Teachers 
can also get student just by logging into the website and 
setting up the profile</p><a href="#" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
        </div>
        <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img src="https://bootstrapious.com/i/snippets/sn-about/img-1.jpg" alt="" class="img-fluid mb-4 mb-lg-0"></div>
      </div>
     
    </div>
  </div>
  
  
  <div class="blockcode">
   
  
    <footer class="page-footer shadow">
      <div class="d-flex flex-column mx-auto py-5" style="width: 80%">
        <div class="d-flex flex-wrap justify-content-between">
          <div>
            <a href="/" class="d-flex align-items-center p-0 text-dark">
              <img alt="logo" src="Assets/imgs/Screenshot_(160)-transformed (1)-fotor-bg-remover-20230423203452.png" width="30px" />
              <span class="ms-3 h5 font-weight-bold">E-Tutor</span>
            </a>
            <p class="my-3" style="width: 250px">
              We are creating High E-Tutor education for the country
            </p>
            <span class="mt-4">
              <button class="btn btn-dark btn-flat p-2">
                <a href="https://www.linkedin.com/in/shailesh-palavakar-331085223"><i class="fa fa-linkedin-square"></i></a>
              </button>
              <button class="btn btn-dark btn-flat p-2">
                <a href="https://github.com/shailesh89-art"><i class="fa fa-github" ></i></a>
              </button>
              <button class="btn btn-dark btn-flat p-2">
                <a href="https://instagram.com/shailesh_26__?igshid=ZmVmZTY5ZGE="><i class="fa fa-instagram"></i></a>
               
              </button>
            </span>
          </div>
          <div>
            <p class="h5 mb-4" style="font-weight: 600">Help</p>
            <ul class="p-0" style="list-style: none; cursor: pointer">
             
              <li class="my-2">
                <a class="text-dark" href="#ab">About Us</a>
              </li>
              <li class="my-2">
                <a class="text-dark" href="contact_form">Contact</a>
              </li>
             
            </ul>
          </div>
         
            
        </div>
        <small class="text-center mt-5">&copy; E-Tutor, 2023. All rights reserved.</small>
      </div>
    </footer>
  </div>
      
</body>
</html>