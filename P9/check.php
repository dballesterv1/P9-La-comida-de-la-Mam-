
    <?php
      session_start();

      
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
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<a href="#" class="navbar-brand">La Comida de Mamá</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="index1.php"><span class="glyphicon glyphicon-home"></span>Inicio</a></li>
				<li><a href="index1.php"><span class="glyphicon glyphicon-modal-window"></span>Producto</a></li>
			</ul>
		</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading">Confirme su compra</div>
					<div class="panel-body">
					
					
						<form class="form-amount" action="logout.php" method="post">
						<pre>	<label for="">  Si confirma recibira su pedido en 24 horas</label></pre>
						
							<input type="submit" class="btn btn-success" style="float:right;" action="payment_success.php" Value="Aceptar">
													
																		
						</form><br><br><br>
							
					
						<form class="form-amount" action="index1.php" method="post">
								
						<pre>	<label for="">Pulse cancelar para seguir comprando</label></pre>
							
							
							<input type="submit" class="btn btn-success" style="float:right;" action="profile.php" Value="Cancelar">
											
						</form>
				</div>
				<div class="panel-footer"><div id="e_msg"></div></div>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
</body>


</html>