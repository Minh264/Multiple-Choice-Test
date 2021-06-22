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
		<h3 class="fw-normal">Update Photo Question</h3>	
				<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Content</label>
 				<textarea rows="3" class="form-control" id="content"></textarea>
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
			<label for="message" class="fw-medium fg-grey" id="lbID"></label>
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
				<label for="message" class="fw-medium fg-grey">Description Answer</label>
 				<textarea rows="3" class="form-control" id="descriptionAnswer"></textarea>
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
			<div class="form-group">
			<label for="message" class="fw-medium fg-grey">File Photo</label>
			<label for="message" class="fw-medium fg-grey" id="lbPhoto"></label>
				<input type="file" id="imagefile" name="filename">
			</div>		
			<div class="form-group mt-4">
				<button  class="btn btn-primary" id="btnsend">Send
					Question</button>
			</div>
	</div>
	<script>
	var url = window.location.hash ;
	var id = url.substring(url.lastIndexOf('#') + 1);
	var filePhoto;
	var idtype;
	var typeName;
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
    			$('#btnlevel').val(data.level);
    			$('#content').val(data.content);
    			$('#description').val(data.description);
    			idtype= data.type.id;
    			typeName =data.type.name;
    			var photo = data.content.substring(data.content.lastIndexOf('-')+1);
    			$('#lbPhoto').text(photo);
    			 //file audio
    			fetch(data.content,{mode:"cors"})
	                    .then(res => res.blob())
	                    .then(blob => {
	                         filePhoto = new File([blob], photo, {type:'image/png'});
	                        console.log(filePhoto);
	                    });	
    			 
    			$.each(data.details, function(i, k) {
    				 $('#lbID').text(k.id);
					$("#btnanswer").val(k.answer);
					$("#descriptionAnswer").val(k.description);
					$("#answera").val(k.a);
					$("#answerb").val(k.b);
					$("#answerc").val(k.c);
					$("#answerd").val(k.d); 
				});  			
    		},
    		error : function(data) {				
    			alert("Delete Failed!");
    		}
    });  
		var $level = $('#btnlevel');
		var $description =$('#description');	
		var $content =$('#content');
		var formData = new FormData();		
			$('#btnsend').on('click',function(){
				if($content.val()=="" || $description.val()=="" || $level.val()=='base' || $("#btnanswer").val()=='base' || $("#descriptionAnswer").val()=="" || $("#answera").val()=="" || $("#answerb").val()=="" || $("#answerc").val()=="" || $("#answerd").val()==""){
					alert("Please enter full information !");
				};
				if($content.val()!="" && $description.val()!="" && $level.val()!='base' && $("#btnanswer").val()!='base' && $("#descriptionAnswer").val()!="" && $("#answera").val()!="" && $("#answerb").val()!="" && $("#answerc").val()!="" && $("#answerd").val()!=""){
					var details =[{
						id :   $("#lbID").text(),
						answer :  $("#btnanswer").val(),
						description :  $("#descriptionAnswer").val(),					
						a :  $("#answera").val(),
						b :  $("#answerb").val(),
						c : $("#answerc").val(),
						d : $("#answerd").val()
					}];
					if($('#imagefile')[0].files[0] != null){
						 filePhoto = $('#imagefile')[0].files[0];
					}
					var types ={
							id : idtype,
							name : typeName
						};
					var values = JSON.stringify({
						id : id,
						content : $content.val(),
						description : $description.val(),
						level : $level.val(),
						type : types,
						details : details
					});
					const blob = new Blob([values],{
						type: 'application/json'
					});
					formData.append('data',blob);
					formData.append('photo',filePhoto);
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
					error : function(data) {				
						alert("Create Failed !");
					}
				});
				};						
		}); 
		
	});
	</script>
</body>
</html>