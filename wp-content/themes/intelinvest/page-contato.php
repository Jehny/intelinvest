<?php
	include "layout/header.php";

?>
<div id="contato" class="row-fluid">
	<div class="caixa col-xs-12 col-sm-12 col-md-12">
		<h1>ENTRE EM CONTATO COM A Intelinvest!</h1>
		<form action="login_modal_submit" method="POST" accept-charset="utf-8">
			<div class="form-group">
			    <label for="Nome">Nome:</label>
			    <input type="text" class="form-control" id="nome" name="nome">
			 </div>
			<div class="form-group">
			    <label for="Email">E-mail:</label>
			    <input type="email" class="form-control" id="email" >
			 </div>
			 <div class="form-group">
			    <label for="Assunto">Assunto:</label>
			    <input type="text" class="form-control" id="assunto" name="assunto">
			 </div>
			 <div class="form-group">
			    <label for="mensagem">Mensagem:</label>
			    <textarea class="form-control" id="mensagem" rows="8" name="mensagem"></textarea>
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