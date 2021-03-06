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
	<div class="form-group" id="fmain">
		<h3 class="fw-normal">Insert Toiec Part 7</h3>	
				<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Content</label>
 				<textarea rows="3" class="form-control" id="content" placeholder=" Enter Content"></textarea>
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
			<div class="form-group">
			<label for="message" class="fw-medium fg-grey">File Image</label>
				<input type="file" id="imagefile" name="filename">
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
				<label for="message" class="fw-medium fg-grey">Description Answer</label>
 				<textarea rows="3" class="form-control" id="descriptionAnswer" placeholder="Enter Description Answer"></textarea>
			</div>
			<div class="form-group">
				<label for="message" class="fw-medium fg-grey">Content Answer</label>
 				<textarea rows="3" class="form-control" id="contentAnswer" placeholder=" Enter Content Answer"></textarea>
			</div>
			 <div class="form-group">
                <label for="name" class="fw-medium fg-grey">A:</label>
                <input type="text" class="form-control" id="answera" placeholder=" Enter Answer A">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">B:</label>
                <input type="text" class="form-control" id="answerb" placeholder=" Enter Answer B">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">C:</label>
                <input type="text" class="form-control" id="answerc" placeholder="Enter Answer C">
              </div>
              <div class="form-group">
                <label for="name" class="fw-medium fg-grey">D:</label>
                <input type="text" class="form-control" id="answerd" placeholder="Enter Answer D">
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
	function append_jquery() {
		var id = "Page" + Math.floor(Math.random() * 100);
		ids.push(id);
		$('#fmain').append(
				$('<div id="'+id+'"></div>').load(
						'../home/types/type7-add'));
	}
	$(document).ready(function() {
		 var $answer = $('#btnanswer');
		var $level = $('#btnlevel');
		var $description =$('#description');	
		var $descriptionAnswer =$('#descriptionAnswer');
		var $content =$('#content');
		var $contentAnswer =$('#contentAnswer');
		var $answera =$('#answera');
		var $answerb =$('#answerb');
		var $answerc =$('#answerc');
		var $answerd =$('#answerd');
		var formData = new FormData();		
			$('#btnsend').on('click',function(){
				var check =0;
				if($content.val()=="" || $description.val()=="" || $level.val()=='base' || $('#imagefile')[0].files[0]==null || $answer.val()=='base' || $descriptionAnswer.val()=="" || $contentAnswer.val()=="" || $answera.val()=="" || $answerb.val()=="" || $answerc.val()=="" || $answerd.val()==""){
					swal("Please enter full information !","","error");
				};
				if(ids.length !=0){
					$.each(ids,function(i,v){
						if($('#'+v).find('#btnanswer').val()=='base' || $('#'+v).find('#descriptionAnswer').val()=="" || $('#'+v).find('#contentAnswer').val()=="" || $('#'+v).find('#answera').val()=="" || $('#'+v).find('#answerb').val()=="" || $('#'+v).find('#answerc').val() =="" || $('#'+v).find('#answerd').val()=="" ){
							swal("Please enter full information in Details location "+i,"","error");
							check +=1;
						};
					});
				};
				if($content.val()!="" && $description.val()!="" && $level.val()!='base' && $('#imagefile')[0].files[0]!=null && $answer.val()!='base' && $descriptionAnswer.val()!="" && $contentAnswer.val()!="" && $answera.val()!="" && $answerb.val()!="" && $answerc.val()!="" && $answerd.val()!="" && check==0){
					var details =[{
						answer : $answer.val(),
						description : $descriptionAnswer.val(),
						content : $contentAnswer.val(),
						a : $answera.val(),
						b : $answerb.val(),
						c : $answerc.val(),
						d : $answerd.val()
						}];
					$.each(ids, function(i, v) {
						var str = {answer :  $("#" + v).find("#btnanswer").val(),
								description :  $("#" + v).find("#descriptionAnswer").val(),					
								content : $('#'+v).find('#contentAnswer').val(),
								a :  $("#" + v).find("#answera").val(),
								b :  $("#" + v).find("#answerb").val(),
								c : $("#" + v).find("#answerc").val(),
								d : $("#" + v).find("#answerd").val()};
						details.push(str);
					});
					var values = JSON.stringify({
						content : $content.val(),
						description : $description.val(),
						level : $level.val(),
						detail : details
					});
					const blob = new Blob([values],{
						type: 'application/json'
					});
					formData.append('data',blob);
					formData.append('photo',$('#imagefile')[0].files[0]);
					$.ajax({
					type : 'POST',
					url : sessionStorage.getItem('API')+'question/type7',
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