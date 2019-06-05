<?php
	$conect = mysqli_connect('127.0.0.1', 'root', '', 'danil_pn_09');
	$sql = mysqli_query($conect, "INSERT INTO twit (text, logo, title, img)
			VALUES ('".$_POST["hugan"]."','avatar.jpg','Vi','habr.jpg')");
	header('Location: http://28u/index.php');
?>