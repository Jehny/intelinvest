<?php 
include "layout/header.php";
include "layout/menu2.php";
	if(isset($_POST['submit'])){
		$obj = new Usuario();
		// Verifica se o campo email está preenchido
		if($_POST['email'] != ""){
			
			if($obj->validaEmail($_POST['email'])){
				// Gera nova senha de forma randomica
				$senha = gerarSenha();
				// altera a senha do  usuário se o email existir na base de dados
				if($obj->novaSenha($senha)){
					$nomeUser = Usuario::find_by_email($obj->email);
					$to = $_POST['email'];
					$nome = $_POST['nome'];
					$subject = "Intelinvest";
					$headers = "MIME-Version: 1.1 \r\n";
					$headers .= "Content-type: text/html; charset=utf-8 \r\n";
					$message = "<html><body>";
					$message .= "<table style='border:1px solid #BD3F4B;width:97%;'>";
					$message .= "<tr><td style='text-align:left;padding-left:10px;padding-top:20px;'><img src='http://www.intelinvest.solutions/wp-content/themes/intelinvest/imgs/logo_topo.png' alt='Intelinvest' width=200></td></tr>";
					$message .= "<tr><td style='padding-left:10px;padding-top:20px;padding-bottom:20px;'>Olá:" .$obj->nome . " </td></tr>";
					$message .= "<tr><td style='padding-left:10px;padding-top:20px;padding-bottom:20px;'>Olá,</strong> <br><br>" .
							"Sua nova senha de acesso ao INTELINVEST é: " . $senha . "<br> <br></td></tr>";
					$message .= "</table>";
					$message .= "</body></html>";

					if(wp_mail( $to, $subject,  $message, $headers)){
						$sucesso = "<div class='sucesso alert alert-info'>
							<button type='button' class='close' data-dismiss='alert'>×</button>
							<h4>Sucesso!</h4>
							<p>Sua senha foi enviada com sucesso! </p>
							</div>";
					}
					else{
						$sucesso = "<div class='sucesso alert alert-danger'>
								<button type='button' class='close' data-dismiss='alert'>×</button>
								<h4>Ooops!</h4>
								<p>Sua senha foi alterada mas o E-mail NÃO foi enviado, contate o administrador! </p>
								</div>";
					}
				} else {
					$sucesso = "<div class='sucesso alert alert-danger'>
								<button type='button' class='close' data-dismiss='alert'>×</button>
								<h4>Ooops!</h4>
								<p>E-mail NÃO cadastrado! </p>
								</div>";
				}	
			}
		
		}
	}
?>

<section id="contato">
	<div class="caixa row-fluid">
		<h1>Esqueci Minha Senha</h1>
		<form action="" method="post">
			
			<div class="form-group">
			    <label for="Email">E-mail:</label>
			    <input type="email" class="form-control" id="email" name="email"  required>
			 </div>
			<br />
			<div class="botao">
			  	<button type="submit" name="submit">Enviar</button>
			</div>
		</form>
	</div>
</section>
	
<?php
	include "layout/footer.php";
?>