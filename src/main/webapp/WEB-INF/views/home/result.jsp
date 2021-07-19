<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="description" content="Mobile Application HTML5 Template">

  <meta name="copyright" content="MACode ID, https://www.macodeid.com/">

  <title>Mobster - One page app template</title>

  <link rel="shortcut icon" href="http://localhost:8080/MultiChoose_02/assets/favicon.png" type="image/x-icon">

  <link rel="stylesheet" href="http://localhost:8080/MultiChoose_02/assets/css/maicons.css">

  <link rel="stylesheet" href="http://localhost:8080/MultiChoose_02/assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="http://localhost:8080/MultiChoose_02/assets/vendor/owl-carousel/css/owl.carousel.min.css">

  <link rel="stylesheet" href="http://localhost:8080/MultiChoose_02/assets/css/bootstrap.css">

  <link rel="stylesheet" href="http://localhost:8080/MultiChoose_02/assets/css/mobster.css">
  <link href="https://cdn.jotfor.ms/static/formCss.css?3.3.25762" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.25762" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.25762" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.25762" />
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style type="text/css">
    .form-label-left{
        width:150px;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:150px;
    }
    body, html{
        margin:0;
        padding:0;
        background:false;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:690px;
        color:#555 !important;
        font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: #555;
    }

</style>

</head>
<body>
<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-floating">
  <div class="container">
    <a class="navbar-brand" href="index">
      <img src="http://localhost:8080/MultiChoose_02/assets/favicon-light.png" alt="" width="40">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  
    <div class="collapse navbar-collapse" id="navbarToggler">
      <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
       <li class="nav-item ">
          <a class="nav-link" href="http://localhost:8080/MultiChoose_02/home/index">Home</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/MultiChoose_02/home/favorite">Favorite List</a>
        </li>
       <li class="nav-item" id="pageAdmin" style="display: none">
          <a class="nav-link" href="http://localhost:8080/MultiChoose_02/home/question">Admin</a>
        </li>
      </ul>
      <div class="ml-auto my-2 my-lg-0" id="tagLogin">
       
      </div>
    </div>
  </div>
</nav>

<main class="bg-light">

<div class="page-hero-section bg-image hero-mini" style="background-image: url(http://localhost:8080/MultiChoose_02/assets/img/hero_mini.svg);">
  <div class="hero-caption">
    <div class="container fg-white h-100">
      <div class="row justify-content-center align-items-center text-center h-100">
        <div class="col-lg-6">
          <h3 class="mb-4 fw-medium">English Test</h3>       
        </div>
      </div>
    </div>
  </div>
</div>

 <div class="page-section">
    <div class="container">
        <div class="card-page" >
				<div role="main" class="form-all" id="fload">    
  				</div> 
  				<div style="text-align:center" data-align="center" class="form-buttons-wrapper form-buttons-center   jsTest-button-wrapperField">
          <a href="http://localhost:8080/MultiChoose_02/home/testlist"> <button id="btnSend" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Back
            </button></a>       
          </div>
			</div>
      </div>
    </div>

</main> <!-- .bg-light -->


<div class="page-footer-section bg-dark fg-white">
  <div class="container">
    <div class="row mb-5 py-3">
      <div class="col-sm-6 col-lg-2 py-3">
        <h5 class="mb-3">Pages</h5>
        <ul class="menu-link">
          <li><a href="#" class="">Features</a></li>
          <li><a href="#" class="">Customers</a></li>
          <li><a href="#" class="">Pricing</a></li>
          <li><a href="#" class="">GDPR</a></li>
        </ul>
      </div>
      <div class="col-sm-6 col-lg-2 py-3">
        <h5 class="mb-3">Company</h5>
        <ul class="menu-link">
          <li><a href="#" class="">About</a></li>
          <li><a href="#" class="">Team</a></li>
          <li><a href="#" class="">Leadership</a></li>
          <li><a href="#" class="">Careers</a></li>
          <li><a href="#" class="">HIRING!</a></li>
        </ul>
      </div>
      <div class="col-md-6 col-lg-4 py-3">
        <h5 class="mb-3">Contact</h5>
        <ul class="menu-link">
          <li><a href="#" class="">Contact Us</a></li>
          <li><a href="#" class="">Office Location</a></li>
          <li><a href="#" class="">hello@mobster.com</a></li>
          <li><a href="#" class="">support@macodeid.com</a></li>
          <li><a href="#" class="">+808 11233 900</a></li>
        </ul>
      </div>
      <div class="col-md-6 col-lg-4 py-3">
        <h5 class="mb-3">Subscribe</h5>
        <p>Get some offers, news, or update features of application</p>
        <form method="POST">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Your email..">
            <div class="input-group-append">
              <button type="submit" class="btn btn-primary"><span class="mai-send"></span></button>
            </div>
          </div>
        </form>

        <!-- Social Media Button -->
        <div class="mt-4">
          <a href="#" class="btn btn-fab btn-primary fg-white"><span class="mai-logo-facebook"></span></a>
          <a href="#" class="btn btn-fab btn-primary fg-white"><span class="mai-logo-twitter"></span></a>
          <a href="#" class="btn btn-fab btn-primary fg-white"><span class="mai-logo-instagram"></span></a>
          <a href="#" class="btn btn-fab btn-primary fg-white"><span class="mai-logo-google"></span></a>
        </div>
      </div>
    </div>
  </div>

  <hr>

  <div class="container">
    <div class="row">
      <div class="col-12 col-md-6 py-2">
        <img src="http://localhost:8080/MultiChoose_02/assets/favicon-light.png" alt="" width="40">
        <!-- Please don't remove or modify the credits below -->
        <p class="d-inline-block ml-2">Copyright &copy; <a href="https://www.macodeid.com/" class="fg-white fw-medium">MACode ID</a>. All rights reserved</p>
      </div>
      <div class="col-12 col-md-6 py-2">
        <ul class="nav justify-content-end">
          <li class="nav-item"><a href="#" class="nav-link">Terms of Use</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Privacy Policy</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Cookie Policy</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<script src="http://localhost:8080/MultiChoose_02/assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="http://localhost:8080/MultiChoose_02/assets/vendor/wow/wow.min.js"></script>

<script src="http://localhost:8080/MultiChoose_02/assets/js/mobster.js"></script>
<script>
var page = document.getElementById('pageAdmin');
var url = window.location.href ;
var id = url.substring(url.lastIndexOf('=') + 1);
$(document).ready(function() {
	if (sessionStorage.getItem('username') == null){
		$('#tagLogin').append(' <button class="btn btn-dark rounded-pill" id ="btnlogin"><a class="nav-link" href="http://localhost:8080/MultiChoose_02/home/login">Login</a></button>');
	} else if (sessionStorage.getItem('username') !=null){		
        $('#tagLogin').append(' <div class="nav-item dropdown active"><a class="nav-link dropdown-toggle"  style="color: white" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hello, '+ sessionStorage.getItem('username')+'</a><div class="dropdown-menu" aria-labelledby="navbarDropdown"><a class="dropdown-item" href="http://localhost:8080/MultiChoose_02/home/profile">Profile</a><a class="dropdown-item" href="http://localhost:8080/MultiChoose_02/home/login">Log Out</a></div></div>');	
	};
	if(sessionStorage.getItem('role')=='true'){			
		page.setAttribute("style","display:inline");
	};
	$('#fload').append('<ul class="form-section page-section" ><li id="cid_7" class="form-input-wide" data-type="control_head"><div class="form-header-group  header-default"><div class="header-text httal htvam"><h2 id="header_7" class="form-header" data-component="header">Congratulations!</h2><div id="subHeader_7" class="form-subHeader">Your Result is '+id+'</div></div></div></li></ul>')
});
</script>
</body>
</html>