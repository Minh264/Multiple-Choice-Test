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
		<h3 class="fw-normal">Update Toiec Part 4</h3>	
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
			<div class="form-group">
			<label for="message" class="fw-medium fg-grey">File Audio</label>
			<label for="message" class="fw-medium fg-grey" id="lbAudio"></label>
				<input type="file" id="audiofile" name="filename">
			</div>	
            </div>
              <div class="form-group mt-4">
			<button class="btn btn-primary" onclick="append_jquery()">Add
				Details</button>
		</div>
			<div class="form-group mt-4">
				<button  class="btn btn-primary" id="btnsend">Send
					Question</button>
					<a href="question" style="margin-left: 100px"><button class="btn btn-primary">Back</button></a>
			</div>
	</div>
	<script>
	var phantuchon = $("#fmain");
	var ids = new Array();
	var url = window.location.hash ;
	var id = url.substring(url.lastIndexOf('#') + 1);
	var fileAudio;
	var idtype;
	var typeName;
	function append_jquery() {
		var idf = "Page" + Math.floor(Math.random() * 100);
		ids.push(idf);
		$('#fmain').append('<div id="'+idf+'"><label for="message" class="fw-medium fg-grey" id ="lbID"></label><div class="form-group"><select id="btnanswer" class="btn btn-primary" ><option selected value="base">Answer</option><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option></select> </div><div class="form-group"><label for="message" class="fw-medium fg-grey">Description Answer</label><textarea rows="3" class="form-control" id="descriptionAnswer"></textarea></div><div class="form-group"><label for="message" class="fw-medium fg-grey">Content</label><textarea rows="3" class="form-control" id="content"></textarea></div> <div class="form-group"><label for="name" class="fw-medium fg-grey">A:</label><input type="text" class="form-control" id="answera"></div><div class="form-group"><label for="name" class="fw-medium fg-grey">B:</label><input type="text" class="form-control" id="answerb"></div><div class="form-group"><label for="name" class="fw-medium fg-grey">C:</label><input type="text" class="form-control" id="answerc"></div> <div class="form-group"><label for="name" class="fw-medium fg-grey">D:</label><input type="text" class="form-control" id="answerd"></div></div>');
	}
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
    			 
    			$.each(data.details, function(i, k) {
    				 append_jquery();
    				 $('#' + ids[i]).find('#lbID').text(k.id);
					$("#" + ids[i]).find("#btnanswer").val(k.answer);
					$("#" + ids[i]).find("#descriptionAnswer").val(k.description);
					$("#" + ids[i]).find("#content").val(k.content);
					$("#" + ids[i]).find("#answera").val(k.a);
					$("#" + ids[i]).find("#answerb").val(k.b);
					$("#" + ids[i]).find("#answerc").val(k.c);
					$("#" + ids[i]).find("#answerd").val(k.d); 
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
		var $description =$('#description');	
		var formData = new FormData();		
			$('#btnsend').on('click',function(){
				var check=0;
				if($description.val()=="" || $level.val()=='base'){
					swal("Please enter full information !","","error");
				};
				$.each(ids,function(i,v){
					if($("#"+v).find("#btnanswer").val() =='base' || $("#"+v).find("#descriptionAnswer").val()=="" || $("#"+v).find("#content").val()=="" || $("#"+v).find("#answera").val()=="" || $("#"+v).find("#answerb").val()=="" || $("#"+v).find("#answerc").val()=="" || $("#"+v).find("#answerd").val()=="" ){
						swal('Please enter full information in Details location '+i,"","error");
						check +=1;
					};
				});
				if($description.val()!="" && $level.val()!='base' && check==0){
					var details =[];
					$.each(ids, function(i, v) {
						var str = { id :  $("#" + v).find("#lbID").text(),
								answer :  $("#" + v).find("#btnanswer").val(),
								description :  $("#" + v).find("#descriptionAnswer").val(),
								content : $("#" + v).find("#content").val(),
								a :  $("#" + v).find("#answera").val(),
								b :  $("#" + v).find("#answerb").val(),
								c : $("#" + v).find("#answerc").val(),
								d : $("#" + v).find("#answerd").val()
								};
						details.push(str);
					});
					if($('#audiofile')[0].files[0] != null){
						 fileAudio = $('#audiofile')[0].files[0];
					}
					var types ={
							id : idtype,
							name : typeName
						};
					var values = JSON.stringify({
						id : id,		
						description : $description.val(),
						level : $level.val(),
						type : types,
						details : details
					});
					const blob = new Blob([values],{
						type: 'application/json'
					});
					formData.append('data',blob);
					formData.append('audio',fileAudio);
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