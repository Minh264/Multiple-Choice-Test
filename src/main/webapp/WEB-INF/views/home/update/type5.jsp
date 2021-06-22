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
		<h3 class="fw-normal">Update Toiec Part 5</h3>	
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
 				<textarea rows="3" class="form-control" id="description"></textarea>
			</div>
			<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Content</label>
 				<textarea rows="3" class="form-control" id="content"></textarea>
			</div>
			 <div class="form-group">
                <label for="name" class="fw-medium fg-grey">A:</label>
                <input type="text" class="form-control" id="answera">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">B:</label>
                <input type="text" class="form-control" id="answerb">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">C:</label>
                <input type="text" class="form-control" id="answerc">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">D:</label>
                <input type="text" class="form-control" id="answerd">
              </div>
			<div class="form-group mt-4">
				<button  class="btn btn-primary" id="btnsend">Send
					Question</button>
			</div>
	</div>
	<script>
	var url = window.location.hash ;
	var id = url.substring(url.lastIndexOf('#') + 1);
	var idtype;
	var typeName;
	var idDetails;
	$(document).ready(function() {
		var res="https://testing-api-1.herokuapp.com/api/question/update?id=";
    	var urls = res.concat(id);
    	 $.ajax({
    		type : 'GET',
    		url : urls,
    		beforeSend: function (xhr) {
			    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
			},
    		success : function(data) {
    			$('#btnanswer').val(data.details[0].answer);
    			$('#btnlevel').val(data.level);
    			$('#description').val(data.details[0].description);
    			idtype= data.type.id;
    			typeName =data.type.name;
    			idDetails = data.details[0].id;
    			$('#content').val(data.details[0].content);
    			$('#answera').val(data.details[0].a);
    			$('#answerb').val(data.details[0].b);
    			$('#answerc').val(data.details[0].c);
    			$('#answerd').val(data.details[0].d);
    		},
    		error : function(data) {				
    			alert("Delete Failed!");
    		}
    });  
		 var $answer = $('#btnanswer');
		var $level = $('#btnlevel');
		var $description =$('#description');	
		var $content =$('#content');
		var $answera =$('#answera');
		var $answerb =$('#answerb');
		var $answerc =$('#answerc');
		var $answerd =$('#answerd');
		var formData = new FormData();		
			$('#btnsend').on('click',function(){
				if($level.val()=='base' || $answer.val()=='base' || $description.val()=="" || $content.val()=="" || $answera.val()=="" || $answerb.val()=="" || $answerc.val()=="" || $answerd.val()==""){
					alert('Please enter full information !');
				};
				if($level.val()!='base' && $answer.val()!='base' && $description.val()!="" && $content.val()!="" && $answera.val()!="" && $answerb.val()!="" && $answerc.val()!="" && $answerd.val()!=""){
					var types ={
	 						id : idtype,
	 						name : typeName
	 					};
					var details = [{
							id : idDetails,
							answer : $answer.val(),
							description : $description.val(),
							content : $content.val(),
							a : $answera.val(),
							b : $answerb.val(),
							c : $answerc.val(),
							d : $answerd.val(),
					}];
					var values = JSON.stringify({	
						id : id,
						level : $level.val(),
						type : types,
						details : details
						});
					const blob = new Blob([values],{
						type: 'application/json'
					});
					formData.append('data',blob);
					 $.ajax({
			 				type : 'POST',
			 				url : 'https://testing-api-1.herokuapp.com/api/question/update',
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