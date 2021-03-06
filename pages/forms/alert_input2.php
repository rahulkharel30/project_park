<?php
session_start();
    include("../connection1.php");
    include("../functions.php");
    if($_SERVER['REQUEST_METHOD'] == "POST")
    {
        //something was posted
        $bloods = $_POST['bloods'];
        $places = $_POST['places'];
        $numbers = $_POST['numbers'];

            $query = "insert into alert ( bloods, places, numbers) values ('$bloods','$places','$numbers')";
            mysqli_query($con, $query);
            header("Location: ../alert2.php");
            die;
        
    }
    
?>
<!DOCTYPE html>
<html>
    <head>
        <meta name = "viewport" content= "width = device-width, initial-scale = 1">
        <meta charset="utf-8">
        <title>Signup for Users</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans&family=Montserrat:wght@900&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../../css/styles.css">
    </head>
    <body>
              <nav class = "navbar navbar-expand-lg navbar-dark navbar1">
        <a class = "navbar-brand"><strong>PARK</strong></a>
        <button type="button" class = "navbar-toggler" aria-expanded = "false" aria-controls = "myNavbar" aria-label = "Toggle navigation" data-bs-target = "#myNavbar" data-bs-toggle = "collapse">
            <span class = "navbar-toggler-icon"></span>
        </button>
        <div class = "collapse navbar-collapse" id = "myNavbar">
            <ul class = "navbar-nav realNav">
                <li class = "nav-item">
                    <a class = "nav-link" href = "../index2.php">Home</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "../users2.php">Blood Donors</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "../blood_bank_2.php"> Blood Bank</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "../doctor_appointment_2.php"> Doctor's Appointment</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "../available_beds_2.php"> Available Beds</a>
                </li>
                <li class = "nav-item">
                    <a type = "button" class = "nav-link" id="logout">Logout</a>
                </li>

            </ul>
        </div>
        
    </nav>
        <div class="box">
            <h3>Send Alert For Blood</h3>
            <form method="post">

                        <input type="text" name="bloods" placeholder="Blood Group" required >

                
                

                        <input type="text" name="places" placeholder="Location" required>



                        <input type="number" name="numbers" placeholder="Phone Number"required>
                       

                <button class = "btn btn-md btn-dark myButton" id="button" type="submit">Submit Alert!</button>
            </form>
                   
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="../../index0.js" charset="utf-8"></script>
    </body>
</html>
