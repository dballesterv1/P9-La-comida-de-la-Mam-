<?php

$servername = "localhost";
$username = "root";
$password = "XZMDBpn6wvw3bnF6";
$db = "lacomidademama";
//XZMDBpn6wvw3bnF6

$con = mysqli_connect($servername, $username, $password,$db);


if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>