<?php 
	include "layout/header.php";
	// include "layout/session.php";
	// include "layout/usuario.php";
	global $wpdb;
	$email = trim($_POST['email']);
	$senha = criptSenha(trim($_POST['senha']));
	
	if(isset($_POST['submit'])) {
		if($email == "" || $senha == ""){
			$message = "<div class='sucesso alert alert-danger'>
						<button type='button' class='close' data-dismiss='alert'>×</button>
						<h4>Ooops!</h4>
						<p>E-mail e senha não podem ser vazios! </p>
						</div>";
		}else {
			//Checar se o email e a senha existem
			$found_user = Usuario::autenticar($email, $senha);
			if($found_user) {
				$session->login($found_user);

				redirect_to("perfil_user?intelinvest=".doCodifica("?user_id_intelinvest=" .$found_user->id));
			} else {
				$message = "<div class='sucesso alert alert-danger'>
						<button type='button' class='close' data-dismiss='alert'>×</button>
						<h4>Ooops!</h4>
						<p>Verifique seu e-mail e senha! </p>
						</div>";
			}
		}
	}
	
?>



<div class="login_modal login_modalPage row-fluid" id="loginModal">
	<?php if(isset($message)){
		echo $message;
		} ?>
	<div class="col-xs-12 col-sm-12 col-md-6 image">
		<img src="<?php bloginfo('template_url'); ?>/img/login_modal.png" alt="">
	</div>
	<div class="col-xs-12 col-sm-12 col-md-6">
		<h1>Bem-vindo a Intelinvest!</h1>
		<h2>Por favor, faça login para continuar</h2>
		<form action="" method="POST" accept-charset="utf-8">
			<fieldset>
				<legend>E-mail</legend>
				<p><input type="text" name="email" placeholder="Informe seu e-mail"></p>
			</fieldset>
			<fieldset>
				<legend>Senha</legend>
				<p><input type="password" name="senha" placeholder="Informe sua senha"></p>
			</fieldset>
			<p class="esqueci"><a href="" title="">Esqueceu a Senha?</a></p>
			<p class="botoes">
				<button type="submit" name="submit">Login</button>
				<a href="<?php echo get_bloginfo('home'); ?>/cadastro-usuario" title="">Criar conta</a>
			</p>
		</form>
	</div>
	
</div>

<?php include "layout/footer.php"; ?>