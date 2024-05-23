<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1>Our Blogs</h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li>Our Blogs</li>
			</ul>
		</div>
	</section>

	<section class="sitemap">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 sitemap-list">
					<div class="row">
						<?php
							foreach($blogs as $blog):
								$thumbImageurl = $this->Html->url('/images/blogs/'.$blog['Blog']['image']);			
								$Imageurl = "images/no-image2.jpg";			
								$Imageurl = ($blog['Blog']['image'] != '')?$thumbImageurl:$Imageurl;
						?>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 blog-box wow fadeInLeft">
							<img src="<?php echo $Imageurl; ?>" alt="<?php echo $blog['Blog']['name'] ;?>" title="<?php echo $blog['Blog']['name'] ;?>">
							<div class="white-content">
								<a href="blogs/<?php echo $blog['Blog']['slug'] ;?>.html" title="<?php echo $blog['Blog']['name'] ;?>"><?php echo $blog['Blog']['name'] ;?></a>
								<p><?php echo $blog['Blog']['short_description'] ;?></p>
								<a href="blogs/<?php echo $blog['Blog']['slug'] ;?>.html" title="Read More" class="blog-link">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
							</div>
						</div>
						<?php endforeach; ?>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>