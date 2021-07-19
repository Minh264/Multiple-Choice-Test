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
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
               
                      <div class="form-group">                    
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password" title="enter your password.">
                          </div>
                      </div>             
                        <div class="form-group">                    
                          <div class="col-xs-6">
                              <label for="password"><h4>New Password</h4></label>
                              <input type="password" class="form-control" name="password" id="newpassword" placeholder="Enter New Password" title="enter your password.">
                          </div>
                      </div>     
                      <div class="form-group">                    
                          <div class="col-xs-6">
                              <label for="password"><h4>Verify Password</h4></label>
                              <input type="password" class="form-control" name="password" id="verifypassword" placeholder="Enter Verify Password" title="enter your password.">
                          </div>
                      </div>            
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-primary" type="submit" id="btnsave"> Save</button>    
                              	<a href="profile"><button class="btn btn-primary" type="submit" >Back</button></a>                      	
                            </div>
                      </div>              
              <hr>
<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/mobster.js"></script>
<script>
	$(document).ready(function() {
		$('#btnsave').on('click',function(){						
			  if($('#password').val() != "" || $('#newpassword').val() !="" || $('#verifypassword').val() != ""){
				if($('#password').val() != "" && $('#newpassword').val() !="" && $('#verifypassword').val() != "" ){
					if( $('#newpassword').val() == $('#verifypassword').val()){
						var data =  JSON.stringify({
								oldPassword : $('#password').val(),
								newPassword : $('#newpassword').val()
						});
						 $.ajax({
						type : 'POST',
						url : sessionStorage.getItem('API')+'user/changepassword',
						beforeSend: function (xhr) {
						    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
						},
						data : data,
						contentType: 'application/json',
						success : function(data) {						
							swal({
								title : data.message,
								text : "",
								icon : "success"
							}).then(()=>{window.location.href = "http://localhost:8080/MultiChoose_02/home/profile"})
						},
						error : function(data) {				
							 swal({
									title : data.responseJSON.message,
									text : "",
									icon : "error"
								}); 
						}
						}); 
					};
					if( $('#newpassword').val() != $('#verifypassword').val()){
						swal("Verify Password Failed!","","error");
					}					
				};
				if($('#password').val() == "" ||  $('#newpassword').val() =="" || $('#verifypassword').val() ==""  )
					{
						swal("Please Enter Your Password!","","error");
					}
			};		 
		});		
	});
</script>
</body>
</html>