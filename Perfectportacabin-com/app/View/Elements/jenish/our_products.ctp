<?php ?>
	<section class="our-prodcts section-full inner-page-padding">
		<div class="container">
			<div class="title-heading">
				<h3>Our Products</h3>
			</div>
			<div class="row">
				<div class="portfolio-wrap mfp-gallery work-grid row clearfix">
					<?php 
						foreach($featured_products as $home_product):

						$thumbImageurl = $this->Html->url('/images/products/'.$home_product['Product']['home_image']);			
						$Imageurl = "images/no-image2.jpg";			
						$Imageurl = ($home_product['Product']['home_image'] != '')?$thumbImageurl:$Imageurl;
					?>
					<div class="masonry-item cat-1 col-md-4 col-sm-6">
						<div class="image-effect-two hover-shadow">
							<img src="<?php echo $Imageurl; ?>" alt="<?php echo $home_product['Product']['name'] ;?>" title="<?php echo $home_product['Product']['name'] ;?>"/>
							<div class="figcaption">
								<span class="mt-tilte"><?php echo $home_product['Product']['name'] ;?></span>
								<?php echo $home_product['Product']['home_description'] ;?>
								<a href="<?php echo $home_product['Product']['slug'] ;?><?php echo $directory_name; ?>.html" class="read-more site-button" title="Read More">Read More</a>
							</div>
						</div>
					</div>
					<?php endforeach; ?>
				</div>
		
			</div>
		</div>
	</section>