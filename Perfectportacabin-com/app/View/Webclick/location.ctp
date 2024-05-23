<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1><?php echo $product['Product']['name'];?> In <?php  echo $location['Location']['name'];?></h1>
			<ul>
				<li><a href="<?php echo $this->webroot;?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li><?php echo $product['Product']['name'];?> In <?php  echo $location['Location']['name'];?></li>
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
							<img src="<?php echo $Imageurl; ?>" title="<?php echo $product['Product']['name'];?> In <?php  echo $location['Location']['name'];?>" alt="<?php echo $product['Product']['name'];?> In <?php  echo $location['Location']['name'];?>" class="image-zoom">
							<div class="overlay-zoom">
								<div class="text-zoom"></div>
							</div>
						</div>
					</div>
					<?php 
						$city_name=$location['Location']['name'];
						$description  = $catalog['Catalog']['description'];
						$description  = str_replace('countryname',$city_name, $description );
						$description = str_replace('catname', $product['Product']['name'], $description );							
					?>   
					<div class="cover-product-this">
						<?php echo html_entity_decode($description); ?>
					</div>
				</div>
				<div class="co-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>