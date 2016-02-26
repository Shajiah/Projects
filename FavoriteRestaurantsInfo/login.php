   <!DOCTYPE html>

<html>

 
    <head>
        <!-- <title> My 5 Favorite Restaurants </title> -->
        <meta charset="UTF-8">
        <title> LOGIN </title>
    </head>

    <body>
        <h2> Enter your USER ID and password </h2>

        <form action = "login.php" method="post">

            <label for="user"> 
                Login: 
            </label>
            <input type="text" name="login" value="" />
            <br /> <br />
            
            <label for="user">
                Password: 
             </label>
             <input type="password" name="password" value="" />
             <br /><br />

             <input type="submit" value="Submit" />

        </form>
    <!-- <form action = "restaurants.html">
            User ID:
            <input type = "text" name = "username">
            Password:
            <input type = "text" name = "password">
        </form>  -->


    </body>

</html>

    <?php

        error_reporting(E_ALL);
        ini_set('display_errors', '1');
        session_start();

        if(isset($_SESSION['info'][0]))
        {
            exit(header('Location: restaurants.html'));
            
        }

        $login = '';
        $errors = '';
        $pw = '';
        if(!empty($_POST))
        {

            //get the username and make sure it isnt empty
            $login = trim($_POST['login']);   //trim  white spaces
            if($login == '') $errors .= 'Invalid Username';


            //get the password and make sure it isnt empty
            $pw = trim($_POST['pw']);   //trim  white spaces
            if($pw == '') $errors .= 'Invalid Password';


            if($errors == '')
                {
                    //read in xml file
                    $myxml = simpexml_load_file('details.xml');
                    $match = false; 


                    foreach($myxml->children() as $auser)
                        {
                            $usernames =  $auser->username;
                            $password = $auser->password);

                            if ($login == $usernames)
                            {
                                $match = true;

                                if ($pw == $password)
                                {
                                    $_SESSION['info'] = $usernames; 
                                    exit(header('Location: restaurants.html'));
                                }
                            }


                        }

                    if ($match == false)
                    {
                         $login = '';
                        $pw = '';
                        $errors = 'Please enter a valid value for the User Login field';
                        
                    }    

                    else 
                    {
                       $pw = '';
                        $errors = 'Please enter a valid value for the Password field';
                    }   

                }
        }

    ?>





<!-- php
    

 -->