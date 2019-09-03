<?php
	include "layout/header.php";
	include "layout/menu2.php";
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
	    <a class="nav-link" data-toggle="tab" href="#home" role="tab">INVESTIMENTOS</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" data-toggle="tab" href="#profile" role="tab">RENTABILIDADE</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" data-toggle="tab" href="#messages" role="tab">ARQUIVOS</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" data-toggle="tab" href="#settings" role="tab">INFORMAÇÕES</a>
	  </li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
	  <div class="tab-pane active" id="home" role="tabpanel"> 
		<?php
			$result = Usuario::find_files_users("Investimentos", $usuario->id);
			if($result) { ?>
				<div class="col-md-3">
					<div class="listaArquivos">
						<p>Arquivos <i class="icofont-folder"></i></p>
						<div class="list-group" id="myList" role="tablist">
							<?php foreach ($result as $key) { ?>
								<a class="list-group-item list-group-item-action active" id="list-invest-list" data-toggle="list" href="#list-invest" role="tab" aria-controls="invest">
									<i class="icofont-file-pdf"></i>
									<span class="verArquivo" id="<?php echo $key->id; ?>"><?php echo $key->nome; ?></span>
								</a>
							<?php } ?>
							
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="arquivoPDF tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="list-invest" role="tabpanel" aria-labelledby="list-invest-list">
							Investimentos

						</div>
					</div>
				</div>
			<?php } else {
				echo "Ainda não existe arquivo para esta categoria.";
			}
		?>
	  </div>
	  <div class="tab-pane" id="profile" role="tabpanel">Profile</div>
	  <div class="tab-pane" id="messages" role="tabpanel">
			<embed src="../upload_arquivo_usuario/uploads/1/banco.pdf" width="760" height="500" type='application/pdf'>
	  </div>
	  <div class="tab-pane" id="settings" role="tabpanel">settings</div>
	</div>
	
</div>

<?php
	include "newsletter.php";

	include "layout/footer.php";

?>

