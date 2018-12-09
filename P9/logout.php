<?php

session_start();

unset($_SESSION["uid"]);

unset($_SESSION["name"]);

echo "<b>".$_SESSION["name"]."</b> Su proceso de pago se ha cmpletado correctamente <b>";

header("location:index.php");

  
  
?>