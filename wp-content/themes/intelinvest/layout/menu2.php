	<div id="menu" class="hidden-xs col-sm-8 col-md-8">
		<nav>
			<ul class="list-inline">
				<li><a href="<?php echo get_bloginfo('home'); ?>/">HOME</a></li>
				<li><a href="<?php echo get_bloginfo('home'); ?>/#planos">PLANOS</a></li>
				<li><a href="<?php echo get_bloginfo('home'); ?>/#servicos" class="margin">SERVIÇOS</a></li>
				<li><a href="<?php echo get_bloginfo('home'); ?>/#sobre">SOBRE</a></li>
				<li><a href="<?php echo get_bloginfo('home'); ?>/contato" class="margin border">CONTATO</a></li>
				<?php 
				if(!$_SESSION['user_id_intelinvest']){ ?>
					<li><a href="#loginModal" class="margin border jqModal logCad" rel='modal:open'>LOGIN/CADASTRO</a></li>
			<?php	} else {  $urlPerfl = get_bloginfo('home')."/perfil_user?intelinvest=".doCodifica("?user_id_intelinvest=" .$_SESSION['user_id_intelinvest']);?>
				<li><a href="<?php echo $urlPerfl; ?>" class="margin border scroll" data-offset="0">PERFIL</a></li>
				<li><a href="logout" class="margin border logCad">LOGOUT</a></li>
				<li><a href="<?php echo get_bloginfo('home'); ?>/painel-controle" class="margin border">PAINEL</a></li>
			<?php } 
			?> 
				<li><a href="<?php echo get_bloginfo('home'); ?>/cadastro-usuario" class="margin border queroContratar"  data-offset="0">Quero contratar!</a></li>
			</ul>
		</nav>
	</div>
	<div id="buttom_menu" class="btn-group hidden-sm hidden-md hidden-lg col-xs-8">
	 	<button type="button" class="btn btn-default dropdown-toggle hidden-md" data-toggle="dropdown" id="button_dropdown">
	    	Menu <span class="caret"></span>
	  	</button>
	  	<ul class="dropdown-menu" role="menu">
	    	<li><a href="<?php echo get_bloginfo('home'); ?>/">HOME</a></li>
			<li><a href="<?php echo get_bloginfo('home'); ?>/#perfil">PLANOS</a></li>
			<li><a href="<?php echo get_bloginfo('home'); ?>/#servicos">SERVIÇOS</a></li>
			<li><a href="<?php echo get_bloginfo('home'); ?>/#sobre">SOBRE</a></li>
			<li><a href="contato" class="margin border">CONTATO</a></li>
			 <?php 
				if($_SESSION['user_id_intelinvest']){  ?>
					<li><a href="#loginModal" class="logCad margin border scroll" data-offset="0">LOGIN/CADASTRO</a></li>
			<?php	} else { $urlPerfl = get_bloginfo('home')."/perfil_user?intelinvest=".doCodifica("?user_id_intelinvest=" .$_SESSION['user_id_intelinvest']);?>
				<li><a href="<?php echo $urlPerfl; ?>" class="margin border scroll" data-offset="0">PERFIL</a></li>
				<li><a href="logout" class="margin border scroll logCad" data-offset="0">LOGOUT</a></li>
			<?php } 
			?> 
			
		</ul>
	</div>
			
		</ul>
	</div>
</div> <!-- div do header -->