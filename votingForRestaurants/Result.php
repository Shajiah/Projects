<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="style.css">
		<!-- <title> </title> -->
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


		$sql = "SELECT SUM(numvotes) FROM Vote";
		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_array($result);
		$totalvotes = $row[0];

		$indianvotes = "SELECT numvotes FROM Vote WHERE cuisine = 'Indian' ";
			mysqli_query($con, $indianvotes);
		$chinesevotes = "SELECT numvotes FROM Vote WHERE cuisine = 'Chinese' ";
			mysqli_query($con, $chinesevotes);
		$mexicanvotes = "SELECT numvotes FROM Vote WHERE cuisine = 'Mexican' ";
			mysqli_query($con, $mexicanvotes);
		$italianvotes = "SELECT numvotes FROM Vote WHERE cuisine = 'Italian' ";
			mysqli_query($con, $italianvotes);
		$thaivotes = "SELECT numvotes FROM Vote WHERE cuisine = 'Thai' ";
			mysqli_query($con, $thaivotes);

		$indianpercent = round((($indianvotes / $totalvotes) * 100), 1);
		$chinesepercent = round((($chinesevotes / $totalvotes) * 100), 1);
		$mexicanpercent = round((($mexicanvotes / $totalvotes) * 100), 1);
		$italianpercent = round((($italianvotes / $totalvotes) * 100), 1);
		$thaipercent = round((($thaivotes / $totalvotes) * 100), 1);

		mysqli_close($con);

		?> 
		<h1> Results for all Users </h1>
		<br> <br>
		<h4> Indian </h4> <?php echo $indianpercent ?>
		<h4> Chinese </h4> <?php echo $chinesepercent ?>
		<h4> Mexican </h4> <?php echo $mexicanpercent ?>
		<h4> Italian </h4> <?php echo $italianpercent ?>
		<h4> Thai </h4>  <?php echo $thaipercent ?>

	</body>
</html>

