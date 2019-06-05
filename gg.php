<?php 
$conect = mysqli_connect('127.0.0.1', 'root', '', 'danil_pn_09');
$gg = mysqli_query($conect, "DELETE FROM twit WHERE id='". $_GET['id'] ."'");
header('Location: http://28u/index.php');
?>