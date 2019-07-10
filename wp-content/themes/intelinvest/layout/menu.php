<div id="menu" class="hidden-xs col-sm-8 col-md-8">
	<nav>
		<ul class="list-inline">
			<li><a href="#home" class="scroll" data-offset="0">HOME</a></li>
			<li><a href="#sobre" class="scroll" data-offset="0">ASSINATURAS</a></li>
			<li><a href="#servicos" class="margin scroll" data-offset="0">SERVIÇOS</a></li>
			<li><a href="#sobre" class="scroll" data-offset="0">SOBRE</a></li>
			<li><a href="#fale_conosco" class="margin border scroll" data-offset="0">CONTATO</a></li>
			<?php 
			if(!$_SESSION['user_id_intelinvest']){ ?>
				<li><a href="#loginModal" class="margin border scroll jqModal" data-offset="0" rel='modal:open'>LOGIN/CADASTRO</a></li>
		<?php	} else {  ?>
			<li><a href="logout" class="margin border">LOGOUT</a></li>
		<?php } 
		?> 
			<li><a href="" class="margin border queroContratar"  data-offset="0">Quero contratar!</a></li>
		</ul>
	</nav>
</div>
<div id="buttom_menu" class="btn-group hidden-sm hidden-md hidden-lg col-xs-8">
 	<button type="button" class="btn btn-default dropdown-toggle hidden-md" data-toggle="dropdown" id="button_dropdown">
    	Menu <span class="caret"></span>
  	</button>
  	<ul class="dropdown-menu" role="menu">
    	<li><a href="#home" class="scroll" data-offset="0">HOME</a></li>
		<li><a href="#sobre" class="scroll" data-offset="0">ASSINATURAS</a></li>
		<li><a href="#servicos" class="margin scroll" data-offset="0">SERVIÇOS</a></li>
		<li><a href="#sobre" class="scroll" data-offset="0">SOBRE</a></li>
		<li><a href="#fale_conosco" class="margin border scroll" data-offset="0">CONTATO</a></li>
		 <?php 
			if($_SESSION['user_id_intelinvest']){  ?>
				<li><a href="#loginModal" class="margin border scroll" data-offset="0">LOGIN/CADASTRO</a></li>
		<?php	} else { ?>
			<li><a href="logout" class="margin border scroll" data-offset="0">LOGOUT</a></li>
		<?php } 
		?> 
		
	</ul>
</div>
		
	</ul>
</div>
