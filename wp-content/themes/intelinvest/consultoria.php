<div class="bg_cnsultoria" id="sobre"></div>
<div class="row-fluid consultoria">
	<?php
		$consultoria = get_posts('post_type=consultoria');
			if($consultoria){
				foreach ($consultoria as $cons){
	?>
	<div class="consultoria">
		<h3><?php echo get_field('titulo', $cons->ID); ?> </h3>
		<p class="pontos"><span>..............................</span></p>
	
		<div class="texto">
			<?php echo get_field('texto_secao', $cons->ID); ?>
			
		</div>
		<p class="slogan">
				<?php echo get_field('slogan', $cons->ID); ?>
			</p>
	<?php
			}
		}
	?>
	</div>
</div>