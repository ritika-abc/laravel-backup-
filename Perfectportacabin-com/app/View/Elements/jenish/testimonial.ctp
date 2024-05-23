<?php ?>
<?php if(count($testimonials)>0){ ?>
	<section class="testimonials">
		<div class="container">
			<div class="title-heading">
				<h6>OUR VALUABLE CLIENTS</h6>
			</div>
			<div class="row">
				<div id="owl-demo-testimonial" class="owl-carousel">
					<?php 
						foreach($testimonials as $testimonial):

					?>
					<div class="item-client">
						<div class="left-metter">
							<p class="client-name"><b><?php echo $testimonial['Testimonial']['name']; ?></b></p>
							<p class="company-name"><?php echo $testimonial['Testimonial']['company']; ?></p>
						</div>
						<div class="client-para">
							<p><?php echo $testimonial['Testimonial']['description']; ?></p>
						</div>
					</div>
					<?php endforeach; ?> 
				</div>
			
			</div>
		</div>
	</section>
<?php } ?>
	<section class="middle-tag-line">
		<div class="container">
			<div class="row">
				<div class="col-md-12 color-tag-line">
					<p>Contact For Any Queries Related To Our Products</p>
				</div>
			</div>
		</div>
	</section>