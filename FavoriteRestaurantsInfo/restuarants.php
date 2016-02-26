<?php

//copy file content into a string variable
$json_file = file_get_contents('new_restaurants.json');

//convert the string to a json object
$jfo = json_decode($json_file);


$restaurants = $jfo->restuarants; 


?>

<!DOCTYPE html>
<html>

 
	<head>
    	<title> My 5 Favorite Restaurants </title>
    	<meta charset="UTF-8">
    	<link rel="stylesheet" type="text/css" href="styleRestaurants.css">
    	
    	<script type="text/javascript" src="displayfunction.js">

    	</script>
	</head>


	<body>
    	


		<table style="background-color:lightCyan">


			<?php
				foreach ($restaurant as $restaurant)
				{
					echo $restaurant->name;
					echo $restaurant->type;
					echo $restaurant->address;
					echo $restaurant->phone;
					echo $restaurant->rating;
					echo $restaurant->hours;

				}

			?>
				<tr> 
					<th colspan="7"> 
						<font color="red"> My 5 Favorite Resturants </font> 
					</th>
				</tr>

				<tr>
					<th> Restaurant </th>
					<th> Picture </th>
					<th> Description </th>
					<th> Address </th>
					<th> Contact Number </th>
					<th> Rating </th>
					<th> Weekly Schedule </th>
				</tr>

				<!-- Pizza Luce -->
			<tr> 
				<td> <a href="http://www.yelp.com/biz/pizza-luc%C3%A9-minneapolis-7">
						<b> Pizza Luce </b>
					 </a>	
				</td> 
				<td> 
						<button type = "button" id = "1st" onclick="display(1)">
							Picture
						</button>
				</td>
				<td> Italian </td>
				<td> 800 West 66th Street, Minneapolis, MN 55423 
				</td>
				<td> (612) 767-8603 </td>
				<td> 4.0 </td>
				<td> Everyday <i>11 am - 2:30 am </i> </td>	
			</tr>

			<!-- Noodles & Company -->
			<tr>
				<td> <a href="http://www.yelp.com/biz/noodles-and-company-minneapolis-4">
						<b> Noodles & Company </b>
					</a>
				</td>
				<td> 
						<button type = "button" id = "2nd" onclick="display(2)">
								Picture
						</button>
				</td>
				<td> Italian and Asian Fusion</td>
				<td> 820 Washington Avenue SE, Minneapolis, MN 55414 
				</td>
				<td> (612) 331-4865</td>
				<td> 3.5 </td>
				<td> Everyday <i>10:30 am - 10 pm </i> </td>
			</tr>

				<!-- Red Lobster -->
			<tr>
				<td> <a href="http://www.yelp.com/biz/red-lobster-roseville">
						<b> Red Lobster </b>  
					 </a>
				</td>
				<td>
					<button type = "button" id = "3rd" onclick="display(3)">
								Picture
					</button>
				</td>
				<td> Traditional American Seafood</td>
				<td> 2330 Prior Avenue Roseville, MN 55113 
				</td>
				<td> (651) 636-9800 </td>
				<td> 3.5 </td>
				<td> Everyday <i> 11 am - 10 pm </i> </td>
			</tr>

				<!-- Kyoto -->
			<tr>
				<td> <a href = "http://www.yelp.com/biz/kyoto-sushi-minneapolis"> 
						<b> Kyoto </b>
					 </a>	
				</td>
				<td>
					<button type = "button" id = "4th" onclick="display(4)">
							Picture
					</button>
				</td>
				<td> Japanese Sushi </td>
				<td> 2841 Lyndale Ave S Minneapolis, MN 55408 
				</td>
				<td> (612) 870-9999 </td>
				<td> 3.0 </td>
				<td> Monday - Thursday <i> 11 am - 11 pm </i>, <br>
					  Friday & Saturday <i> 11 am - 12 am</i>, <br>
					Sunday <i>11 am - 10 pm </i> </td>
			</tr>

				<!-- Filfillah -->
			<tr>
				<td> <a href = "http://www.yelp.com/biz/filfillah-restaurant-columbia-heights"> 
							<b> Filfillah </b> 
					 </a> 
				</td>
				<td>
						<button type = "button" id = "5th" onclick="display(5)">
								Picture
						</button>
				</td>
				<td> Turkish, Middle Eastern, Mediterranean </td>
				<td> 4301 Central Ave NE Columbia Heights, MN 55421
				</td>
				<td> (763) 781-2222 </td>
				<td> 4.5 </td>
				<td> Everyday <i>11 am - 11 pm </i> </td>
			</tr>
			</tbody>
		</table>

		<FORM method="LINK" Action="restaurantsForm.html">
			<input type="submit" value="Add More Restaurants">			
		</FORM>

		<br><br><br>
		<img src="http://25.media.tumblr.com/tumblr_m4m68oLOst1qk7q2so1_500.gif" alt="Computer Man" style="width:200px;height:200px">

		<!-- <img src="redlobster.gif" alt="Computer Man" style="width:200px;height:200px"> -->

		<img src="food.gif" alt="Computer Man" style="width:300px;height:200px">

		<img src="jlawfood.gif" alt="Computer Man" style="width:300px;height:200px">


		<!-- <img src="NC.gif" alt="Computer Man" style="width:300px;height:200px">
		<img src="sushi.gif" alt="Computer Man" style="width:300px;height:200px">
		<img src="filfillah.gif" alt="Computer Man" style="width:300px;height:200px">
 -->

		

	<!-- <div id="header">
		<h2>Sarcastic things I'd like to say about Food</h2>
		<p>
			I won't be impressed with technology until I can download food.

		</p>

		<p>
			WTF (where's the food)	
		</p>

		<p>
			Fact: People disappoint but Pizza is ETERNAL.
		</p>
	</div> -->

		<div id="footer">
			Copyright © Code is the property of Shajiah Amin
		</div>

		
		<p> This was tested using chrome </p>

	</body>
</html>
