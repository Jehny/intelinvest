
<?php
	include "layout/header.php";

	$perfis = pegaPefil();
	global $wpdb;
	if(isset($_POST['submit'])){
		$nome = $_POST['nome'];
		$cpf = $_POST['CPF'];
		$dt_nasc = $_POST['dt_nasc'];
		$end = $_POST['endereco'];
		$tel = $_POST['telefone'];
		$email = $_POST['email'];
		$senha = $_POST['senha'];

		$perfil = $_POST['perfil_user'];

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

			echo $wpdb->insert( $table_name, $cadastro_usuario, $format );
			echo 'id = ' . $wpdb->insert_id;
			// if($redirect){
				echo "cadastro realizado";
			// }
			
		} else {
			echo "Cadastro não realizado, contacte o administrador!";
		}

		// if($redirect){
		// 	echo "Cadastro realizado com sucesso!";
		// }

	}
?>


<div class="login_modal cadastro_modal row-fluid">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<h1>Cadastre-se na	 Intelinvest!</h1>
		<h2>Por favor, cadastre-se para continuar</h2>
		<form action="" method="POST" accept-charset="utf-8">
			<fieldset>
				<legend>Nome</legend>
				<p><input type="text" name="nome" placeholder="Informe seu nome completo"></p>
			</fieldset>
			<fieldset>
				<legend>CPF</legend>
				<p><input type="text" name="CPF" placeholder="Informe seu CPF"></p>
			</fieldset>
			<fieldset>
				<legend class="maior">Data de Nascimento</legend>
				<p><input type="date" name="dt_nasc"></p>
			</fieldset>
			<fieldset>
				<legend class="medio">Endereço</legend>
				<p><input type="text" name="endereco" placeholder="Informe seu endereço"></p>
			</fieldset>
			<fieldset>
				<legend class="medio">Telefone</legend>
				<p><input type="tel" name="telefone" placeholder="Informe seu Telefone"></p>
			</fieldset>
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
			<fieldset>
				<legend>E-mail</legend>
				<p><input type="email" name="email" placeholder="Informe seu e-mail"></p>
			</fieldset>
			<fieldset>
				<legend>Senha</legend>
				<p><input type="password" name="senha" placeholder="Informe sua senha"></p>
			</fieldset>

			<p class="botoes">
				<button type="submit" name="submit">Criar conta</button>
			</p>
			
		</form>
	</div>
	
</div>

<?php

	include "layout/footer.php";

?>