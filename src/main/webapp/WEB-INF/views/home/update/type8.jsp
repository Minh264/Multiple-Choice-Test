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
		<h3 class="fw-normal">Update Fill Words Question</h3>	
			<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Content</label>
 				<textarea rows="3" class="form-control" id="content"></textarea>
			</div>
				<div class="form-group">
				<label for="name" class="fw-medium fg-grey">Answer</label> <input
					type="text" class="form-control" id="answer">
			</div>
			<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Description</label>
 				<textarea rows="3" class="form-control" id="description"></textarea>
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
					<a href="question" style="margin-left: 100px"><button class="btn btn-primary">Back</button></a>
			</div>
	</div>
	<script>
	var url = window.location.hash ;
	var id = url.substring(url.lastIndexOf('#') + 1);
	var idtype;
	var typeName;
	$(document).ready(function(){
		    	var res= sessionStorage.getItem('API')+"question/update?id=";
		    	var urls = res.concat(id);
		    	 $.ajax({
		    		type : 'GET',
		    		url : urls,
		    		beforeSend: function (xhr) {
					    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
					},
		    		success : function(data) {
		    			$('#content').val(data.content);
		    			$('#answer').val(data.answer);
		    			$('#btnlevel').val(data.level);
		    			$('#description').val(data.description);
		    			idtype= data.type.id;
		    			typeName =data.type.name;	    			
		    		},
		    		error : function(data) {				
		    			swal({
							title : data.responseJSON.message,
							text : "",
							icon : "error"
						}); 

		    		}
		    });  
		    	 var $content= $('#content');
		    	 var $answer = $('#btnanswer');
		 		var $level = $('#btnlevel');
		 		var $description =$('#description');	
		 		var formData = new FormData();		
		 			$('#btnsend').on('click',function(){
		 				if($content.val()=="" || $answer.val()=="" || $description.val()=="" || $level.val()=='base'){
		 					swal("Please enter full information !","","error");
		 				};
		 				if($content.val()!="" && $answer.val()!="" && $description.val()!="" && $level.val()!='base'){
		 					var types ={
			 						id : idtype,
			 						name : typeName
			 					};
			 				 var values = JSON.stringify({
			 					id : id, 	
			 					content : $content.val(),
			 					answer : $answer.val(),
			 					description : $description.val(),
			 					level : $level.val(),
			 					type : types,
			 					details : []
			 					});
			 				const blob = new Blob([values],{
			 					type: 'application/json'
			 				}); 
			 				formData.append('data',blob);	 				
			 				 $.ajax({
			 				type : 'POST',
			 				url : sessionStorage.getItem('API')+'question/update',
			 				beforeSend: function (xhr) {
							    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
							},
			 				data : formData,
			 				cache: false,
			 				processData: false,
			 		        contentType: false,
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