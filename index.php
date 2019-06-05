<!DOCTYPE html>
<html>
<head>
	<title>jfefbewfui</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body class="bg-light">
	<!--Это чтото-->
<?php
			$conect = mysqli_connect('127.0.0.1', 'root', '', 'danil_pn_09');
			$query = mysqli_query($conect, "SELECT * FROM twit ORDER BY id DESC");
			$queryg = mysqli_query($conect, "SELECT * FROM gigi");
			?>
<div class="header">
	<div class="container-fluid bg-wnite">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	</div>
</div>

	<div class="container">
		<div class="row mt-2">
		<div class="col-2">
			<div>
				<h3>
					Акуратные темы для вас			
				</h3>
				<?php
				for($i = 0; $i < $queryg->num_rows; $i++){;
					$twit = $queryg ->fetch_assoc();
					echo '<div> <a href="' . $twit['link'] . '"> ' . $twit['name'] . '</a> <p> Твитов: ' .  $twit['twits'] . '</p>';
				};
				?>
			</div>
		</div>
		<div class="col-5 p-2 pl-5">			
			<div class="row">
		<form method="post" action="ggaf.php"> 
			<input name="hugan">
			<button name="ggaf">
				Азинуть
			</button>
		</form>
	</div>
			<div class="col-12 row p-2 pl-3">
				<div class="col-2 ">
					<?php
					for($i = 0; $i < $query->num_rows; $i++){
					$logo = $query ->fetch_assoc();
					echo '<img src="' . $logo['logo'] . '">';
					?>
				</div>
				<div class="col-10 ml-5">
					<?php
					echo '<div class="ml-3">' . $logo['title'] . '</div>';
					?>
					<div class="row mt-4 ml-1 col-12">
					<?php
					echo '<div class="ml-3">' . $logo['text'] . '</div>';
					?>
					<?php
					echo '<img src="' . $logo['img'] . '" class="img">';
				
					?>
					</div>	
					<div class="row mt-4 ml-1 col-12">
						<div class="col-2 ml-3"> <img src="comment.png"></div>
						<div class="col-2 ml-3"> <img src="retweet.png"></div>
						<div class="col-2 ml-3"> <img src="like.png"></div>
						<div class="col-2 ml-3"> <img src="envelope.png"></div>
					</div>
					<?php
				?>
				<form action="gg.php" method="GET">		
				<?php
				echo '<input type="" name="id" style="display: none" value="' . $logo['id'] . '">';
				echo '<button> МАЙНЦКРУВТАДАХТАР </button>';
				?>			
			</form>
			<form action="str.php" method="GET">
				<?php
				echo '<input type="" name="id" style="display: none" value="' . $logo['id'] . '">';
				echo '<input type="" name="text" style="display: none" value="' . $logo['text'] . '">';
				echo '<button> МАЙНЦКРУВТАДАХТАР2 </button>';
				?>
			</form>
				<?php
				};
				
					?>
				</div>
			</div>	
				</div>

		<div class="col-3">
			
		</div>
	</div>
	</div>
</body>
</html>