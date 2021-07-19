<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Mobster - One page app template</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
	<!-- Header -->
	<div class="card-page">
		<h3 class="fw-normal">Insert Toiec Part 5</h3>	
			<div class="form-group">
				 <select id="btnlevel" class="btn btn-primary" >
					<option selected value="base">Level</option>
					<option value="1">Easy</option>
					<option value="2">Normal</option>
					<option value="3">Hard</option>						
				</select> 
			</div>
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
				<label for="message" class="fw-medium fg-grey">Description</label>
 				<textarea rows="3" class="form-control" id="description" placeholder="Enter Description"></textarea>
			</div>
			<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Content</label>
 				<textarea rows="3" class="form-control" id="content" placeholder="Enter Content"></textarea>
			</div>
			 <div class="form-group">
                <label for="name" class="fw-medium fg-grey">A:</label>
                <input type="text" class="form-control" id="answera" placeholder ="Enter Answer A">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">B:</label>
                <input type="text" class="form-control" id="answerb" placeholder = " Enter Answer B">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">C:</label>
                <input type="text" class="form-control" id="answerc"placeholder = " Enter Answer C">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">D:</label>
                <input type="text" class="form-control" id="answerd" placeholder = "Enter Answer D">
              </div>
			<div class="form-group mt-4">
				<button  class="btn btn-primary" id="btnsend">Send
					Question</button>
			</div>
	</div>
	<script>
	$(document).ready(function() {
		 var $answer = $('#btnanswer');
		var $level = $('#btnlevel');
		var $description =$('#description');	
		var $content =$('#content');
		var $answera =$('#answera');
		var $answerb =$('#answerb');
		var $answerc =$('#answerc');
		var $answerd =$('#answerd');	
			$('#btnsend').on('click',function(){
				if($answer.val()=='base' || $level.val()=='base' || $description.val()=="" || $content.val()== "" || $answera.val()=="" || $answerb.val() == "" || $answerc.val()=="" || $answerd.val()==""){
					swal("Please enter full information !","","error");
				};
				if($answer.val()!='base' && $level.val()!='base' && $description.val()!="" && $content.val()!= "" && $answera.val()!="" && $answerb.val() != "" && $answerc.val()!="" && $answerd.val()!=""){
					var details = {
							answer : $answer.val(),
							description : $description.val(),
							content : $content.val(),
							a : $answera.val(),
							b : $answerb.val(),
							c : $answerc.val(),
							d : $answerd.val(),
					};
					var values = JSON.stringify({			
						level : $level.val(),
						detail : details
						});
					$.ajax({
					type : 'POST',
					url : sessionStorage.getItem('API')+'question/type5',
					beforeSend: function (xhr) {
					    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
					},
					data : values,
			        contentType: 'application/json',
					success : function(data) {			
						swal({
							title : data.message,
							text : "",
							icon : "success"
						}).then(()=>{window.location.href = "http://localhost:8080/MultiChoose_02/home/question"})
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
		}); 
		
	});
	</script>
</body>
</html>