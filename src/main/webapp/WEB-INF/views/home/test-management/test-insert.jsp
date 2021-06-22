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
			<h3 class="fw-normal">Insert Test</h3>
			<div class="form-group">
				<label for="name" class="fw-medium fg-grey">Name</label> <input
					type="text" class="form-control" id="name" placeholder="Enter Name...">
			</div>
			<div class="form-group">
				<label for="name" class="fw-medium fg-grey">Time</label> <input
					type="number" class="form-control" id="time" placeholder="Enter Time...">
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
		</div>
	</div>
	<script>
		var phantuchon = $("#fmain");
		var ids = new Array();
		function append_jquery() {
			var id = "Page" + Math.floor(Math.random() * 10000);
			ids.push(id);
			$('#fmain').append(
					$('<div id="'+id+'"></div>').load(
							'../home/test-management/test-insert-add'));
		}
		$(document).ready(function() {
			var $name = $('#name');
			var $time = $('#time');
			var appear = new Array();			
			$('#btnsend').on('click', function() {
				var check = 0;
				if($name.val()=="" || $time.val() =="" || ids.length == 0){
					alert("Please enter full information !");
				};
				$.each(ids,function(i,v){
					if($("#" + ids[i]).find("#btntypes").val()=='base' || $("#" + ids[i]).find("#btnlevel").val()=='base' || $("#" + ids[i]).find("#quantity").val()==""){
						alert("Please enter full information in Details location "+ i );
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
					 	var str = { typeid : $("#" + v).find("#btntypes").val(),
								level : $("#" + v).find("#btnlevel").val(),
								quantity : quantitys}; 
						details.push(str);
					});
					//
					 var values = JSON.stringify({
						name : $name.val(),
						time : $time.val(),
						details : details
					});			
					 $.ajax({
						type : 'POST',
						url : 'https://testing-api-1.herokuapp.com/api/test',
						beforeSend: function (xhr) {
						    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
						},
						data : values,
						contentType : 'application/json',
						success : function(data) {
							alert(data.message);
							window.location.href = "http://localhost:8080/MultiChoose_02/home/test";
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