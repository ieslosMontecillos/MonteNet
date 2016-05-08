<?php include 'header.php' ?>

<section>
	<form enctype="multipart/form-data" action="uploader.php" method="POST">
		<input name="uploadedfile" type="file" />
		<input type="submit" value="Subir archivo" />
	</form>
</section>

<?php include 'footer.php' ?>