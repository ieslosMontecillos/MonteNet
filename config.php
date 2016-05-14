<?php 
	// INLUIR FICHEROS 
include 'funciones.php';

session_start();
no_session();

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
					<div class="col-lg-6">
						<h3>Información del Centro</h3>

					</div>
					<div class="col-lg-6">
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