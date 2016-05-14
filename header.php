<!DOCTYPE html>
<html lang="es">
<head>
	<!-- METAS -->
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Montenet</title>

	<!-- INTRODUCCIÓN DE CSS -->
	<!-- BOOTSTRAP -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<!-- ESTILOS A MODIFICAR -->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<header>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				
				<!-- Navagación responsive -->
				<div class="navbar-header">
				
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- LOGO o TEXTO -->
					<a class="navbar-brand" href="#">I.E.S Los Montecillos</a>
				
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<!-- NAVEGADOR COMUN -->
					<?php 
						if (count($_SESSION)!=0) {
						
					?>
					<ul class="nav navbar-nav">
						<li><a href="main.php">Inicio <span class="sr-only">(current)</span></a></li>
						<li><a href="#">MonteNet</a></li>
					</ul>
					<?php 
						}
					?>
					<!-- NAVEGADOR DEL ADMIN -->
					<?php 
						if (isset($_SESSION["idea"]) && $_SESSION["idea"]=="admin") {
						
					?>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="admin.php">Administración<span class="sr-only">(current)</span></a></li>
						<li><a href="config.php">Configuración</a></li>
					</ul>
					<?php 
						}
					?>
					<!-- NAVEGADOR DEL USUARIO -->
					<?php 
						if (count($_SESSION)!=0) {
					?>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="logout.php">Cerrar Session</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Perfil</a></li>
								<li><a href="#"></a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
						</li>
					</ul>
					<?php 
						}
					?>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
	</header>