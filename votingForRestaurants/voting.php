<?php
	error_reporting(E_ALL);
	ini_set('display_errors', '1');
	session_start();
	//fully specify the domain 
	//the connection to the database
	$con = mysqli_connect('egon.cs.umn.edu', 'C4131S15U105', '14358', 'C4131S15U105', '3307');


	//check connection
	if (mysqli_connect_errno())
	{
		echo "failed to connect to mysql: " . mysqli_connect_error();
		exit(1);
	}

	$errors = '';

	if(!empty($_POST))
	{
		$cuisine = trim($_POST['value']);
		$recordvote = "UPDATE Vote SET numvotes += 1 WHERE cuisine = ' ".$cuisine." ' ";
		mysqli_query($con, $recordvote);
	}

	else
	{
		$errors .= 'Please Make a Selection';
	}


	mysqli_close($con);

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="style.css">
		<style>
		 	body 
		 	{
		 		background-image: url("plate1.jpeg");
				background-repeat: no-repeat;
				background-size: cover;
		 	}
		</style>
	</head>

	<body>
		<h1 id = "votingtitle"> Voting Question: </h1>
		<p> What is your favorite cuisine? </p>
		<div id = "radiobutton">

			<form action = "Voting.php" method = "post">
				<input type="radio" name="cuisine" value="indian" > Indian
				<br>

				<input type="radio" name="cuisine" value="chinese">Chinese
				<br>

				<input type="radio" name="cuisine" value="mexican"> Mexican
				<br>

				<input type="radio" name="cuisine" value="italian"> Italian
				<br>

				<input type="radio" name="cuisine" value="thai"> Thai
				<br><br><br><br>
				
				<input type = "submit" name = "thesubmit" value = "Submit"> 
			</form>

		<div>		

	</body>
</html>