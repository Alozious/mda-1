<?php 
// connecting to the database
$con = mysqli_connect("localhost", "root", "", "db_name");

// checking if the database connection was succesfull
if($con == true){
    echo "The Connection to the database was succesfull";
}

// selecting data from the database
$result = mysqli_query($con, "SELECT * FROM table_name");

// looping over the returned data to access each row and column
while($row = mysqli_fetch_array($result)){
    echo $row['col_name'];
}


?>

