<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1><?php echo $blog['Blog']['name']; ?></h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/ </li>
				<li><?php  echo $blog['Blog']['name']; ?></li>
			</ul>
		</div>
	</section>

	<section class="sitemap">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 sitemap-list">
					<div class="row">
						<?php
							$thumbImageurl = 'images/blogs/'.$blog['Blog']['image'];
							$Imageurl = 'images/no-image.jpg';
							$Imageurl = ($blog['Blog']['image'] != '')?$thumbImageurl:$Imageurl;
						?>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 blog-box wow fadeInLeft blogss">
							<img src="<?php echo $Imageurl; ?>" width="500px" alt="<?php  echo $blog['Blog']['name']; ?>" title="<?php  echo $blog['Blog']['name']; ?>">
							<div class="white-content">
								<p><?php echo $blog['Blog']['description'] ;?></p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>