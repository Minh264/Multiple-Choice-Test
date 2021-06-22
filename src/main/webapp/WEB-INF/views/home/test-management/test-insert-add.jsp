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
	<div class="form-group">
			<select id="btntypes" class="btn btn-primary">
				<option selected value="base">Types</option>
				<option value="1">Toiec Part 1</option>
					<option value="2">Toiec Part 2</option>
					<option value="3">Toiec Part 3</option>
					<option value="4">Toiec Part 4</option>
					<option value="5">Toiec Part 5</option>
					<option value="6">Toiec Part 6</option>
					<option value="7">Toeic Part 7</option>
					<option value="8">Fill Words</option>
					<option value="9">Sorting</option>
					<option value="10">True or False</option>
					<option value="11">Photo</option>
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
			<label for="name" class="fw-medium fg-grey">Quantity</label> <input
				type="number" class="form-control" id="quantity" placeholder="Enter Quantity..">
		</div>
</body>
</html>