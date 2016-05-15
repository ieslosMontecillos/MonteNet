<?php 
	// INLUIR FICHEROS 
include 'funciones.php';

session_start();
no_session();

conectar();

if (count($_POST)!=0) {
	$id_centro = $_POST["id_centro"] ;
    $nombre = $_POST["nombre"] ;
    $email = $_POST["email"] ;
    $direccion = $_POST["direccion"] ;
    $cp = $_POST["cp"];
    $localidad = $_POST["localidad"] ;
    $provincia = $_POST["provincia"] ;
    $telefono = $_POST["telefono"] ;
    $fax = $_POST["fax"] ;
    $director = $_POST["director"] ;
    $jefe_estudio = $_POST["jefe_estudio"] ;
    $secretario = $_POST["secretario"] ;



    $sql = "UPDATE centro SET id_centro='$id_centro', nombre='$nombre', direccion='$direccion', email='$email', cp='$cp', localidad='$localidad', provincia='$provincia', telefono='$telefono', fax='$fax', director='$director', jefe_estudio='$jefe_estudio', secretario='$secretario'  WHERE cod='0' ; " ;
    
    echo "$sql";

    $res = mysql_query($sql) ;

    desconectar();

    header('Location:config.php') ;
}

// Consulto los datos del centro antes de enviar el form
$sql = "SELECT * FROM centro ;" ;
$res = mysql_query($sql) ;
$fila = mysql_fetch_assoc($res) ;

?>
<?php
include 'header.php';
?>

<section>
	<div class="container">
		<h2>Configuración MonteNet</h2>
		<hr/>
		<div>
			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#config" aria-controls="home" role="tab" data-toggle="tab">Configuración General</a></li>
				<!-- <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
				<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
				<li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li> -->
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="config">
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<h3>Información del Centro</h3>	
					
						<form method="POST" action="config.php">
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Codigo del Centro *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="id_centro" value="<?= $fila["id_centro"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Nombre del Centro *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="nombre" value="<?= $fila["nombre"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">email *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="email" value="<?= $fila["email"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Direccion *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="direccion" value="<?= $fila["direccion"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Codigo Postal *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="cp" value="<?= $fila["cp"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Localidad *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="localidad" value="<?= $fila["localidad"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Provincia *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="provincia" value="<?= $fila["provincia"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Telefono *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="telefono" value="<?= $fila["telefono"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Fax *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="fax" value="<?= $fila["fax"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Director *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="director" value="<?= $fila["director"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Jefe de estudios *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="jefe_estudio" value="<?= $fila["jefe_estudio"];?>" required>
							<span class="col-xs-12 col-sm-12 col-md-5 col-lg-5">Secretario *</span>
							<input class="col-xs-12 col-sm-12 col-md-7 col-lg-7" type="text" name="secretario" value="<?= $fila["secretario"];?>" required>
							<button class="col-xs-12 col-sm-12 col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-8 btn btn-primary" type="submit">Actualizar</button>
						</form>


					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div>
							<h3>Base de Datos</h3>
						</div>
						<div>
							<h3>Mantenimiento</h3>
						</div>
					</div>
				</div>
				<!-- <div role="tabpanel" class="tab-pane" id="profile">...</div>
				<div role="tabpanel" class="tab-pane" id="messages">...</div>
				<div role="tabpanel" class="tab-pane" id="settings">...</div> -->
			</div>
		</div>
	</div>
</section>

<?php 
include 'footer.php'; 
	// desconectar();
?>