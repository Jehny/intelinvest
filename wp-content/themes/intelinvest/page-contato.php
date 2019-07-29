<?php
	include "layout/header.php";
	include "layout/menu2.php";

	if(isset($_POST['submit'])){

		$to = 'jehnyffencel@gmail.com';
		$nome = $_POST['nome'];
		$email = $_POST['email'];
		$subject = "Intelinvest";
		$headers = "MIME-Version: 1.1 \r\n";
		$headers .= "Content-type: text/html; charset=utf-8 \r\n";
		$message = "<html><body>";
		$message .= "<table style='border:1px solid #BD3F4B;width:97%;'>";
		$message .= "<tr><td style='text-align:left;padding-left:10px;padding-top:20px;'><img src='http://www.intelinvest.solutions/wp-content/themes/intelinvest/imgs/logo_topo.png' alt='Intelinvest' width=200></td></tr>";
		$message .= "<tr><td style='padding-left:10px;padding-top:20px;padding-bottom:20px;'>Segue os dados de contato: </td></tr>";
		$message .= "<tr><td style='padding-left:10px;'><strong>Nome: </strong>" . $_POST['nome'] . "</td></tr>";
		$message .= "<tr><td style='padding-left:10px;'><strong>E-mail: </strong>" . $_POST['email']. "</td></tr>";
		$message .= "<tr><td style='padding-left:10px;'><strong>Assunto: </strong>" . $_POST['assunto']. "</td></tr>";
		$message .= "<tr><td style='padding-left:10px;padding-bottom:30px;'><strong>Mensagem: </strong>" . $_POST['mensagem']. "</td></tr>";
		$message .= "</table>";
		$message .= "</body></html>";


		if(wp_mail( $to, $subject,  $message, $headers)){
			$sucesso = "<div class='sucesso alert alert-info'>
				<button type='button' class='close' data-dismiss='alert'>×</button>
				<h4>Sucesso!</h4>
				<p>Seu e-mail foi enviado com sucesso! </p>
				</div>";
		}
		else{
			$sucesso = "<div class='sucesso alert alert-danger'>
					<button type='button' class='close' data-dismiss='alert'>×</button>
					<h4>Ooops!</h4>
					<p>E-mail NÃO enviado, contate o administrador! </p>
					</div>";
		}
		
	}


?>
<div id="contato" class="row-fluid">
	<?php
		if(isset($sucesso)){
			echo $sucesso; 
		} ?>
	<div class="caixa col-xs-12 col-sm-12 col-md-12">
		<h1>ENTRE EM CONTATO COM A Intelinvest!</h1>
		<form action="" method="POST" accept-charset="utf-8">
			<div class="form-group">
			    <label for="Nome">Nome:</label>
			    <input type="text" class="form-control" id="nome" name="nome" required>
			 </div>
			<div class="form-group">
			    <label for="Email">E-mail:</label>
			    <input type="email" class="form-control" id="email" name="email"  required>
			 </div>
			 <div class="form-group">
			    <label for="Assunto">Assunto:</label>
			    <input type="text" class="form-control" id="assunto" name="assunto" required>
			 </div>
			 <div class="form-group">
			    <label for="mensagem">Mensagem:</label>
			    <textarea class="form-control" id="mensagem" rows="8" name="mensagem" required></textarea>
			  </div>
			  <div class="botao">
			  		<button type="submit" name="submit">Enviar</button>
			  </div>
		</form>
	</div>
</div>





<?php


	include "newsletter.php";

	include "layout/footer.php";

?>