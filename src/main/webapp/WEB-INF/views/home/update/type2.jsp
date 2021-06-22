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
		<h3 class="fw-normal">Update Toiec Part 2</h3>
		<div class="form-group">
			<select id="btnanswer" class="btn btn-primary">
				<option selected value="base">Answer</option>
				<option value="A">A</option>
				<option value="B">B</option>
				<option value="C">C</option>
			</select>
		</div>

		<div class="form-group">
			<select id="btnlevel" class="btn btn-primary">
				<option selected value="base">Level</option>
				<option value="1">Easy</option>
					<option value="2">Normal</option>
					<option value="3">Hard</option>		
			</select>
		</div>

		<div class="form-group">
			<label for="message" class="fw-medium fg-grey">File Audio</label> 
			<label for="message" class="fw-medium fg-grey" id="lbAudio"></label><input
				type="file" id="audiofile" name="filename">
		</div>

		<div class="form-group">
			<label for="message" class="fw-medium fg-grey">Description</label>
			<textarea rows="3" class="form-control" id="description"></textarea>
		</div>
		<div class="form-group mt-4">
			<button class="btn btn-primary" id="btnsend">Send Question</button>
		</div>
	</div>
	<script>
	var url = window.location.hash ;
	var id = url.substring(url.lastIndexOf('#') + 1);
	var fileAudio;
	var idtype;
	var typeName;
	$(document).ready(function(){
		    	var res="https://testing-api-1.herokuapp.com/api/question/update?id=";
		    	var urls = res.concat(id);
		    	 $.ajax({
		    		type : 'GET',
		    		url : urls,
		    		beforeSend: function (xhr) {
					    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
					},
		    		success : function(data) {
		    			$('#btnanswer').val(data.answer);
		    			$('#btnlevel').val(data.level);
		    			$('#description').val(data.description);
		    			idtype= data.type.id;
		    			typeName =data.type.name;
		    			var audio = data.content.substring(data.content.lastIndexOf('-')+1);	
		    			$('#lbAudio').text(audio);
		    			 //file audio
		    			fetch(data.content,{mode:"cors"})
	                    .then(res => res.blob())
	                    .then(blob => {
	                         fileAudio = new File([blob], audio, {type:'mp3'});
	                        console.log(fileAudio);
	                    });			
		    		},
		    		error : function(data) {				
		    			alert("Delete Failed!");
		    		}
		    });  
		    	 var $answer = $('#btnanswer');
		 		var $level = $('#btnlevel');
		 		var $description =$('#description');	
		 		var formData = new FormData();		
		 			$('#btnsend').on('click',function(){
		 				if($answer.val()=='base' || $level.val()=='base' || $description.val()==""){
		 					alert('Please enter full information !');
		 				};
		 				if($answer.val()!='base' && $level.val()!='base' && $description.val()!=""){
		 					if($('#audiofile')[0].files[0] != null){
			 					 fileAudio = $('#audiofile')[0].files[0];
			 				}
			 				var types ={
			 						id : idtype,
			 						name : typeName
			 					};
			 				var values = JSON.stringify({
			 					id : id, 		
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
			 				formData.append('audio',fileAudio);
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