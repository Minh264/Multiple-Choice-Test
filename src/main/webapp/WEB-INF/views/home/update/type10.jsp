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
	<div class="form-group" id="fmain">
		<h3 class="fw-normal">Update True or False Question </h3>	
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
              </div>
			 <div class="form-group mt-4">
			<button class="btn btn-primary" onclick="append_jquery()">Add
				Details</button>
		</div>
			<div class="form-group mt-4">
				<button  class="btn btn-primary" id="btnsend">Send
					Question</button>
			</div>
	</div>
	<script>
	var phantuchon = $("#fmain");
	var ids = new Array();
	var url = window.location.hash ;
	var id = url.substring(url.lastIndexOf('#') + 1);
	var idtype;
	var typeName;
	function append_jquery() {
		var idf = "Page" + Math.floor(Math.random() * 100);
		ids.push(idf);
		$('#fmain').append('<div id="'+idf+'"><label for="message" class="fw-medium fg-grey" id="lbID"></label><div class="form-group"><label for="name" class="fw-medium fg-grey">Answer</label><input type="text" class="form-control" id="btnanswer" placeholder="Enter Answer "> </div><div class="form-group"><label for="message" class="fw-medium fg-grey">Description Answer</label><textarea rows="3" class="form-control" id="descriptionAnswer"></textarea></div><div class="form-group"><label for="message" class="fw-medium fg-grey">Content Answer</label><textarea rows="3" class="form-control" id="contentAnswer"></textarea></div><div class="form-group"><label for="name" class="fw-medium fg-grey">A:</label><input type="text" class="form-control" id="answera"></div><div class="form-group"><label for="name" class="fw-medium fg-grey">B:</label><input type="text" class="form-control" id="answerb"></div><div class="form-group"><label for="name" class="fw-medium fg-grey">C:</label><input type="text" class="form-control" id="answerc"></div><div class="form-group"><label for="name" class="fw-medium fg-grey">D:</label><input type="text" class="form-control" id="answerd"></div></div>');
	}
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
    			$.each(data.details, function(i, k) {
    				 append_jquery();
    				 $('#' + ids[i]).find('#lbID').text(k.id);
					$("#" + ids[i]).find("#btnanswer").val(k.answer);
					$("#" + ids[i]).find("#descriptionAnswer").val(k.description);
					$("#" + ids[i]).find("#contentAnswer").val(k.content);
					$("#" + ids[i]).find("#answera").val(k.a);
					$("#" + ids[i]).find("#answerb").val(k.b);
					$("#" + ids[i]).find("#answerc").val(k.c);
					$("#" + ids[i]).find("#answerd").val(k.d); 
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
				var check=0;
				if($content.val()=="" || $description.val()=="" || $level.val()=='base'){
					alert("Please enter full information !");
				};
				$.each(ids,function(i,v){
					if($("#"+v).find("#btnanswer").val()=="" || $("#"+v).find("#descriptionAnswer").val()=="" ||  $("#"+v).find("#contentAnswer").val()=="" ||  $("#"+v).find("#answera").val()=="" || $("#"+v).find("#answerb").val()=="" || $("#"+v).find("#answerc").val()=="" || $("#"+v).find("#answerd").val()==""){
						alert("Please enter full information in Details location "+i);
						check +=1;
					}
				});
				if($content.val()!="" && $description.val()!="" && $level.val()!='base' && check==0){
					var details =[];
					$.each(ids, function(i, v) {
						var str = { id :   $("#" + v).find("#lbID").text(),
								answer :  $("#" + v).find("#btnanswer").val(),
								description :  $("#" + v).find("#descriptionAnswer").val(),					
								content : $('#'+v).find('#contentAnswer').val(),
								a :  $("#" + v).find("#answera").val(),
								b :  $("#" + v).find("#answerb").val(),
								c : $("#" + v).find("#answerc").val(),
								d : $("#" + v).find("#answerd").val()};
						details.push(str);
					});
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