<?php

session_start();
if(!isset($_SESSION["uid"])){
	header("location:index1.php");


			$sql = "DELETE FROM carro WHERE user_id = '$cm_user_id'";
			if (mysqli_query($con,$sql)) {
				?>
					<!DOCTYPE html>
					<html>
						<head>
							<meta charset="UTF-8">
							<title>La Comida de Mamá</title>
							<link rel="stylesheet" href="css/bootstrap.min.css"/>
							<script src="js/jquery2.js"></script>
							<script src="js/bootstrap.min.js"></script>
							<script src="main.js"></script>
							<style>
								table tr td {padding:10px;}
							</style>
						</head>
					<body>
						<div class="navbar navbar-inverse navbar-fixed-top">
							<div class="container-fluid">	
								<div class="navbar-header">
									<a href="#" class="navbar-brand">La Comida de Mamá</a>
								</div>
								<ul class="nav navbar-nav">
									<li><a href="index1.php"><span class="glyphicon glyphicon-home"></span>Inicio</a></li>
									<li><a href="profile.php"><span class="glyphicon glyphicon-modal-window"></span>Producto</a></li>
								</ul>
							</div>
						</div>
						<p><br/></p>
						<p><br/></p>
						<p><br/></p>
						<div class="container-fluid">
						
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="panel panel-default">
										<div class="panel-heading"></div>
										<div class="panel-body">
											<h1>¡Gracias! </h1>
											<hr/>
											<p>Hola <?php echo "<b>".$_SESSION["name"]."</b>"; ?>,Su proceso de pago se ha cmpletado correctamente <b><?php echo $trx_id; ?></b><br/>
											Puede continuar comprando <br/></p>
											<a href="index1.php" class="btn btn-success btn-lg">Continue Comprando</a>
										</div>
										<div class="panel-footer"></div>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
					</body>
					</html>

				<?php
			}
		}else{
			header("location:check.php");
		}
		
	




?>

















































