<div class="row-fluid perfil" id="perfil">
	<h3>QUAL O SEU PERFIL?</h3>
	<p class="pontos"><span>..............................</span></p>
	<p>Estamos aqui para entender as suas necessidades e para ajudar você a alcançar os seus objetivos. Nosso foco é um só: você.</p>

	<div class="row-fluid">
		<div class="perfil-box">
			<?php
			$args = array(
     			'post_type' => 'perfil',
     			'orderby' => 'ordem',
     			'order' => 'ASC'
			);
				// $perfis = get_posts('post_type=perfil');
			$perfis = get_posts($args);
					if($perfis){
						foreach ($perfis as $perfil){
			?>

							<div class="col-xs-12 col-sm-12 col-md-4 box">
								<h4><?php echo get_field('titulo_card', $perfil->ID); ?></h4>
								<h5><?php echo get_field('subtitulo_card', $perfil->ID); ?></h5>
								<p class="item">
									<i class="icofont-check-alt"></i>
									<?php echo get_field('item1_card', $perfil->ID); ?></p>
								<p class="item">
									<i class="icofont-check-alt"></i>
									<?php echo get_field('item2_card', $perfil->ID); ?></p>
								<p class="item">
									<i class="icofont-check-alt"></i>
									<?php echo get_field('item3_card', $perfil->ID); ?></p>
							</div>
			<?php 
					}
				}
			?>
		</div>
	</div>

	<div class="row">
		<p class="ajudamos">Ajudamos você a investir melhor.</p>
		<p><a href="<?php echo get_bloginfo('home');?>/contato" title="Entre em contato" class="btn_entre">Entre em contato</a>
	</div>
</div>