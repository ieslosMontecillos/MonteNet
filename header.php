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
		<nav>
			<ul>
				<li>Your menu</li>
				<li>item 2</li>
				<li>item 3</li>
			</ul>
		</nav>
		<div class="container">
			<form action="conexion.php" method="POST">
				<table>
					<tr>
						<td><label for="profesor">Profesor:</label></td>
						<td><input type="text" name="profesor" required/></td>
					</tr>
					<tr>
						<td><label for="clave">Contraseña:</label></td>
						<td><input type="password" name="contrasena" required /></td>
					</tr>
					<button type="submit" class="desktop-20">Enviar</button>
				</table>
			</form>
		</div>
	</header>