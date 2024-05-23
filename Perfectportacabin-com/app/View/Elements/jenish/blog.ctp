<?php ?>
<?php if(count($blogs)>0){ ?>
	<section class="latest-blog">
		<div class="container">
			<div class="title-heading">
				<h5>Latest Blog</h5>
			</div>
			<div class="row">
				<?php
					$i=0;
					foreach($blogs as $blog):
					$i++;
					$thumbImageurl = $this->Html->url('/images/blogs/'.$blog['Blog']['image']);			
					$Imageurl = "images/no-image2.jpg";			
					$Imageurl = ($blog['Blog']['image'] != '')?$thumbImageurl:$Imageurl;
					if($i<4){
				?>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 blog-box">
					<img src="<?php echo $Imageurl; ?>" alt="<?php echo $blog['Blog']['name'] ;?>" title="<?php echo $blog['Blog']['name'] ;?>">
					<div class="white-content">
						<a href="blogs/<?php echo $blog['Blog']['slug'] ;?>.html" title="<?php echo $blog['Blog']['name'] ;?>"><?php echo $blog['Blog']['name'] ;?></a>
						<p><?php echo $blog['Blog']['short_description'] ;?></p>
						<a href="blogs/<?php echo $blog['Blog']['slug'] ;?>.html" title="Read More" class="blog-link">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
					</div>
				</div>
					<?php } endforeach; ?>
			</div>
			<div class="hilite-title text-pop-up-top">
				<strong>Blogs</strong>
			</div>
		</div>
	</section>
<?php } ?>