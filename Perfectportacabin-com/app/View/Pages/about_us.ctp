<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1>Company Profile</h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li>Company Profile</li>
			</ul>
		</div>
	</section>
	<section class="about-section white-bg">
		<div class="container">
			<div class="title-heading">
				<h1>About Company</h1>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 about-img wow rotateInDownLeft">
					<?php echo $about_us['Sitepage']['description']; ?>
					<?php echo $about_us['Sitepage']['short_description']; ?>
				</div>
			</div>
		</div>
	</section>
<?php echo $this->element('jenish/home_enquiry'); ?>
<?php echo $this->element('jenish/contact'); ?>
<?php echo $this->element('jenish/testimonial'); ?>