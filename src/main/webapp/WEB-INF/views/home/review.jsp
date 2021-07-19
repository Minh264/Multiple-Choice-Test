<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="description" content="Mobile Application HTML5 Template">

  <meta name="copyright" content="MACode ID, https://www.macodeid.com/">
  <meta name='viewport' content='width=device-width, initial-scale=1'>

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
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
	.like .fa-heart{
  		color: red;
	}
	.unlike .fa-heart{
  		color: black;
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
    <ul class="form-section page-section" >
      <li id="cid_7" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httal htvam">
            <h2 id="header_7" class="form-header" data-component="header">
              Favorite Question
            </h2>
          </div>
        </div>
      </li>   
      <!--load  -->
      <li id="flist">
	
      </li>   
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div style="text-align:center" data-align="center" class="form-buttons-wrapper form-buttons-center   jsTest-button-wrapperField">
          <a href="http://localhost:8080/MultiChoose_02/home/favorite"> <button id="btnSend" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Back
            </button></a>          
          </div>
        </div>
      </li>
    </ul>
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
var id = url.substring(url.lastIndexOf('/') + 1);
$(document).ready(function() {
	if (sessionStorage.getItem('username') == null){
		$('#tagLogin').append(' <button class="btn btn-dark rounded-pill" id ="btnlogin"><a class="nav-link" href="http://localhost:8080/MultiChoose_02/home/login">Login</a></button>');
	} else if (sessionStorage.getItem('username') !=null){		
        $('#tagLogin').append(' <div class="nav-item dropdown active"><a class="nav-link dropdown-toggle"  style="color: white" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hello, '+ sessionStorage.getItem('username')+'</a><div class="dropdown-menu" aria-labelledby="navbarDropdown"><a class="dropdown-item" href="http://localhost:8080/MultiChoose_02/home/profile">Profile</a><a class="dropdown-item" href="http://localhost:8080/MultiChoose_02/home/login">Log Out</a></div></div>');	
	};
	if(sessionStorage.getItem('role')=='true'){			
		page.setAttribute("style","display:inline");
	}
	  $.ajax({
		type : 'GET',
		url : sessionStorage.getItem('API')+'question/update?id='+id,
		beforeSend: function (xhr) {
		    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
		},
		success : function(data) {			
			  var trHTML = '';
			  console.log(data);	 
			  if(data.type.id == 1){
	        		trHTML += '<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" > <img style="width: 300px; height: 200px" src='+data.photo+'></label><label class="form-label form-label-top form-label-auto" ><audio controls style="margin-left:10px; display: block"> <source src='+ data.content +' type="audio/mpeg"></audio></label><div id="cid_1" class="form-input-wide"><div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+data.id+'_0" name="'+data.id+'" value="A" data-calcvalue="0" disabled="disabled" /><label id="label_input_1_0" for="input_'+data.id+'_0" > A </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+data.id+'_1"  value="B" name="'+data.id+'" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+data.id+'_1" > B </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+data.id+'_2" value="C" name="'+data.id+'" data-calcvalue="0" disabled="disabled" /><label id="label_input_1_0" for="input_'+data.id+'_2" > C </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+data.id+'_3" value="D" name="'+data.id+'" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_'+data.id+'_3" > D </label></span></div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+data.description+' </label></li>'; 	 	        		
			  };	
			  if(data.type.id == 2){
	        		trHTML += '<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" > <audio controls> <source src='+ data.content +' type="audio/mpeg"></audio> </label><div id="cid_1" class="form-input-wide"><div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+data.id+'_0" name="'+data.id+'" value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_'+data.id+'_0"> A </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+data.id+'_1" name="'+data.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+data.id+'_1"> B </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+data.id+'_2" name="'+data.id+'" value="C" data-calcvalue="0" disabled="disabled" /><label id="label_input_1_2" for="input_'+data.id+'_2"> C </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+data.id+'_3" name="'+data.id+'" value="D" data-calcvalue="0" disabled="disabled" /><label id="label_input_1_3" for="input_'+data.id+'_3"> D </label></span> </div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+data.description+' </label></li>';
	        	};
	        	if(data.type.id == 3){	        		
	        		trHTML += '<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" >  <audio controls> <source src='+ data.content +' type="audio/mpeg"></audio> </label>';
	        		$.each(data.details, function(v,k){
						 trHTML +='<div id="'+k.id+'" class="form-input-wide"><div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><label class="form-label form-label-top form-label-auto" style="margin-left :10px" >'+k.content+'</label><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_0" name="'+k.id+'" value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_'+k.id+'_0">A. '+k.a+' </label> </span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_1"  name="'+k.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+k.id+'_1">B. '+k.b+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_2"  name="'+k.id+'"  value="C" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_2" for="input_'+k.id+'_2">C. '+k.c+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_3"  name="'+k.id+'" value="D" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_3" for="input_'+k.id+'_3">D. '+k.d+' </label></span></div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+k.description+' </label>'; 
	        		});	        		
	        	    trHTML +='</li>';
	        	};
	        	if(data.type.id == 4 ){	        		
	        		trHTML += '<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" >  <audio controls> <source src='+ data.content +' type="audio/mpeg"></audio> </label>';
	        		$.each(data.details, function(v,k){
						 trHTML +='<div id="'+k.id+'" class="form-input-wide"><div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><label class="form-label form-label-top form-label-auto" style="margin-left :10px" >'+k.content+'</label><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_0" name="'+k.id+'" value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_'+k.id+'_0">A. '+k.a+' </label> </span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_1"  name="'+k.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+k.id+'_1">B. '+k.b+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_2"  name="'+k.id+'"  value="C" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_2" for="input_'+k.id+'_2">C. '+k.c+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_3"  name="'+k.id+'" value="D" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_3" for="input_'+k.id+'_3">D. '+k.d+' </label></span></div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+k.description+' </label>'; 
	        		});	        		
	        	    trHTML +='</li>';
	        	};
	        	 if(data.type.id == 5){
		        		$.each(data.details,function(v,k){
		        			trHTML +='<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" id="label_1" for="input_1">'+k.content+' </label><div id="cid_1" class="form-input-wide"> <div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_0" name="'+k.id+'" value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_1_0">A. '+k.a+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_1" name="'+k.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+k.id+'_1">B. '+k.b+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_2" name="'+k.id+'" value="C" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_2" for="input_'+k.id+'_2">C. '+k.c+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_3" name="'+k.id+'" value="D" data-calcvalue="0" disabled="disabled" /><label id="label_input_1_3" for="input_'+k.id+'_3">D. '+k.d+' </label></span></div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+k.description+' </label></li> ';
		        		});		        		
		        };
		        if(data.type.id == 6){        		
	        		trHTML += '<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" >'+data.content+' </label>';
	        		$.each(data.details, function(v,k){
	        			trHTML +='<div id="'+k.id+'" class="form-input-wide"><div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_0" name="'+k.id+'" value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_'+k.id+'_0">A. '+k.a+' </label> </span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_1" name="'+k.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+k.id+'_1">B. '+k.b+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_2" name="'+k.id+'" value="C" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_2" for="input_'+k.id+'_2">C. '+k.c+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_3" name="'+k.id+'" value="D" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_3" for="input_'+k.id+'_3">D. '+k.d+' </label></span></div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+k.description+' </label>';
	        		});	        		
	        	    trHTML +='</li>';
	        	};
	        	if(data.type.id == 7){
	        		trHTML += '<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" >  <img style="width: 500px; height: 400px" src='+data.content+'> </label>';
	        		$.each(data.details, function(v,k){
	        			trHTML +='<div id="'+k.id+'" class="form-input-wide"><div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><label class="form-label form-label-top form-label-auto" style="margin-left :10px" >'+k.content+'</label><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_0" name="'+k.id+'" value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_'+k.id+'_0">A. '+k.a+' </label> </span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_1" name="'+k.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+k.id+'_1">B. '+k.b+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_2" name="'+k.id+'" value="C" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_2" for="input_'+k.id+'_2">C. '+k.c+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_3" name="'+k.id+'"  value="D" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_3" for="input_'+k.id+'_3">D. '+k.d+' </label></span></div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+k.description+' </label>';
	        		});	        		
	        	    trHTML +='</li>';
	        	};
	        	if(data.type.id == 8){
	        		trHTML +='  <li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" > '+data.content+' </label><label class="form-label form-label-top form-label-auto" style="margin-left: 50px " > Answer: '+data.answer+' </label><label class="form-label form-label-top form-label-auto" style="color: red; display: block" >'+data.description+' </label></li>';
	        	};
	        	if(data.type.id == 9){
	        		$.each(data.details,function(v,k){
	        			trHTML +='<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" id="label_1" for="input_1">'+k.content+' </label><div id="cid_1" class="form-input-wide"> <div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_0" name="'+k.id+'"  value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_1_0">A. '+k.a+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_1" name="'+k.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+k.id+'_1">B. '+k.b+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_2" name="'+k.id+'" value="C" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_2" for="input_'+k.id+'_2">C. '+k.c+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_3" name="'+k.id+'" value="D" data-calcvalue="0" disabled="disabled" /><label id="label_input_1_3" for="input_'+k.id+'_3">D. '+k.d+' </label></span></div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+k.description+' </label></li> ';	        			
	        		});
	        	};
	        	if(data.type.id == 10){
	        		trHTML += '<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" > '+data.content+' </label>';
	        		$.each(data.details, function(v,k){
	        			trHTML +='<div id="'+k.id+'" class="form-input-wide"><div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><label class="form-label form-label-top form-label-auto" style="margin-left :10px" >'+v+'. '+k.content+' </label><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_0" name="'+k.id+'" value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_'+k.id+'_0">A. '+k.a+' </label> </span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_1" name="'+k.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+k.id+'_1">B. '+k.b+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_2" name="'+k.id+'" value="C" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_2" for="input_'+k.id+'_2">C. '+k.c+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_3" name="'+k.id+'" value="D" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_3" for="input_'+k.id+'_3">D. '+k.d+' </label></span></div></div><label class="form-label form-label-top form-label-auto" >Answer: '+k.answer+' </label><label class="form-label form-label-top form-label-auto" style="margin-left:50px;color: red" >'+k.description+' </label>';
	        		});	        		
	        	    trHTML +='</li>';
	        	};
	        	if(data.type.id == 11){
	        		trHTML += '<li class="form-line" data-type="control_radio" id='+data.id+'><label class="form-label form-label-top form-label-auto" > <img style="width: 300px; height: 200px" src='+data.content+'> </label>';
	        		$.each(data.details, function(v,k){
	        			trHTML +='<div id="'+k.id+'" class="form-input-wide"><div class="form-single-column" role="group" aria-labelledby="label_1" data-component="radio"><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_0" name="'+k.id+'"  value="A" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_0" for="input_'+k.id+'_0">A. '+k.a+' </label> </span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_1" name="'+k.id+'" value="B" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_1" for="input_'+k.id+'_1">B. '+k.b+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_2" name="'+k.id+'" value="C" data-calcvalue="0" disabled="disabled"/><label id="label_input_1_2" for="input_'+k.id+'_2">C. '+k.c+' </label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span><input type="radio" aria-describedby="label_1" class="form-radio" id="input_'+k.id+'_3" name="'+k.id+'" value="D" data-calcvalue="0" disabled="disabled" /><label id="label_input_1_3" for="input_'+k.id+'_3">D. '+k.d+' </label></span></div></div><label class="form-label form-label-top form-label-auto" style="color: red" >'+data.description+' </label>';        			
	        		});	        		
	        	    trHTML +='</li>';	
	        	};		
	        $('#flist').append(trHTML);  
	        if(data.type.id === 1 || data.type.id === 2 ){
	        	if($('#'+data.id).find("input[type='radio'].form-radio").is(':checked') === false){
		        	$('#'+data.id).find("input[type='radio'].form-radio").filter('[value='+data.answer+']').prop('checked',true);
		        }
	        };
	        if(data.type.id === 5 || data.type.id === 9 || data.type.id === 11){
	        	$.each(data.details,function(i,item){
	        		if($('#'+data.id).find("input[type='radio'].form-radio").is(':checked') === false){
	        			$('#'+data.id).find("input[type='radio'].form-radio").filter('[value='+item.answer+']').prop('checked',true);
		        	}
	        	});    
	        };
	        if(data.type.id === 3 || data.type.id === 4 || data.type.id === 6 || data.type.id === 7 ){
	        	$.each(data.details,function(i,item){
	        		if($('#'+data.id).find('#'+item.id).find("input[type='radio'].form-radio").is(':checked') === false){
	        			$('#'+data.id).find('#'+item.id).find("input[type='radio'].form-radio").filter('[value='+item.answer+']').prop('checked',true);
		        	}
	        	});        	
	        } 
		},
		error : function(data) {				
			swal({
				title : data.responseJSON.message,
				text : "",
				icon : "error"
			}); 
		}
	});  	
});
</script>
</body>
</html>