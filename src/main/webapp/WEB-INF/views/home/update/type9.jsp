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
		<h3 class="fw-normal">Update Sorting Question</h3>	
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
					<a href="question" style="margin-left: 100px"><button class="btn btn-primary">Back</button></a>
			</div>
	</div>
	<script>
	var url = window.location.hash ;
	var id = url.substring(url.lastIndexOf('#') + 1);
	var idtype;
	var typeName;
	$(document).ready(function() {
		var res= sessionStorage.getItem('API')+"question/update?id=";
    	var urls = res.concat(id);
    	 $.ajax({
    		type : 'GET',
    		url : urls,
    		beforeSend: function (xhr) {
			    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
			},
    		success : function(data) {
    			$('#btnlevel').val(data.level);
    			idtype= data.type.id;
    			typeName =data.type.name;			 
    			$.each(data.details, function(i, k) {
    				 $('#lbID').text(k.id);
					$("#btnanswer").val(k.answer);
					$("#description").val(k.description);
					$("#content").val(k.content);
					$("#answera").val(k.a);
					$("#answerb").val(k.b);
					$("#answerc").val(k.c);
					$("#answerd").val(k.d); 
				});  			
    		},
    		error : function(data) {				
    			swal({
					title : data.responseJSON.message,
					text : "",
					icon : "error"
				}); 
    		}
    });  
		var $level = $('#btnlevel');
		var formData = new FormData();		
			$('#btnsend').on('click',function(){
				if($level.val()=='base' || $("#btnanswer").val()=='base' || $("#description").val()=="" || $("#content").val()=="" || $("#answera").val()=="" || $("#answerb").val()=="" || $("#answerc").val()=="" || $("#answerd").val()==""){
					swal("Please enter full information !","","error");
				};
				if($level.val()!='base' && $("#btnanswer").val()!='base' && $("#description").val()!="" && $("#content").val()!="" && $("#answera").val()!="" && $("#answerb").val()!="" && $("#answerc").val()!="" && $("#answerd").val()!=""){
					var details =[{
						id :  $("#lbID").text(),
						answer :  $("#btnanswer").val(),
						description :  $("#description").val(),
						content : $("#content").val(),
						a :  $("#answera").val(),
						b :  $("#answerb").val(),
						c : $("#answerc").val(),
						d : $("#answerd").val()
							}];		
					var types ={
							id : idtype,
							name : typeName
						};
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