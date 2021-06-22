<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Mobster - One page app template</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</head>
<body>
	<!-- Header -->
	<div class="card-page">
		<h3 class="fw-normal">Insert Fill Words Question</h3>	
			<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Content</label>
 				<textarea rows="3" class="form-control" id="content" placeholder=" Enter Content"></textarea>
			</div>
				<div class="form-group">
				<label for="name" class="fw-medium fg-grey">Answer</label> <input
					type="text" class="form-control" id="answer" placeholder="Enter Answer">
			</div>
			<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Description</label>
 				<textarea rows="3" class="form-control" id="description" placeholder="Enter Description"></textarea>
			</div>
			<div class="form-group">
				 <select id="btnlevel" class="btn btn-primary" >
					<option selected value="base">Level</option>
					<option value="1">Easy</option>
					<option value="2">Normal</option>
					<option value="3">Hard</option>							
				</select> 
			</div>
			<div class="form-group mt-4">
				<button  class="btn btn-primary" id="btnsend">Send
					Question</button>
			</div>
	</div>
	<script>
	$(document).ready(function() {
		 var $answer = $('#answer');
		var $level = $('#btnlevel');
		var $description =$('#description');	
		var $content =$('#content');	
			$('#btnsend').on('click',function(){
				if($content.val()=="" || $answer.val()=="" || $description.val()=="" || $level.val()=='base'){
					alert("Please enter full information!");
				};
				if($content.val()!="" && $answer.val()!="" && $description.val()!="" && $level.val()!='base'){
					var values = JSON.stringify({
						content : $content.val(),
						answer : $answer.val(),
						description : $description.val(),
						level : $level.val()
					});
					$.ajax({
					type : 'POST',
					url : 'https://testing-api-1.herokuapp.com/api/question/type8',
					beforeSend: function (xhr) {
					    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
					},
					data : values,
			        contentType: 'application/json',
					success : function(data) {			
						alert(data.message);
						window.location.href = "http://localhost:8080/MultiChoose_02/home/question";
					},
					error : function(data) {				
						alert("Create Failed !");
					}
				});
				}				
		}); 
		
	});
	</script>
</body>
</html>