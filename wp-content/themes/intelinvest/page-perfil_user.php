<?php
	include "layout/header.php";
	include "layout/menu2.php";
	$urlArquivos = "http://".$_SERVER['HTTP_HOST'] . "/intelinvest/wp-content/themes/intelinvest/upload_arquivo_usuario/uploads/";
	if(isset($_GET['intelinvest'])){
		doDecodifica($_GET['intelinvest']);
	}

	if(isset($_GET['user_id_intelinvest'])){
		$usuario = Usuario::find_by_id($_GET['user_id_intelinvest']);
		$perfil = Perfil::retornaPerfil($usuario->id_perfil);
		
		// $session->message("Você precisa estar autenticado para acessar essa página! ");
		// redirect_to("index.php");

	} else if($session->user_id != $_GET['user_id_intelinvest']){
			// $session->message("Você não pode acessar essa página! ");
			// redirect_to("index.php");
		echo "diferente";
	} else {

		echo "Nao peguei nada .";
	}




?>

<div id="perfil_user" class="row-fluid">
	<div class="col-xs-12 col-sm-12 col-md-12 info">
		<h1><?php echo $usuario->nome; ?></h1>
		<h2>Perfil <?php echo $perfil->nome; ?></h2>
		<h3><?php echo $perfil->descricao; ?></h3>
	</div>

	<div class="row-fluid">
		<div class="col-xs-12 col-sm-12 col-md-12 botao_edit">
			<?php $editar = get_bloginfo('home') .'/cadastro-usuario?intelinvest='.doCodifica("?user_id_intelinvest=" .$usuario->id); ?>
			<a href="<?php  echo $editar; ?>" title="">Editar Perfil</a>	
		</div>
	</div>
</div>

<div class="row-fluid nav_arquivos">
	<!-- Nav tabs -->
	<ul class="nav nav-tabs" role="tablist">
	  <li class="nav-item active">
	    <a class="nav-link" data-toggle="tab" href="#investimentos" role="tab">INVESTIMENTOS</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" data-toggle="tab" href="#rentabilidade" role="tab">RENTABILIDADE</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" data-toggle="tab" href="#informacoes" role="tab">INFORMAÇÕES</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" data-toggle="tab" href="#avisos" role="tab">AVISOS</a>
	  </li>
	   <li class="nav-item">
	  </li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
	  <div class="tab-pane active" id="investimentos" role="tabpanel"> 
		<?php
			$result = Usuario::find_files_users("Investimentos", $usuario->id);
			if($result) { ?>
				<div class="col-md-3 boxListaArquivos">
					<div class="listaArquivos">
						<p class="title">Arquivos <i class="icofont-folder"></i></p>
						<div class="list-group" id="myList" role="tablist">
							<?php foreach ($result as $key) { ?>
								<a class="list-group-item list-group-item-action" id="list-invest-list" data-toggle="list" href="<?php echo '#list-invest' . $key->id; ?>" role="tab" aria-controls="invest">
									<i class="icofont-file-pdf"></i>
									<span class="verArquivo" id="<?php echo $key->id; ?>"><?php echo $key->nome; ?></span>
								</a>
							<?php } ?>
							
						</div>
					</div>
				</div>
				<div class="col-md-1 col-sm-1 col-xs-1"></div>
				<div class="col-md-8 boxArquivo">
					<div class="arquivoPDF tab-content" id="nav-tabContent">
						<?php foreach ($result as $key) { ?>
							<div class="tab-pane fade" id="<?php echo 'list-invest' . $key->id; ?>" role="tabpanel" aria-labelledby="list-invest-list">
								<embed src="<?php echo $urlArquivos . $usuario->id . '/'.$key->nome; ?>" width="760" height="900" type='application/pdf'>

							</div>
						<?php } ?>
					</div>
				</div>
			<?php } else {
				echo "Ainda não existe arquivo para esta categoria.";
			}
		?>
	  </div>
	  <div class="tab-pane" id="rentabilidade" role="tabpanel">Rentabilidade</div>
	  <div class="tab-pane" id="informacoes" role="tabpanel"> Informações
	  </div>
	  <div class="tab-pane" id="avisos" role="tabpanel">Avisos</div>
	</div>
	
</div>

<?php
	include "newsletter.php";

	include "layout/footer.php";

?>

