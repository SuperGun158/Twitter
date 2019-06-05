<?php
$conect = mysqli_connect('127.0.0.1', 'root', '', 'danil_pn_09');
$query = mysqli_query($conect, "UPDATE twit SET text='". $_POST['good'] ."' WHERE id='". $_POST['id'] ."'");
header('Location: http://28u/index.php');
?>