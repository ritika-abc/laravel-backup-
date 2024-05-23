<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1><?php echo $product['Product']['name'];?></h1>
			<ul>
				<li><a href="<?php echo $this->webroot;?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/ </li>
				<li><a href="our-products.html" title="Our Products">Our Products</a></li>
				<li>/ </li>
				<li><?php echo $product['Product']['name'];?></li>
			</ul>
		</div>
	</section>

	<section class="products-details">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 details-product">
					<?php 
						$thumbImageurl = 'images/products/'.$product['Product']['image'];
						$Imageurl = 'images/no-image2.jpg';
						$Imageurl = ($product['Product']['image'] != '')?$thumbImageurl:$Imageurl;
					?>
					<div class="cover-product detail-last">
						<div class="zoom-effect">
							<img src="<?php echo $Imageurl; ?>" title="<?php echo $product['Product']['name'];?>" alt="<?php echo $product['Product']['name'];?>" class="image-zoom">
							<div class="overlay-zoom">
								<div class="text-zoom"></div>
							</div>
						</div>
					</div>
					<div class="cover-product-this">
						<?php echo $product['Product']['short_description'];?>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 details-product detailed">
						<?php echo $product['Product']['description'];?>
					</div>
				</div>
				<div class="co-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>