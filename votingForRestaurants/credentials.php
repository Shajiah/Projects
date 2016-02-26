<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>

	<body>
		<h1> Vote for Your Favorite Cuisine </h1>
		<h4> To vote, enter your name and email, and click Submit! </h4>
		<form action = "credentials.php" method="post">
			Name: 
				<input type = "text" name = "name">
			<br>
			Email: 
				<input type = "text" name = "email">
			<br><br><br>
			
			<input type = "submit" name = "thesubmit" value = "Submit"> 
		</form>
	</body>

</html>

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

	$name = '';
	$errors = '';
    $email = '';

	if(!empty($_POST))
	{
        //Get login info, trim whitespace
		$name = trim($_POST['name']);
		if($name == '') 
		{
				$errors .= 'Please enter a valid Name.<br/>';
		}

        //Get password info, trim whitespace
        $email = trim($_POST['email']);
        if($email == '') 
        {
        	$errors .= 'Please enter an Email Address.';
		}
		if (!(preg_match("/.com/", $email) and preg_match("/@/", $email)))
		{
			$errors .= "Not a valid email";	
		}	


    	//check to see if they've registered before or not. 
    	//if it's 0, then that means the two strings are equal and they've already voted
    	$emailquery = "SELECT email FROM User WHERE email = ' ".$email."' "; 
    	mysqli_query($con, $emailquery);

    	if (strcmp($email, $emailquery) == 0)
    	{
    		//"you already voted"
    		$errors .= "You already voted";
    	}

    	else //send to voting page and record in user table 
    	{
    		$insertuser = "INSERT INTO User (name, email) VALUES (' ".$name." ', ' ".$email." ')";
    		mysqli_query($con, $insertuser);
    		exit(header('Location: voting.php'));
    	}

    }

    mysqli_close($con);
?>