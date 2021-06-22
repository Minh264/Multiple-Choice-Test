<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Mobster - One page app template</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
#myInput {

  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 600px;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
</style>

</head>
<body>
			<div class="card-page"><input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Test Name..." title="Type in a name"></div>
			<div class="card-page" id="fload">
				<table id="ftable">
					<tr >
						<th>ID</th>
						<th>Name</th>
						<th>Time</th>
						<th>Quantity</th>					
						<th></th>
						<th></th>
					</tr>					
				</table>
			</div>
		
<script>
	$(document).ready(function() {
		$.ajax({
			type : 'GET',
			url : 'https://testing-api-1.herokuapp.com/api/test',
			beforeSend: function (xhr) {
			    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
			},
			success : function(data) {			
				var trHTML = '';
		        $.each(data, function (i, item) {	        	
		        		 trHTML += '<tr><td>' + item.id + '</td><td>'+ item.name + '</td><td>' + item.time + '</td><td>'+ item.quantity + '</td><td><button id="btnupdate" class="btn btn-primary" >Update</button></td><td><button id="btndelete" class="btn btn-primary" >Delete</button></td></tr>';	      	        	          
		        });
		        $('#ftable').append(trHTML);
			},
			error : function() {				
				alert("Create Failed!");
			}
		});
	});
	</script>
<script>
$(function () {
	 $(document ).on("click","#ftable #btndelete",function() {
		    let tr = $(this).closest('tr');
		    let a = tr.find('td').eq(0).html(); 
		    	var res="https://testing-api-1.herokuapp.com/api/test/delete/";
		    	var urls = res.concat(a);
		    	 $.ajax({
		    		type : 'GET',
		    		url : urls,
		    		beforeSend: function (xhr) {
					    xhr.setRequestHeader('Authorization', 'Bearer '+sessionStorage.getItem('accessToken'));
					},
		    		success : function(data) {			
		    			alert(data.message);
		    			window.location.href = "http://localhost:8080/MultiChoose_02/home/test";
		    		},
		    		error : function(data) {				
		    			alert("Delete Failed!");
		    		}
		    });  
		  });
	 $(document ).on("click","#ftable #btnupdate",function() {
		    let tr = $(this).closest('tr');
		    let a = tr.find('td').eq(0).html(); 
		    $("#fload").load("test-management/test-update-add/"+a);
		    		window.location.href = "http://localhost:8080/MultiChoose_02/home/test#"+a;
		  });
})
function myFunction() {
		  var input, filter, table, tr, td, i, txtValue;
		  input = document.getElementById("myInput");
		  filter = input.value.toUpperCase();
		  table = document.getElementById("ftable");
		  tr = table.getElementsByTagName("tr");
		  for (i = 0; i < tr.length; i++) {
		    td = tr[i].getElementsByTagName("td")[1];
		    if (td) {
		      txtValue = td.textContent || td.innerText;
		      if (txtValue.toUpperCase().indexOf(filter) > -1) {
		        tr[i].style.display = "";
		      } else {
		        tr[i].style.display = "none";
		      }
		    }       
		  }
		}
</script>
</body>

</html>