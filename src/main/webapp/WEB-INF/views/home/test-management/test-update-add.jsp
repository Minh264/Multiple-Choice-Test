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
			<h3 class="fw-normal">Update Test</h3>
			<div class="form-group">
				<label for="name" class="fw-medium fg-grey">Name</label> <input
					type="text" class="form-control" id="name">
			</div>
			<div class="form-group">
				<label for="name" class="fw-medium fg-grey">Time</label> <input
					type="number" class="form-control" id="time">
			</div>
			<br>
			<br>
		</div>
		<div class="form-group mt-4">
			<button class="btn btn-primary" onclick="append_jquery()">Add
				Details</button>
		</div>
		<div class="form-group mt-4">
			<button class="btn btn-primary" id="btnsend">Send Question</button>
			<a href="test" style="margin-left: 100px"><button class="btn btn-primary"  >Back</button></a>
		</div>
	</div>
	<script>
	var url = window.location.hash ;
	var id = url.substring(url.lastIndexOf('#') + 1);
	var idtype;
	var typeName;
	var phantuchon = $("#fmain");
	var ids = new Array();
		function append_jquery() {
			var idf = "Page" + Math.floor(Math.random() * 10000);
			ids.push(idf);
			$('#fmain').append('<div id="'+idf+'"><label for="name" class="fw-medium fg-grey" id="lbID"></label><div class="form-group"><select id="btntypes" class="btn btn-primary"><option selected value="base">Types</option><option value="1">Toiec Part 1</option><option value="2">Toiec Part 2</option><option value="3">Toiec Part 3</option><option value="4">Toiec Part 4</option><option value="5">Toiec Part 5</option><option value="6">Toiec Part 6</option><option value="7">Toeic Part 7</option><option value="8">Fill Words</option><option value="9">Sorting</option><option value="10">True or False</option><option value="11">Photo</option></select></div><div class="form-group"><select id="btnlevel" class="btn btn-primary"><option selected value="base">Level</option><option value="1">Easy</option><option value="2">Normal</option><option value="3">Hard</option></select></div><div class="form-group"><label for="name" class="fw-medium fg-grey">Quantity</label> <input type="number" class="form-control" id="quantity"></div></div>');
		}
	$(document).ready(function(){
		    	var res= sessionStorage.getItem('API')+"test/update/";
		    	var urls = res.concat(id);
		    	 $.ajax({
		    		type : 'GET',
		    		url : urls,
		    		beforeSend: function (xhr) {
					    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
					},
		    		success : function(data) {
		    			console.log(data);
		    			$('#name').val(data.name);
		    			$('#time').val(data.time);
		    			$.each(data.details, function(i, k) {	    				
		    				 append_jquery();
		    				 $('#' + ids[i]).find('#lbID').text(k.id);
							$("#" + ids[i]).find("#btntypes").val(k.typeid);
							$("#" + ids[i]).find("#btnlevel").val(k.level);
							$("#" + ids[i]).find("#quantity").val(k.quantity);
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
			var $name = $('#name');
			var $time = $('#time');
			var appear = new Array();
			$('#btnsend').on('click', function() {
				var check = 0;
				if($name.val()=="" || $time.val() =="" || ids.length == 0){
					swal("Please enter full information !","","error");
				};
				$.each(ids,function(i,v){
					if($("#" + ids[i]).find("#btntypes").val()=='base' || $("#" + ids[i]).find("#btnlevel").val()=='base' || $("#" + ids[i]).find("#quantity").val()==""){
						swal("Please enter full information in Details location "+ i ,"","error");
						check += 1;
					}
				});
				if( $name.val() !="" && $time.val() !="" && ids.length !=0 && check ==0){
					//Create Details( )
					var details = [];				
					$.each(ids, function(i, v) {
						for(let j=i+1;j<ids.length;j++){
							if($("#" + ids[j]).find("#btntypes").val()==$("#" + v).find("#btntypes").val() && $("#" + ids[j]).find("#btnlevel").val()==$("#" + v).find("#btnlevel").val()){
								var type=$("#" + ids[j]).find("#btntypes").val();
								var quantity=$("#" + ids[j]).find("#quantity").val();
								ids.splice(j,1);
								var strt = {
										types : type,
										quantitys : quantity
								};
								appear.push(strt);	
							}
						};						
					});
					$.each(ids,function(i,v){
						var quantitys = Number($("#" + v).find("#quantity").val());
						$.each(appear,function(j,k){
							 if(k.types == $("#" + v).find("#btntypes").val()){
								quantitys+= Number(k.quantitys); 
							}
						});
					 	var str = { id : $("#"+v).find("#lbID").text(),
					 			typeid : $("#" + v).find("#btntypes").val(),
								level : $("#" + v).find("#btnlevel").val(),
								quantity : quantitys}; 
						details.push(str);
					});
					//
	 				var values = JSON.stringify({
	 					id : id,
						name : $name.val(),
						time : $time.val(),
						details : details
					});			
					 $.ajax({
						type : 'POST',
						url : sessionStorage.getItem('API')+'test/update/'+id,
						beforeSend: function (xhr) {
						    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
						},
						data : values,
						contentType : 'application/json',
						success : function(data) {
							swal({
								title : data.message,
								text : "",
								icon : "success"
							}).then(()=>{window.location.href = "http://localhost:8080/MultiChoose_02/home/test"})
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