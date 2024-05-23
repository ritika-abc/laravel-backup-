<?php ?> 
<body>
	<section class="wrapper">
		<header>
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 email-side">
						<ul>
							<li><a href="mailto:<?php echo $company_email; ?>" title="<?php echo $company_email; ?>"><i class="fa fa-envelope" aria-hidden="true"></i><?php echo $company_email; ?></a></li>

							<li><a href="tel:<?php echo $company_phone; ?>" title="<?php echo $company_phone; ?>" class="hk-hide"><i class="fa fa-phone" aria-hidden="true"></i><?php echo $company_phone; ?></a></li>
						</ul>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 appointment">
						<a href="contact-us.html" class="pull-right" title="Get A Quote">Get A Quote</a>
					</div>
				</div>
			</div>
		</header>
		<section class="sticky">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 logo-here animated" style="visibility: visible;">
						<a href="<?php echo $this->webroot; ?>" title="<?php echo $company_name; ?>"><img src="images/<?php echo $sitelogo; ?>" alt="<?php echo $company_name; ?>" title="<?php echo $company_name; ?>"></a>
					</div>

					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 nav">
						<div class="mobile-nav-menu"></div>                     
						<div class="nav-menu">
							<div class="menu">
								<nav id="main-menu" class="main-menu" style="display: block;">
									<ul>
										<li class="active"><a href="<?php echo $this->webroot; ?>" title="Home">Home</a> </li>
										<li><a href="company-profile.html" title="Company Profile">Company Profile</a></li>
										<li><a href="our-products.html" title="Our Products">Our Products</a>
											<ul class="responsive-scroll">
												<?php foreach($categoriesmenu as $product_item): 	?>
												<li class="rel"><a href="<?php echo $product_item['Product']['slug']; ?><?php echo $directory_name; ?>.html" title="<?php echo $product_item['Product']['name']; ?>"><?php echo $product_item['Product']['name']; ?></a>
												</li>
												<?php endforeach; ?>
											</ul>
										</li>
										<li><a href="sitemap.html" title="Sitemap">Sitemap</a></li>
										<li><a href="contact-us.html" title="Contact Us">Contact Us</a></li>
									</ul>
								</nav>
							</div>                  
						</div>  
					</div>
				</div>
			</div>
		</section>		
					
					