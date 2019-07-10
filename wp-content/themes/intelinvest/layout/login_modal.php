<?php 

	// include "session.php";
	// include "usuario.php";
	global $wpdb;
	$email = trim($_POST['email']);
	$senha = trim($_POST['senha']);
	
	if(isset($_POST['submit'])) {
		if($email == "" || $senha == ""){
			$message = "Login ou senha inválidos.";
		}else {
			//Checar se o email e a senha existem
			$found_user = Usuario::autenticar($email, $senha);
			if($found_user) {
				$session->login($found_user);

				redirect_to("intelinvest/perfil_user?intelinvest=".doCodifica("?user_id_intelinvest=" .$found_user->id));
			} else {
				$message = "Email não coincide com a senha.";
			}
		}
	}

?>



<div class="login_modal modal row-fluid" id="loginModal">
	<div class="col-xs-12 col-sm-12 col-md-6 image">
		<img src="<?php bloginfo('template_url'); ?>/img/login_modal.png" alt="">
	</div>
	<div class="col-xs-12 col-sm-12 col-md-6">
		<h1>Bem-vindo a Intelinvest!</h1>
		<h2>Por favor, faça login para continuar</h2>
		<form action="login_modal" method="POST" accept-charset="utf-8">
			<fieldset>
				<legend>E-mail</legend>
				<p><input type="text" name="email" placeholder="Informe seu e-mail"></p>
			</fieldset>
			<fieldset>
				<legend>Senha</legend>
				<p><input type="text" name="senha" placeholder="Informe sua senha"></p>
			</fieldset>
			<p class="esqueci"><a href="" title="">Esqueceu a Senha?</a></p>
			<p class="botoes">
				<button type="submit" name="submit">Login</button>
				<a href="" title="">Criar conta</a>
			</p>
		</form>
	</div>
	
</div>
