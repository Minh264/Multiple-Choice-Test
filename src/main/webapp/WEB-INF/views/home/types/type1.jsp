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
		<h3 class="fw-normal">Insert Toiec Part 1</h3>	
			<div class="form-group">
			 <select id="btnanswer" class="btn btn-primary" >
					<option selected value="base">Answer</option>
					<option value="A">A</option>
					<option value="B">B</option>
					<option value="C">C</option>	
					<option value="D">D</option>				
				</select> 
			</div>

			<div class="form-group">
				 <select id="btnlevel" class="btn btn-primary" >
					<option selected value="base">Level</option>
					<option value="1">Easy</option>
					<option value="2">Normal</option>
					<option value="3">Hard</option>					
				</select> 
			</div>
			<div class="form-group">
			<label for="message" class="fw-medium fg-grey">File Image</label>
				<input type="file" id="imagefile" name="filename"  >
			</div>
			<div class="form-group">
			<label for="message" class="fw-medium fg-grey">File Audio</label>
				<input type="file" id="audiofile" name="filename" >
			</div>
			
			<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Description</label>
 				<textarea rows="3" class="form-control" id="description" placeholder="Enter Description"></textarea>
			</div>
			<div class="form-group mt-4">
				<button class="btn btn-primary" id="btnsend">Send
					Question</button>
			</div>
	</div>
	<script>
	$(document).ready(function() {
		 var $answer = $('#btnanswer');
		var $level = $('#btnlevel');
		var $description =$('#description');	
		var formData = new FormData();		
			$('#btnsend').on('click',function(){
				if($answer.val()== 'base' || $level.val()=='base' || $('#imagefile')[0].files[0]==null || $('#audiofile')[0].files[0]==null || $description.val()==""){
					alert("Please enter full information !");
				};
				if($answer.val()!= 'base' && $level.val()!='base' && $('#imagefile')[0].files[0]!=null && $('#audiofile')[0].files[0]!=null && $description.val()!=""){
					var values = JSON.stringify({
						answer : $answer.val(),
						description : $description.val(),
						level : $level.val()
						});
					const blob = new Blob([values],{
						type: 'application/json'
					});
					formData.append('data',blob);
					formData.append('photo',$('#imagefile')[0].files[0]);
					formData.append('audio',$('#audiofile')[0].files[0]);	
					$.ajax({
					type : 'POST',
					url : 'https://testing-api-1.herokuapp.com/api/question/type1',
					beforeSend: function (xhr) {
					    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
					},
					data : formData,
					cache: false,
					processData: false,
			        contentType: false,
					success : function(data) {			
						alert(data.message);
						window.location.href = "http://localhost:8080/MultiChoose_02/home/question";
					},
					error : function() {				
						alert("Create Failed!");
					}
				});
				};				
		}); 
		
	});
	</script>
</body>
</html>