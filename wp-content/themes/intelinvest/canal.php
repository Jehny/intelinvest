
<?php
		$canal = get_posts('post_type=canal_link');
			if($canal){
				foreach ($canal as $c){
	?>

<div class="canal row-fluid">
	<div class="col-xs-12 col-sm-12 col-md-6 image">
		<img src="<?php bloginfo('template_url'); ?>/img/canal.png" alt="">
	</div>
	<div class="col-xs-12 col-sm-12 col-md-6">
		<h4><?php echo get_field('titulo', $c->ID); ?></h4>
		<h5><?php echo get_field('subtitulo', $c->ID); ?>
		</h5>
		<p><?php echo get_field('conteudo', $c->ID); ?></p>
		<a href="<?php echo get_field('link_botao', $c->ID); ?>" title="">ACESSE AGORA</a>
	</div>

</div>

<?php 
	}
}
?>