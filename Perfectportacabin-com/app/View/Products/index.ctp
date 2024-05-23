<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1>Our Products</h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li>Our Products</li>
			</ul>
		</div>
	</section>

	<section class="our-products">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 products-fill">
					<?php echo $product_page['Sitepage']['description']; ?>
					<?php 						
						foreach($categoriesmenu as $product_item):
						
						$thumbImageurl ='images/products/'.$product_item['Product']['image'];
						$Imageurl = "images/no-image2.jpg";
						$Imageurl = ($product_item['Product']['image'] != '')?$thumbImageurl:$Imageurl;
					?>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 products-box">
						<div class="products-effects">
							<a href="<?php echo h($product_item['Product']['slug']); ?><?php echo $directory_name; ?>.html"  title="<?php echo h($product_item['Product']['name']); ?>"><img src="<?php echo $Imageurl; ?>" alt="<?php echo h($product_item['Product']['name']); ?>" title="<?php echo h($product_item['Product']['name']); ?>"></a>
						</div>
						<div class="width-part">
							<a href="<?php echo h($product_item['Product']['slug']); ?><?php echo $directory_name; ?>.html"  title="<?php echo h($product_item['Product']['name']); ?>"><?php echo h($product_item['Product']['name']); ?></a>
						</div>
					</div>
					<?php endforeach; ?>
				</div>
				<div class="co-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>	
