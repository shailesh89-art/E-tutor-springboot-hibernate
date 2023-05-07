<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parent requests</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>

h1{
	margin:100px;
	
}

 body {
    background-color:  aliceblue;
  }
.form-center {
  
  width:100%;
  height:10em;
}
.form-center form {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%)
  
 }
  
 
 input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  border:1px solid;
}



/* On screens that are 992px or less, set the background color to blue */
@media screen and (max-width: 992px) {
 
  input[type=text]{
	 width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  border:1px solid;
  }
  
.form-center form {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
}

}
}

</style>
</head>
<body>

<div class="form-center">

<form action="see" method="post"><br><br><br>
<h1>See Who is Request Send You</h1><br>
<input type="hidden" name="id"  value="${tutor.id}"><br>
<input type="text"  value="${tutor.fname} ${tutor.lname}"><br>

<button type="submit" class="btn btn-success text-center">Check</button>
</form>
</div>
</body>
</html>