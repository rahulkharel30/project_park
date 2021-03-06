<!DOCTYPE html>
<html>
    <head>
        <meta name = "viewport" content="width = device-width, initial-scale = 1">
        <meta charset="utf-8">
        <title>Show Data</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans&family=Montserrat:wght@900&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <script>
      // Initialize and add the map
      function initMap() {
        // The location of Bharatpur
        const bharatpur = { lat: 27.6696323, lng: 84.4312862 };
        // The map, centered at Bharatpur
        const map = new google.maps.Map(document.getElementById("map"), {
          zoom: 12,
          center: bharatpur,
        });
        // The marker, positioned at Bharatpur
        const marker = new google.maps.Marker({
          position: bharatpur,
          map: map,
        });
      }
    </script>
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
                    <a class = "nav-link" href = "index1.php">Home</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "users1.php">Blood Donors</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "blood_bank_1.php"> Blood Bank</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "doctor_appointment_1.php"> Doctor's Appointment</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "available_beds_1.php"> Available Beds</a>
                </li>
                <li class = "nav-item">
                    <a type = "button" class = "nav-link" id="logout">Logout</a>
                </li>

            </ul>
        </div>
        
    </nav>
    <br>
    <br>
    <a class = "btn btn-outline-warning btn-dark" href = "alert1.php" >See Alerts! </a>
    <br>
     <?php
     session_start();
        include ("connection1.php");
        include("functions.php");
        $sql = "SELECT name, age, gender, blood_group, phone_number, address FROM users order by id desc";
        $result = $con->query($sql);
        ?>
      

    <h1>Blood Donor Information</h1>
            <table class = "table myTable1">
            <?php
            if ($result->num_rows > 0)
            {
            echo "<thead>";
                echo "<tr>";
                    echo "<th scope = 'col'> Name </th> ";
                    echo "<th scope = 'col'> Blood Group  </th> ";
                    echo "<th scope = 'col'> Age </th> ";
                    echo "<th scope = 'col'> Gender </th> ";
                    echo "<th scope = 'col'> Phone Number </th> ";
                    echo "<th scope = 'col'> Address </th> ";

                echo "</tr>";
            echo  "</thead>";
            // output data of each row
            while($row = $result->fetch_assoc())
            {
            echo "<tbody>";
                echo "<tr>";
                    echo "<td> $row[name]</td> ";
                    echo "<td> $row[blood_group]</td> ";
                    echo "<td> $row[age]</td> ";
                    echo "<td> $row[gender]</td> ";
                    echo "<td> $row[phone_number]</td> ";
                    echo "<td> $row[address]</td> ";
                echo "</tr>";
            echo "</tbody>";
            }
            }
            ?>
        </table>
        <h2 style="margin-top: 2rem; font-weight: 700; color: white;">Alert Nearby Donors For Help!</h2>
        <a class="btn btn-lg btn-outline-danger alert" href = "forms/alert_input1.php">
         Alert for Blood!            
        </a><br>
        <br>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="../index0.js" charset="utf-8"></script>

    </body>
</html>