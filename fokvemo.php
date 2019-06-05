<<?php $conect = mysqli_connect('127.0.0.1', 'root', '', 'danil_pn_09');
$gg = mysqli_query($conect, "DELETE FROM good (gigi) VALUES ('" . $_POST["post_text"] . "')");
?>