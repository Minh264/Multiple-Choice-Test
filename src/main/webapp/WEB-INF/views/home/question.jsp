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
					<li class="nav-item"><a class="nav-link" href="favorite">Favorite
							List</a></li>
					<li class="nav-item active"><a class="nav-link" href="admin">Admin</a>
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
							<h3 class="mb-4 fw-medium">Admin</h3>
							<nav aria-label="breadcrumb">
								<ol
									class="breadcrumb breadcrumb-dark justify-content-center bg-transparent">
									<li class="breadcrumb-item active " aria-current="page">Question</li>
									<li class="breadcrumb-item "><a href="test">Test</a></li>
									<li class="breadcrumb-item"><a href="account">Account</a></li>
									<li class="breadcrumb-item"><a href="history">History</a></li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="page-section">
			<div class="container">
				<div class="row justify-content-center">
					<!--  -->
					<div class="col-lg-10 my-3 wow fadeInUp">
						<div class="card-page">
							<div class="row row-beam-md " style="margin-left: 0px">
								<div class="col-md-4 text-center py-3 py-md-2">
									<p class="fg-primary fw-medium fs-vlarge">Questions
										Management</p>
									<p class="mb-0">Select insert or update to edit question</p>
								</div>
								<select id="btn" class="btn btn-primary" type="submit"
									style="margin-top: 40px; margin-bottom: 40px"
									onchange="onChanged(this)">
									<option selected value="base">Please Select</option>
									<option value="insert">Insert</option>
									<option value="update">Update/Delete</option>
								</select> <select id="btnselect" class="btn btn-primary" type="submit"
									style="margin-top: 40px; margin-bottom: 40px; margin-left: 40px; display: none"
									onchange="onChangedType(this)">
									<option selected value="base">Select Types</option>
									<option value="1">Toiec Part 1</option>
									<option value="2">Toiec Part 2</option>
									<option value="3">Toiec Part 3</option>
									<option value="4">Toiec Part 4</option>
									<option value="5">Toiec Part 5</option>
									<option value="6">Toiec Part 6</option>
									<option value="7">Toeic Part 7</option>
									<option value="8">Fill Words</option>
									<option value="9">Sorting</option>
									<option value="10">True or False</option>
									<option value="11">Photo</option>
								</select>
							</div>
						</div>
					</div>
					<!-- Load -->
					<div id="fload" style="display: none"></div>
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
		$(document).ready(function() {
							if (sessionStorage.getItem('username') == null) {
								$('#tagLogin').append(' <button class="btn btn-dark rounded-pill" id ="btnlogin"><a class="nav-link" href="login">Login</a></button>');
							} else if (sessionStorage.getItem('username') != null) {
								 $('#tagLogin').append(' <div class="nav-item dropdown active"><a class="nav-link dropdown-toggle"  style="color: white" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hello, '+ sessionStorage.getItem('username')+'</a><div class="dropdown-menu" aria-labelledby="navbarDropdown"><a class="dropdown-item" href="profile">Profile</a><a class="dropdown-item" href="login">Log Out</a></div></div>');
							};
						});
		function onChanged(obj) {
			var status = "";
			var value = obj.value;
			var select = document.getElementById('btnselect');
			var form = document.getElementById('fload');
			if (value == "insert") {
				select
						.setAttribute("style",
								"margin-top: 40px;margin-bottom: 40px;margin-left: 40px;display:inline");
				form.setAttribute("style", "display:inline");
				form.innerHTML = "";
			} else if (value == "update") {
				select
						.setAttribute("style",
								"margin-top: 40px;margin-bottom: 40px;margin-left: 40px;display:none");
				form.setAttribute("style", "display:inline");
				$('#fload').load('update/updatequestion')
			} else {
				select
						.setAttribute("style",
								"margin-top: 40px;margin-bottom: 40px;margin-left: 40px;display:none");
				form.setAttribute("style", "display:none");
				form.innerHTML = "";
			}
		}
		function onChangedType(obj) {
			var value = obj.value;
			if (value == "1") {
				$('#fload').load('types/type1')
			}
			if (value == "2") {
				$('#fload').load('types/type2')
			}
			if (value == "3") {
				$('#fload').load('types/type3')
			}
			if (value == "4") {
				$('#fload').load('types/type4')
			}
			if (value == "5") {
				$('#fload').load('types/type5')
			}
			if (value == "6") {
				$('#fload').load('types/type6')
			}
			if (value == "7") {
				$('#fload').load('types/type7')
			}
			if (value == "8") {
				$('#fload').load('types/type8')
			}
			if (value == "9") {
				$('#fload').load('types/type9')
			}
			if (value == "10") {
				$('#fload').load('types/type10')
			}
			if (value == "11") {
				$('#fload').load('types/type11')
			}
		}
	</script>

</body>

</html>