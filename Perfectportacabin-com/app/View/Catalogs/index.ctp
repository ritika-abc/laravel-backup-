<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1><?php echo  $catalog['Catalog']['name']; ?></h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li><?php echo  $catalog['Catalog']['name']; ?></li>
			</ul>
		</div>
	</section>

	<section class="sitemap">
		<div class="container">
			<div class="row">
				<div class="co-lg-9 col-md-9 col-sm-9 col-xs-12 sitemap-list">
					<ul>
						<?php
						foreach($categoriesmenu as $product_item): 
						$directory_name = str_replace('-','',$directory_name);
						?>
						<li><a href="<?php echo h($product_item['Product']['slug']).'-'.strtolower($directory_name); ?>.html"  title="<?php echo h($product_item['Product']['name']).' '.ucwords($directory_name); ?>"><i class="fa fa-cogs" aria-hidden="true"></i> <?php echo h($product_item['Product']['name']).' '.ucwords($directory_name); ?></a></li>
						<?php endforeach; ?>							
					</ul>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>
