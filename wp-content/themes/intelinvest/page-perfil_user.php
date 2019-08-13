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
	  <div class="tab-pane active" id="home" role="tabpanel"> Home </div>
	  <div class="tab-pane" id="profile" role="tabpanel">Profile</div>
	  <div class="tab-pane" id="messages" role="tabpanel">Messages</div>
	  <div class="tab-pane" id="settings" role="tabpanel">settings</div>
	</div>
	
</div>

<?php
	include "newsletter.php";

	include "layout/footer.php";

?>

