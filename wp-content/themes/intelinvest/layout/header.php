<?php
		include "session.php";
		include "usuario.php";
		include "perfil.php";
		global $session;
		global $perfil;
		global $usuario;
		$session = new Session;
	?>

<html>
	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/swipebox.css" type="text/css" />
		<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/icofont.css" type="text/css" />
		<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/jquery.modal.min.css" type="text/css" />
		<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/intelinvest.css" type="text/css" />

		<script src="<?php bloginfo('template_url'); ?>/js/jquery-2.0.3.min.js"></script>
		<script src="<?php bloginfo('template_url'); ?>/js/bootstrap.min.js"></script>
		<script src="<?php bloginfo('template_url'); ?>/js/jquery.modal.min.js"></script>
		<script src="<?php bloginfo('template_url'); ?>/js/jquery.swipebox.js"></script>
		<script src="<?php bloginfo('template_url'); ?>/js/stellar.js"></script>
		<script src="<?php bloginfo('template_url'); ?>/js/jquery.mask.min.js"></script>
		<script src="<?php bloginfo('template_url'); ?>/js/intelinvest.js"></script>

		<title>Intelinvest</title>
		<link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/img/icon_logo.png" />
		<link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/img/favicon.ico" type="image/x-icon" />
		<link rel="icon" type="image/ico" href="<?php bloginfo('template_url'); ?>/img/favicon.ico" />
	</head>

	<body>
		<?php global $message; echo output_message($message); ?>
	<section class="container-fluid">
		<div class="sobTopo" id="home	">
			<a href="" title="">Aprenda a investir, inscreva-se já!</a>
		</div>
		<div class="row-fluid" id="topo">
			<header class="col-xs-4 col-sm-4 col-md-4">
				<h1><a href="<?php echo get_bloginfo('home'); ?>"><img src="<?php bloginfo('template_url'); ?>/img/logo.png" class="img-responsive" alt="Intelinvest"></a></h1>
			</header>
		
		