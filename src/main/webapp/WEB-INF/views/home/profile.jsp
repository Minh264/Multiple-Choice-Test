<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="description" content="Mobile Application HTML5 Template">

  <meta name="copyright" content="MACode ID, https://www.macodeid.com/">

  <title>Mobster - One page app template</title>

  <link rel="shortcut icon" href="../assets/favicon.png" type="image/x-icon">

  <link rel="stylesheet" href="../assets/css/maicons.css">

  <link rel="stylesheet" href="../assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.min.css">

  <link rel="stylesheet" href="../assets/css/bootstrap.css">

  <link rel="stylesheet" href="../assets/css/mobster.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-floating">
		<div class="container">
			<a class="navbar-brand" href="index"> <img
				src="../assets/favicon-light.png" alt="" width="40">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarToggler" aria-controls="navbarToggler"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarToggler">
				<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
					<li class="nav-item "><a class="nav-link" href="index">Home</a>
					</li>
					<li class="nav-item "><a class="nav-link" href="about">About</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="blog">Blog</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="updates">What's
							New</a></li>
					<li class="nav-item"><a class="nav-link" href="favorites">Favorites
							List</a></li>
					<li class="nav-item " id="pageAdmin" style="display: none"><a class="nav-link" href="question" >Admin</a>
					</li>
				</ul>
				<div class="ml-auto my-2 my-lg-0" id="tagLogin"></div>
			</div>
		</div>
	</nav>
<!--  -->
<main>

  <div class="page-hero-section bg-image hero-mini" style="background-image: url(../assets/img/hero_mini.svg);">
    <div class="hero-caption">
      <div class="container fg-white h-100">
        <div class="row justify-content-center align-items-center text-center h-100">
          <div class="col-lg-6">
            <h3 class="mb-4 fw-medium">Profile</h3>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="page-section">
    <div class="container">
      	<hr>
<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-10" ><h1 id="username">User name</h1></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar" id="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload" id="fileavatar">
      </div><br>

          <ul class="list-group">
            <li class="list-group-item text-muted">History <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
          </ul> 
               
        </div><!--/col-3-->
    	<div class="col-sm-9">                  
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>             
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>Name</h4></label>
                              <input type="text" class="form-control" name="first_name" id="name" placeholder="enter name" title="enter your first name if any.">
                          </div>
                      </div>                                
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                          </div>
                      </div>               
                      <div class="form-group">                    
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>             
                        <div class="form-group">                    
                          <div class="col-xs-6">
                              <label for="password"><h4>New Password</h4></label>
                              <input type="password" class="form-control" name="password" id="newpassword" placeholder="password" title="enter your password.">
                          </div>
                      </div>     
                      <div class="form-group">                    
                          <div class="col-xs-6">
                              <label for="password"><h4>Verify Password</h4></label>
                              <input type="password" class="form-control" name="password" id="verifypassword" placeholder="password" title="enter your password.">
                          </div>
                      </div>            
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-primary" type="submit" id="btnsave"> Save</button>                             	
                            </div>
                      </div>              
              <hr>
              
             </div><!--/tab-pane-->
        </div><!--/col-9-->
    </div><!--/row-->
    </div>
  </div>
</div>
</div>
</main>
<!-- Footer -->
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
							<input type="text" class="form-control"
								placeholder="Your email..">
							<div class="input-group-append">
								<button type="submit" class="btn btn-primary">
									<span class="mai-send"></span>
								</button>
							</div>
						</div>
					</form>

					<!-- Social Media Button -->
					<div class="mt-4">
						<a href="#" class="btn btn-fab btn-primary fg-white"><span
							class="mai-logo-facebook"></span></a> <a href="#"
							class="btn btn-fab btn-primary fg-white"><span
							class="mai-logo-twitter"></span></a> <a href="#"
							class="btn btn-fab btn-primary fg-white"><span
							class="mai-logo-instagram"></span></a> <a href="#"
							class="btn btn-fab btn-primary fg-white"><span
							class="mai-logo-google"></span></a>
					</div>
				</div>
			</div>
		</div>

		<hr>

		<div class="container">
			<div class="row">
				<div class="col-12 col-md-6 py-2">
					<img src="../assets/favicon-light.png" alt="" width="40">
					<!-- Please don't remove or modify the credits below -->
					<p class="d-inline-block ml-2">
						Copyright &copy; <a href="https://www.macodeid.com/"
							class="fg-white fw-medium">MACode ID</a>. All rights reserved
					</p>
				</div>
				<div class="col-12 col-md-6 py-2">
					<ul class="nav justify-content-end">
						<li class="nav-item"><a href="#" class="nav-link">Terms
								of Use</a></li>
						<li class="nav-item"><a href="#" class="nav-link">Privacy
								Policy</a></li>
						<li class="nav-item"><a href="#" class="nav-link">Cookie
								Policy</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/mobster.js"></script>
<script>
	var page = document.getElementById('pageAdmin');
	var id;
	$(document).ready(function() {
		if (sessionStorage.getItem('username') == null){
			$('#tagLogin').append(' <button class="btn btn-dark rounded-pill" id ="btnlogin"><a class="nav-link" href="login">Login</a></button>');
		} else if (sessionStorage.getItem('username') !=null){		
	        $('#tagLogin').append(' <div class="nav-item dropdown active"><a class="nav-link dropdown-toggle"  style="color: white" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hello, '+ sessionStorage.getItem('username')+'</a><div class="dropdown-menu" aria-labelledby="navbarDropdown"><a class="dropdown-item" href="profile">Profile</a><a class="dropdown-item" href="login">Log Out</a></div></div>');	
		};
		if(sessionStorage.getItem('role')=='true'){			
			page.setAttribute("style","display:inline");
		}
		$.ajax({
			type:'GET',
			url:'https://testing-api-1.herokuapp.com/api/user/me',
			beforeSend: function (xhr) {
			    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
			},
			success: function(data){
				id = data.id;
				$('#username').text(data.username);
				$('#name').val(data.name);
				$('#email').val(data.email);
				 if(data.photo != null){
					document.getElementById("avatar").src = data.photo;
				} 
			},
			error : function() {
				alert("Load Failed!");
			}
		});
		$('#btnsave').on('click',function(){
			if( $('#fileavatar')[0].files[0] != null){
				var formData = new FormData();
				formData.append('photo',$('#fileavatar')[0].files[0]);	
				$.ajax({
				type : 'POST',
				url : 'https://testing-api-1.herokuapp.com/api/useravatar',
				beforeSend: function (xhr) {
				    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
				},
				data : formData,
				cache: false,
				processData: false,
		        contentType: false,
				success : function(data) {						
					alert("Upload Avatar Success!");
					window.location.href = "http://localhost:8080/MultiChoose_02/home/profile";
				},
				error : function() {				
					alert("Upload Avatar Failed!");
				}
				});
			};	
			if( $('#password').val() != ""){
				var values =  JSON.stringify({
					name : $('#name').val(),
					email : $('#email').val(),
					password : $('#password').val()
			});
			 $.ajax({
			type : 'POST',
			url : 'https://testing-api-1.herokuapp.com/api/user/updateProfile',
			beforeSend: function (xhr) {
			    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
			},
			data : values,
			contentType: 'application/json',
			success : function(data) {						
				alert(data.message);
				window.location.href = "http://localhost:8080/MultiChoose_02/home/profile";
			},
			error : function(data) {	
				console.log(data);
				//alert("Your passowrd is incorrect !");
			}
			});  
			};	
			
			var data =  JSON.stringify({
				oldPassword : $('#password').val(),
				newPassword : $('#newpassword').val()
		});
		 $.ajax({
		type : 'POST',
		url : 'https://testing-api-1.herokuapp.com/api/user/changepassword',
		beforeSend: function (xhr) {
		    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
		},
		data : data,
		contentType: 'application/json',
		success : function(data) {						
			alert(data.message);
			window.location.href = "http://localhost:8080/MultiChoose_02/home/profile";
		},
		error : function(data) {				
			alert(data.message);
		}
		}); 
			 /* if($('#password').val() != "" || $('#newpassword').val() !="" || $('#verifypassword').val() != ""){
				if($('#password').val() != "" && $('#newpassword').val() !="" && $('#verifypassword').val() != "" ){
					if( $('#newpassword').val() == $('#verifypassword').val()){
						var data =  JSON.stringify({
								oldPassword : $('#password').val(),
								newPassword : $('#newpassword').val()
						});
						 $.ajax({
						type : 'POST',
						url : 'https://testing-api-1.herokuapp.com/api/user/changepassword',
						beforeSend: function (xhr) {
						    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
						},
						data : data,
						contentType: 'application/json',
						success : function(data) {						
							alert(data.message);
							window.location.href = "http://localhost:8080/MultiChoose_02/home/profile";
						},
						error : function(data) {				
							alert(data.message);
						}
						}); 
					};
					if( $('#newpassword').val() != $('#verifypassword').val()){
						alert("Verify Password Failed!");
					}					
				};
				if($('#password').val() == "" ||  $('#newpassword').val() =="" || $('#verifypassword').val() ==""  )
					{
						alert("Please Enter Your Password!");
					}
			};		 */
		});		
	});
</script>
</body>
</html>