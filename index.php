<?php include 'header.php' ?>
	<section>
		<h2>Login</h2>
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
					<button type="submit">Enviar</button>
				</table>
			</form>
		</div>
	</section>
<?php include 'footer.php' ?>