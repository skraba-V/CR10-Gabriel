<?php

$localhost = "127.0.0.1";
$username= "root";
$password= "";
$dbname="BigLibrary_Gabriel";

$connect = mysqli_connect($localhost, $username, $password, $dbname);

if (!$connect) {
    die("Connection failed: " . mysqli_connect_error());
// }else {
//     echo "Connected successfully";
}


