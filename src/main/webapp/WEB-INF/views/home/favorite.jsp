<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta name="description" content="Mobile Application HTML5 Template">

<meta name="copyright" content="MACode ID, https://www.macodeid.com/">

<title>Mobster - One page app template</title>

<link rel="shortcut icon" href="../assets/favicon.png"
	type="image/x-icon">

<link rel="stylesheet" href="../assets/css/maicons.css">

<link rel="stylesheet" href="../assets/vendor/animate/animate.css">

<link rel="stylesheet"
	href="../assets/vendor/owl-carousel/css/owl.carousel.min.css">

<link rel="stylesheet" href="../assets/css/bootstrap.css">

<link rel="stylesheet" href="../assets/css/mobster.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}

#myInput {
	background-position: 10px 12px;
	background-repeat: no-repeat;
	width: 600px;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}
</style>
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
					<li class="nav-item active"><a class="nav-link" href="favorite">Favorite
							List</a></li>
					<li class="nav-item" id="pageAdmin" style="display: none"><a class="nav-link" href="question">Admin</a>
					</li>
				</ul>
				<div class="ml-auto my-2 my-lg-0" id="tagLogin"></div>
			</div>
		</div>
	</nav>

	<main class="bg-light">

		<div class="page-hero-section bg-image hero-mini"
			style="background-image: url(../assets/img/hero_mini.svg);">
			<div class="hero-caption">
				<div class="container fg-white h-100">
					<div
						class="row justify-content-center align-items-center text-center h-100">
						<div class="col-lg-6">
							<h3 class="mb-4 fw-medium">Favorite List</h3>
							<nav aria-label="breadcrumb"></nav>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="page-section">
			<div class="container">

				<!--  -->
				<div class="card-page">
					<input type="text" id="myInput" onkeyup="myFunction()"
						placeholder="Search for Type ID..." title="Type in a name">
				</div>
				<div class="card-page" id="fload">
					<table id="ftable">
						<tr>
							<th>ID</th>
							<th>Content</th>
							<th>Type Name</th>
							<th>Type ID</th>
							<th>Level</th>
							<th></th>
							<th></th>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</main>
	<!-- .bg-light -->


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





	<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

	<script src="../assets/vendor/wow/wow.min.js"></script>

	<script src="../assets/js/mobster.js"></script>
	<script type="text/javascript">
	var page = document.getElementById('pageAdmin');
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
										type : 'GET',
										url : sessionStorage.getItem('API')+'question/getfavorite',
										beforeSend : function(xhr) {xhr.setRequestHeader('Authorization','Bearer '+ sessionStorage.getItem('accessToken'));
										},
										success : function(data) {
											var trHTML = '';
											 $.each(data,function(v,k){
												trHTML += '<tr><td>'+ k.question.id+ '</td><td>'+ k.question.content+ '</td><td>'+ k.question.type.name+ '</td><td>'+ k.question.type.id+ '</td><td>'+ k.question.level+ '</td><td><button id="btnReview" class="btn btn-primary" >Review</button></td><td><button id="btnDelete" class="btn btn-primary"  style="background-color: red">Delete</button></td></tr>';
											});		 								
										$('#ftable').append(trHTML);
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
		 $(document ).on("click","#ftable #btnReview",function() {
			    let tr = $(this).closest('tr');
			    let a = tr.find('td').eq(0).html(); 		   
			    window.location.href = "http://localhost:8080/MultiChoose_02/home/review/"+a;
			  });
		 $(document ).on("click","#ftable #btnDelete",function() {
			 swal({
					title : "Are you sure you want to delete this question?",
					text : "",
					icon : "warning",
					buttons : true,
					dangerMode: true,
				}).then((willDelete)=>{
					if(willDelete){
						 let tr = $(this).closest('tr');
						    let a = tr.find('td').eq(0).html(); 		   
						    $.ajax({
						    	type:'GET',
						    	url: sessionStorage.getItem('API')+'question/deletefavorite/'+a,
						    	beforeSend : function(xhr) {
						    		xhr.setRequestHeader('Authorization','Bearer '+ sessionStorage.getItem('accessToken'));
								},
								success: function(data){
									swal({
										title : data.message,
										text : "",
										icon : "success"
									}).then(()=>{window.location.href = "http://localhost:8080/MultiChoose_02/home/favorite"})
								},
								error : function(data){
									 swal({
											title : data.responseJSON.message,
											text : "",
											icon : "error"
										}); 
								}
						    }); 
					}
				})			   
			  });
	</script>
	<script>
		function myFunction() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("ftable");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[3];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>
</body>
</html>