<div class="row-fluid como_funciona" id="servicos">
	<h3> COMO FUNCIONA?</h3>
	<p class="pontos"><span>..............................</span></p>
	<p>Acreditamos que investir é para todos. Não importa o valor, a idade ou o conhecimento. Mas sabemos também que investir não é fácil. E por isso estamos aqui: para deixar tudo mais simples, tranquilo e seguro para você. </p>

	<p class="n_sabe">Não sabe por onde começar? Então vamos lá:</p>

	<div class="row-fluid">
		<div class="como_funciona-box">
			<?php
			$args = array(
				'orderby' => 'rand',
     			'post_type' => 'como_funciona',
			);
				$funcioina = get_posts('post_type=como_funciona');
					if($funcioina){
						$i = 1;
						$c = 1;
						foreach ($funcioina as $fnc){
							if($i==2){ $c = 2;?>
								<div class="hidden-xs hidden-sm col-md-1">
									<p class="separador"><span>..............................</span></p>
								</div>
					<?php 	} ?>				
							<div class="col-xs-12 col-sm-12 col-md-3 box box<?php echo $c; ?>">
							<?php 
								$image = get_field('imagem', $fnc->ID);
								if( !empty($image) ): ?>

									<p class="imagem"><img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" class="img-responsive" /></p>

								<?php endif; ?>
								
								<h4><?php echo get_field('titulo', $fnc->ID); ?></h4>
								
							</div>

			<?php
						if($i==2){ ?>
								<div class="hidden-xs hidden-sm col-md-1">
									<p class="separador"><span>..............................</span></p>
								</div>
					 <?php } $c++;
					$i++;}
				}
			?>
		</div>
	</div>
</div>