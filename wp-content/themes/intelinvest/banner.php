 <div class="row-fluid">
	 <div id="banner" class="carousel slide carousel-fade" data-ride="carousel">

		<div class="carousel-inner">
			<?php 
				$banners = get_posts('post_type=banners');
				if($banners){
					$i=1;
					foreach ($banners as $banner){
						if($i == 1 ){
								$i++;
							$active = "active";
					?>
							<div class="<?php echo $active . ' ' . $i; ?> item carousel-item">
					<?php
						}else{
							$i++;
					?>
							<div class="<?php echo $i; ?> item carousel-item">
					<?php
						}
			?>
						
							<img alt="" src="<?php echo wp_get_attachment_url( get_post_thumbnail_id($banner->ID)); ?>" class="img-responsive">
			<?php
							if(get_field('titulo', $banner->ID) != ""){
				?>				
							    <div class="carousel-caption">
							       	<h3>
							       		<?php if(get_field('titulo', $banner->ID)) { echo get_field('titulo', $banner->ID); } ?>
							       	</h3>
							       	<p><span>..........................</span></p>

							       	<h4>
							       		<?php if(get_field('sub_titulo', $banner->ID)) { echo get_field('sub_titulo', $banner->ID); } ?>
							       	</h4>
							       	<p><?php if(get_field('texto_botao', $banner->ID)) { ?>
							       		<a href="<?php echo get_bloginfo('home')."/".get_field('link_botao', $banner->ID);?>" title=""><?php echo get_field('texto_botao', $banner->ID);?></a>
							       		 
							       	<?php } ?></p>
							    </div>
						<?php } ?>
						</div>
			<?php  		
					}
				}
			?>
		</div>
		<!-- <ol class="carousel-indicators">
		    <li data-target="#banner" data-slide-to="2" class="active"></li>
		    <li data-target="#banner" data-slide-to="3"></li>
		</ol> -->	
		
		  <a class="carousel-control left" href="#banner" data-slide="prev">
		  	<span class="icofont-rounded-left"></span></a>
		  <a class="carousel-control right" href="#banner" data-slide="next">
		  	<span class="icofont-rounded-right"></span></a>
	</div> 

</div>