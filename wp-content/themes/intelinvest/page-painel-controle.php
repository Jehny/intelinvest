<?php
	include "layout/header.php";
	include "layout/menu2.php";
	$idUser = "";
	 if(!isset($_SESSION['user_id_intelinvest'])){
		$session->message("Você precisa estar autenticado para acessar essa página! ");
		redirect_to("../index.php");
	}else{
		doDecodifica($_GET['intelinvest']);
		$idUser = $_GET['user_id_intelinvest'];
		if(!Usuario::isAdministrador($idUser)){
			$session->message("Você precisa estar autenticado para acessar essa página! ");
			redirect_to("../index.php");
		}
	}

?>	
	<div class="container-fluid">
		<div class="row-fluid painel">
			<h3>Painel de Controle </h3>
			<div class="row-fluid opcoes">
				<ul class="list-inline col-xs-12 col-sm-12 col-md-12">
					<li class="col-xs-6 col-sm-6 col-md-4">
						<p><img src="<?php bloginfo('template_url');?>/img/uploadFile.png" alt=""></p>
						<p><a href="<?php bloginfo('template_url');?>/upload_arquivo_usuario" title="">Upload de arquivos</a></p>

					</li>
					<?php 
						$urlLista = get_bloginfo('template_url')."/upload_arquivo_usuario/lista_arquivos.php?intelinvest=".doCodifica("?user_id_intelinvest=" .$idUser);
					?>
					<li class="col-xs-6 col-sm-6 col-md-4">
						<p><img src="<?php bloginfo('template_url');?>/img/download.png" alt=""></p>
						<p><a href="<?php echo $urlLista; ?>" title="">Listagem de Arquivos</a></p>
					</li>	
				</ul>
			</div>
		</div>
	</div>

<?php

	include "layout/footer.php";

?>