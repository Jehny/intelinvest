	<div id="menu" class="hidden-xs hidden-sm col-md-8">
		<nav>
			<ul class="list-inline">
				<li><a href="#home" class="scroll" data-offset="0">HOME</a></li>
				<!-- <li><a href="#perfil" class="scroll" data-offset="0">PLANOS</a></li> -->
				<li><a href="#servicos" class="margin scroll" data-offset="0">SERVIÇOS</a></li>
				<li><a href="#sobre" class="scroll" data-offset="0">SOBRE</a></li>
				<li><a href="contato" class="margin border">CONTATO</a></li>
				<?php 
				if(!$_SESSION['user_id_intelinvest']){ ?>
					<li><a href="#loginModal" class="margin border jqModal logCad" rel='modal:open'>LOGIN/CADASTRO</a></li>
					<li><a href="<?php echo get_bloginfo('home'); ?>/cadastro-usuario" class="margin border queroContratar"  data-offset="0">Quero contratar!</a></li>
			<?php	} else {  $urlPerfil = get_bloginfo('home')."/perfil_user?intelinvest=".doCodifica("?user_id_intelinvest=" .$_SESSION['user_id_intelinvest']);?>
				
				<?php if(Usuario::isAdministrador($_SESSION['user_id_intelinvest'])){
					$urlPainel = get_bloginfo('home')."/painel-controle?intelinvest=".doCodifica("?user_id_intelinvest=" .$_SESSION['user_id_intelinvest']); ?>
					<li><a href="<?php echo $urlPainel ?>" class="margin border">PAINEL</a></li>
				<?php } ?>
				<li><a href="<?php echo $urlPerfil; ?>" class="margin border">PERFIL</a></li>
				<li><a href="<?php bloginfo('template_url');?>/upload_arquivo_usuario" class="">UPLOAD</a></li>
				<li><a href="logout" class="margin border logCad">LOGOUT</a></li>
			<?php } 
			?> 
			</ul>
		</nav>
	</div>
	<div id="buttom_menu" class="btn-group col-xs-8 hidden-md hidden-lg col-xs-8">
	 	<button type="button" class="btn btn-default dropdown-toggle hidden-md" data-toggle="dropdown" id="button_dropdown">
	    	Menu <span class="caret"></span>
	  	</button>
	  	<ul class="dropdown-menu" role="menu">
	    	<li><a href="#home" class="scroll" data-offset="0">HOME</a></li>
			<!-- <li><a href="#perfil" class="scroll" data-offset="0">PLANOS</a></li> -->
			<li><a href="#servicos" class="margin scroll" data-offset="0">SERVIÇOS</a></li>
			<li><a href="#sobre" class="scroll" data-offset="0">SOBRE</a></li>
			<li><a href="contato" class="margin border">CONTATO</a></li>
			 <?php 
				if(!$_SESSION['user_id_intelinvest']){  ?>
					<li><a href="#loginModal" class="logCad margin border scroll" data-offset="0">LOGIN/CADASTRO</a></li>
			<?php	} else { $urlPerfil = get_bloginfo('home')."/perfil_user?intelinvest=".doCodifica("?user_id_intelinvest=" .$_SESSION['user_id_intelinvest']);?>
				
				<?php if(Usuario::isAdministrador($_SESSION['user_id_intelinvest'])){ $urlPainel = get_bloginfo('home')."/painel-controle?intelinvest=".doCodifica("?user_id_intelinvest=" .$_SESSION['user_id_intelinvest']); ?>
					<li><a href="<?php echo $urlPainel ?>" class="margin border">PAINEL</a></li>
				<?php } ?>
				<li><a href="<?php echo $urlPerfil; ?>" class="margin border">PERFIL</a></li>
				<li><a href="<?php bloginfo('template_url');?>/upload_arquivo_usuario" class="">UPLOAD</a></li>
				<li><a href="logout" class="margin border scroll logCad" data-offset="0">LOGOUT</a></li>
			<?php } 
			?> 
			
		</ul>
	</div>
			
		</ul>
	</div>
</div> <!-- div do header -->
