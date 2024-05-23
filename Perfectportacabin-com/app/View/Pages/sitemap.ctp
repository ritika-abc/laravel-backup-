<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1>Sitemap</h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li>Sitemap</li>
			</ul>
		</div>
	</section>

	<section class="sitemap">
		<div class="container">
			<div class="row">
				<div class="co-lg-9 col-md-9 col-sm-9 col-xs-12 sitemap-list">
					<ul>
						<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-cogs" aria-hidden="true"></i>
						Home</a></li>
						<li><a href="company-profile.html" title="Company Profile"><i class="fa fa-cogs" aria-hidden="true"></i>
						Company Profile</a></li>
						<li><a href="our-products.html" title="Our Products"><i class="fa fa-cogs" aria-hidden="true"></i> Our Products</a>
							<ul>
								<?php
								foreach($categoriesmenu as $product_item): 
								?>
								<li><a href="<?php echo h($product_item['Product']['slug']); ?>.html"  title="<?php echo h($product_item['Product']['name']); ?>"><i class="fa fa-cogs" aria-hidden="true"></i> <?php echo h($product_item['Product']['name']); ?></a></li>
								<?php endforeach; ?>
							</ul>
						</li>
						<?php if(count($blogs)>0){ ?>
						<li><a href="blog.html" title="Blog"><i class="fa fa-cogs" aria-hidden="true"></i> Blog</a></li>
						<?php } ?>
						<li><a href="contact-us.html" title="Contact Us"><i class="fa fa-cogs" aria-hidden="true"></i> Contact Us</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>
