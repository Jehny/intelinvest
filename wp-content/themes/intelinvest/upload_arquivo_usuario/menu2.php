	<?php 
    include "session.php";
    include "functions.php";
	$idUser = "";
		if(isset($_GET['intelinvest'])){
			doDecodifica($_GET['intelinvest']);
			$idUser = $_GET['user_id_intelinvest'];
		}
	?>
	
	<div id="menu" class="hidden-xs col-sm-8 col-md-8">
		<nav>
			<ul class="list-inline">
				<li><a href="">HOME</a></li>
				<li><a href="">PLANOS</a></li>
				<li><a href="" class="margin">SERVIÇOS</a></li>
				<li><a href="">SOBRE</a></li>
				<li><a href="" class="margin border">CONTATO</a></li>
			<?php $urlPainel = $urlHost."/painel-controle?intelinvest=".doCodifica("?user_id_intelinvest=" .$_SESSION['user_id_intelinvest']); ?>
			<li><a href="<?php echo $urlPainel; ?>" calss="">PAINEL</a>
			</ul>
		</nav>
	</div>
	<div id="buttom_menu" class="btn-group hidden-sm hidden-md hidden-lg col-xs-8">
	 	<button type="button" class="btn btn-default dropdown-toggle hidden-md" data-toggle="dropdown" id="button_dropdown">
	    	Menu <span class="caret"></span>
	  	</button>
	  	<ul class="dropdown-menu" role="menu">
	    	<li><a href="">HOME</a></li>
			<li><a href="">PLANOS</a></li>
			<li><a href="">SERVIÇOS</a></li>
			<li><a href="">SOBRE</a></li>
			<li><a href="" class="margin border">CONTATO</a></li>
			<?php $urlPainel = $urlHost."/painel-controle?intelinvest=".doCodifica("?user_id_intelinvest=" .$_SESSION['user_id_intelinvest']); ?>
			<li><a href="<?php echo $urlPainel; ?>" calss="">PAINEL</a>
			
		</ul>
	</div>
			
		</ul>
	</div>
</div> <!-- div do header -->
