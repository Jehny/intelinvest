<div class="row-fluid">
	<div class="invest-box">
		<div class="col-xs-12 col-sm-12 col-md-4 box">
			<h3>ASSESSORIA PERSONALIZADA E
EXCLUSIVA</h3>
<img src="<?php bloginfo('template_url'); ?>/img/ico_acessoria.png">
		</div>

		<div class="col-xs-12 col-sm-12 col-md-4 box">
			<h3>QUAL O SEU PERFIL?</h3>
			<img src="<?php bloginfo('template_url'); ?>/img/ico_invista.png">
		</div>

		<div class="col-xs-12 col-sm-12 col-md-4 box">
			<h3>INVISTA DO JEITO CERTO</h3>
			<img src="<?php bloginfo('template_url'); ?>/img/ico_perfil.png">
		</div>
	</div>
</div>
<div class="row-fluid">
	<?php
		$invest = get_posts('post_type=investimentos');
			if($invest){
				foreach ($invest as $inv){
	?>
	<div class="investimentos">
		<h3><?php echo get_field('titulo', $inv->ID); ?> </h3>
		<p class="pontos"><span>..............................</span></p>
	
		<div class="texto">
			<?php echo get_field('texto_secao', $inv->ID); ?>
			<p class="slogan">
				<?php echo get_field('slogan', $inv->ID); ?>
			</p>
		</div>
	<?php
			}
		}
	?>
	</div>
</div>