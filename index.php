<?php 
	// INLUIR FICHEROS 
include 'funciones.php';

session_start();
yes_session();

?>
<?php
include 'header.php';
?>


<section>
	<div class="container">
		
		<div class="col-lg-4 col-lg-offset-4">

			<form action="conexion.php" method="POST" class="form-signin">
				<h2 class="form-signin-heading">Login</h2>
				<label for="profesor" class="sr-only">usuario</label>
				<input name="profesor" type="text" id="inputEmail" class="form-control" placeholder="Email address" required autofocus="">
				<label for="clave" class="sr-only">Contraseña</label>
				<input name="contrasena" type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
				<div class="checkbox">
					<label>
						<input type="checkbox" value="remember-me"> Remember me
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			</form>

		</div> <!-- /container -->

	</div>
</section>

<?php 
include 'footer.php';
// desconectar();
?>