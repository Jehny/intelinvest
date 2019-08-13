
<?php
	include "layout/header.php";
	include "layout/menu2.php";

	$perfis = pegaPefil();
	$idUser = 0;

	if(isset($_GET['intelinvest'])){
		doDecodifica($_GET['intelinvest']);

		if(isset($_GET['user_id_intelinvest'])){
			$usuario = Usuario::find_by_id($_GET['user_id_intelinvest']);
			$perfil = Perfil::retornaPerfil($usuario->id_perfil);
			$idUser = $_GET['user_id_intelinvest'];
		}
	}

	if(isset($_POST['atualizar'])){
		$nome = $_POST['nome'];
		$cpf = formatarCPF($_POST['CPF']);
		$dt_nasc = $_POST['dt_nasc'];
		$end = $_POST['endereco'];
		$tel = limparFormatacaoContato($_POST['telefone']);
		$email = $_POST['email'];
		
		$perfil = $_POST['perfil_user'];
		if($perfil == ""){
			$perfil = "2";
		}
		$table_name = 'wp_users_system';
		$dt_cad = pegaDataAtual();

		if($nome != "" && $cpf != "" && $dt_nasc != "" && $end != "" && $tel != "" && $email != ""){
			$senha = criptSenha($senha);
			$dt_cad = pegaDataAtual();

			$cadastro_usuario = array(
				'nome'=> $nome,
				'cpf'=> $cpf,
				'dt_nasc'=> $dt_nasc,
				'endereco'=> $end,
				'telefone'=> $tel,
				'email'=>$email,
				'senha'=>$senha,
				'id_perfil'=>$perfil,
				'dt_cadastro'=>$dt_cad
			);
			global $wpdb;

			if(validaEmailAtualizacao($email)){
				$message = "<div class='sucesso alert alert-danger'>
					<button type='button' class='close' data-dismiss='alert'>×</button>
					<h4>Ooops!</h4>
					<p>E-mail informado já cadastrado! </p>
					</div>";
			}else if(validaCpfExisteAtualizacao($cpf)){
				$message = "<div class='sucesso alert alert-danger'>
					<button type='button' class='close' data-dismiss='alert'>×</button>
					<h4>Ooops!</h4>
					<p>CPF informado já cadastrado! </p>
					</div>";
			}else {
				$where = array('id'=>$idUser);
				$result = $wpdb->update( $table_name, $cadastro_usuario, $where, $format );
				if($result){
					$message = "<div class='sucesso alert alert-info'>
					<button type='button' class='close' data-dismiss='alert'>×</button>
					<h4>Sucesso!</h4>
					<p>Seu cadastro foi atualizado com sucesso! </p>
					</div>";
				} else {
					$teste .= "sem result - ";
					$message = "<div class='sucesso alert alert-danger'>
						<button type='button' class='close' data-dismiss='alert'>×</button>
						<h4>Ooops!</h4>
						<p>Ocorreu um erro na atualização do seu cadastro! </p>
						</div>";
				}
			}
		}
	}

	if(isset($_POST['submit2'])){

		$nome = $_POST['nome'];
		$cpf = formatarCPF($_POST['CPF']);
		$dt_nasc = $_POST['dt_nasc'];
		$end = $_POST['endereco'];
		$tel = limparFormatacaoContato($_POST['telefone']);
		$email = $_POST['email'];
		$senha = $_POST['senha'];
		
		$perfil = $_POST['perfil_user'];
		if($perfil == ""){
			$perfil = "2";
		}
		$table_name = 'wp_users_system';
		$dt_cad = pegaDataAtual();

		if($nome != "" && $cpf != "" && $dt_nasc != "" && $end != "" && $tel != "" && $email != "" && $senha != ""){
			$senha = criptSenha($senha);
			$dt_cad = pegaDataAtual();

			$cadastro_usuario = array(
				'nome'=> $nome,
				'cpf'=> $cpf,
				'dt_nasc'=> $dt_nasc,
				'endereco'=> $end,
				'telefone'=> $tel,
				'email'=>$email,
				'senha'=>$senha,
				'id_perfil'=>$perfil,
				'dt_cadastro'=>$dt_cad
			);
			global $wpdb;

			if(validaEmail($email)){
				$message = "<div class='sucesso alert alert-danger'>
					<button type='button' class='close' data-dismiss='alert'>×</button>
					<h4>Ooops!</h4>
					<p>E-mail informado já cadastrado! </p>
					</div>";
			}else if(validaCpfExiste($cpf)){
				$message = "<div class='sucesso alert alert-danger'>
					<button type='button' class='close' data-dismiss='alert'>×</button>
					<h4>Ooops!</h4>
					<p>CPF informado já cadastrado! </p>
					</div>";
			}else {
				$result = $wpdb->insert( $table_name, $cadastro_usuario, $format );
				if($result){
					$message = "<div class='sucesso alert alert-info'>
					<button type='button' class='close' data-dismiss='alert'>×</button>
					<h4>Sucesso!</h4>
					<p>Seu cadastro foi realizado com sucesso! </p>
					</div>";
					$nome = "";
					$cpf = "";
					$dt_nasc = "";
					$end = "";
					$tel = "";
					$email = "";
					$senha = "";
				} else {
					$message = "<div class='sucesso alert alert-danger'>
						<button type='button' class='close' data-dismiss='alert'>×</button>
						<h4>Ooops!</h4>
						<p>Ocorreu um erro no seu cadastro! </p>
						</div>";
				}
			}
		}
	} else  {
		$nome = $usuario->nome;
		$cpf = $usuario->cpf;
		$dt_nasc = $usuario->dt_nasc;
		$end = $usuario->endereco;
		$tel = $usuario->telefone;
		$email = $usuario->email;
	}
?>


<div class="login_modal cadastro_modal row-fluid">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<?php if(isset($message)){
				echo $message;
				} ?>
		<h1>Cadastre-se na Intelinvest!</h1>
		<h2>Por favor, cadastre-se para continuar</h2>
		<form action="" method="POST" accept-charset="utf-8">
			<fieldset>
				<legend>Nome</legend>
				<p><input type="text" name="nome" placeholder="Informe seu nome completo" required value="<?php echo $nome; ?>"></p>
			</fieldset>
			<fieldset>
				<legend>CPF</legend>
				<p><input type="text" name="CPF" placeholder="Informe seu CPF" class="cpf" value="<?php echo $cpf; ?>" required></p>
			</fieldset>
			<fieldset>
				<legend class="maior">Data de Nascimento</legend>
				<p><input type="date" name="dt_nasc" required value="<?php echo $dt_nasc; ?>"></p>
			</fieldset>
			<fieldset>
				<legend class="medio">Endereço</legend>
				<p><input type="text" name="endereco" placeholder="Informe seu endereço" required value="<?php echo $end; ?>"></p>
			</fieldset>
			<fieldset>
				<legend class="medio">Telefone</legend>
				<p><input type="tel" name="telefone" placeholder="Informe seu Telefone" class="phone" required value="<?php echo $tel; ?>"></p>
			</fieldset>

			<?php if(Usuario::isAdministrador($idUser)){ ?>
			<fieldset>
				<legend>Perfil</legend>
			<div class="form-group">
			   <select class="form-control" id="exampleSelect1" name="perfil_user">
			   	<?php 
			   		foreach ($perfis as $key) { ?>
			   			<option value="<?php echo $key->id; ?>"><?php echo $key->nome; ?></option>
			   			
			   	<?php
			   		}
			   	?>
			   </select>
			 </div>
			</fieldset>

			<?php } ?>
			<fieldset>
				<legend>E-mail</legend>
				<p><input type="email" name="email" placeholder="Informe seu e-mail" required value="<?php echo $email; ?>"></p>
			</fieldset>
			<?php if(!isset($_GET['user_id_intelinvest'])) { ?>
			<fieldset>
				<legend>Senha</legend>
				<p><input type="password" name="senha" placeholder="Informe sua senha" required></p>
			</fieldset>
			<?php  } ?>
			<p class="obrigatorio">* Todos os campos são obrigatórios.</p>
			<p class="botoes">
				
				<?php if(isset($_GET['user_id_intelinvest'])) { ?>
				<button type="submit" name="atualizar">Atualizar</button>
				<?php } else { ?>
				<button type="submit" name="submit">Criar conta</button>
				<?php } ?>
			</p>
			
		</form>
	</div>
	
</div>

<?php

	include "layout/footer.php";

?>