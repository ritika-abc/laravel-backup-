<?php ?>
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 widget  ">
						<a href="<?php echo $this->webroot; ?>" title="<?php echo $company_name; ?>" class="footer-logo"><?php echo $company_name; ?></a>
						<p style="text-align:justify; "><?php echo $footer_text; ?></p>
											<a href="http://web2export.com/" title=""><img class="img-fluid" src="images/logo-web2export.jpg"></a>
<p></p>
						<ul class="social-footer-link">
							<?php foreach($socialicons as $socialicon): ?>
								<li><a href="<?php echo $socialicon['Socialicon']['url']; ?>" title="<?php echo $socialicon['Socialicon']['name']; ?>" target="_blank"><i class="fa <?php echo $socialicon['Socialicon']['iconcss']; ?>" aria-hidden="true"></i></a></li>
							<?php endforeach; ?>
						</ul>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 widget  ">
						<span>Quick Links</span>
						<ul class="under-top">
							<?php if(count($blogs) == 0){ ?>
							<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-caret-right" aria-hidden="true"></i>
							Home</a></li>
							<?php } ?>
							<li><a href="company-profile.html" title="Company Profile"><i class="fa fa-caret-right" aria-hidden="true"></i>
							Company Profile</a></li>
							<li><a href="our-products.html" title="Our Products"><i class="fa fa-caret-right" aria-hidden="true"></i>
							Our Products</a></li>
							<li><a href="sitemap.html" title="Sitemap"><i class="fa fa-caret-right" aria-hidden="true"></i>
							Sitemap</a></li>
							<?php if(count($blogs)>0){ ?>
						
							<?php } ?>
							
							<li><a href="contact-us.html" title="Contact Us"><i class="fa fa-caret-right" aria-hidden="true"></i>
							Contact Us</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 widget  ">
						<span>Our Products</span>
						<ul class="under-top">
							<?php foreach($featured_products as $featured_product): ?>
								<li><a href="<?php echo $featured_product['Product']['slug']; ?><?php echo $directory_name; ?>.html" title="<?php echo $featured_product['Product']['name']; ?>"><i class="fa fa-caret-right" aria-hidden="true"></i>
								<?php echo $featured_product['Product']['name']; ?></a></li>
							<?php endforeach; ?>
						</ul>
					</div>

					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 last-widget  ">
						<span>Reach Us</span>
						<ul class="corner-address">
							<li><b>Address:</b><p><?php echo $company_address; ?></p></li>
							<li><b>Phone:</b>
							<a href="tel:<?php echo $company_phone; ?>" class="hk-hide" title="<?php echo $company_phone; ?>"><?php echo $company_phone; ?></a></li>
							<li><b>Email:</b>
							<a href="mailto:<?php echo $company_email; ?>" title="<?php echo $company_email; ?>"><?php echo $company_email; ?></a>
							<a href="mailto:<?php echo $company_email1; ?>" title="<?php echo $company_email1; ?>"><?php echo $company_email1; ?></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
		<section class="copy-right">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 copy-right-center">
						<p><?php echo $footer_text_title; ?></a></p>
					</div>
				</div>
			</div>
		</section>
		<img src="images/top.png" id="toTop" title="Go To Top" alt="Go To Top">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="jenish/js/bootstrap.min.js"></script>
		<script src="jenish/js/menu.js"></script>
		<script src="jenish/js/custom.js"></script>
		<script src="jenish/js/wow.js"></script>
		<script src="jenish/js/owl.carousel.js"></script>
		<script src="jenish/js/magnific-popup.min.js"></script>
	</body>
</html>