<?php ?>
<?php /*
            
 
  <?php

if(count($results)>0){
  foreach($results as $items):

				$thumbImageurl = 'images/products/'.$items['Product']['image'];
				$Imageurl = "images/no-image.jpg";

				$Imageurl = ($items['Product']['image'] != '')?$thumbImageurl:$Imageurl;
				?>	
    <div class="col-md-4 col-sm-6">
      <div class="vc_column-inner ">
        <div class="wpb_wrapper">
          <div class="featured featured-has-link featured-has-icon featured-has-content">
            <div class="featured-header"><a href="<?php echo $items['Product']['slug'];?>.html" title="<?php echo $items['Product']['link_title'];?>">
			<img src="<?php echo $Imageurl;?>" alt="<?php echo $items['Product']['name'];?>" title="<?php echo $items['Product']['link_image_title'];?>"></a></div>
            <div class="featured-content">
              <span class="featured-title text-uppercase"><strong><a href="<?php echo $items['Product']['slug'];?>.html" title="<?php echo $items['Product']['link_title'];?>"><i class="fa fa-cog"></i><?php echo $items['Product']['name'];?></strong></a></span>
              <p class="featured-desc"><?php echo $items['Product']['home_description'];?></p>
              <a href="<?php echo $items['Product']['slug'];?>.html" class="what-we-do-button" title="<?php echo $items['Product']['name'];?>" >Read more</a></div>
          </div>
        </div>
      </div>
    </div>
<?php endforeach;
}
else {
	
?>		
<h2 class="text-center text-danger">!Product Not Found</h2>

<?php } ?>
   */ ?>
   
   
	<section class="common-banner" style="background: url(images/site-banner.jpg);">
		<div class="container">
			<h1>Searched Result</h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i>
				Home</a></li>
				<li>/</li>
				<li>Searched Result</li>
			</ul>
		</div>
	</section>

	<section class="breadcumb wow fadeIn animated animated" style="visibility: visible;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bredcumb">
					<ul>
						<li><a href="<?php echo $this->webroot; ?>" title="Home">Home</a></li>
						<li>/</li>
						<li>Searched Result</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	
	<section class="our-products">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 plan-text-full">
					<div class="row">
					<?php
					
						if(count($results)>0){
						foreach($results as $items):

						$thumbImageurl = 'images/products/'.$items['Product']['image'];
						$Imageurl = "images/no-image.jpg";
						$Imageurl = ($items['Product']['image'] != '')?$thumbImageurl:$Imageurl;
					?>	
					<div class="col-md-6 col-sm-12 mb-30 product-related-image">
						<div class="image-effect-one hover-shadow">
							<a href="<?php echo $items['Product']['slug'];?>.html" title="<?php echo $items['Product']['name'];?>"><img src="<?php echo $Imageurl; ?>" alt="<?php echo $items['Product']['name'];?>" title="<?php echo $items['Product']['name'];?>"></a>
							<div class="figcaption">
								<span><?php echo $items['Product']['name'];?></span>
								<?php /*<p> It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p> */ ?>
								<a href="<?php echo h($items['Product']['slug']); ?>.html"  title="<?php echo $items['Product']['name'];?>"><i class="link-plus bg-primary"></i></a>
							</div>
						</div>
					</div>
					 <?php
						endforeach;
						}	else {		
					?>		
					<h2 class="text-center text-danger">!Product Not Found</h2>

					<?php } ?>
				</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-site">
					<?php echo $this->element('avishaan/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>
   