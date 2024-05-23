<?php 
	$description  =  $page['Sitepage']['description'];
	$description  = str_replace('City', ucwords(strtolower($location['Location']['name'])), $description );
	$short_description  =  $page['Sitepage']['short_description'];
	$short_description  = str_replace('City', ucwords(strtolower($location['Location']['name'])),$short_description );

	$thumbImageurl = $this->Html->url('/images/sitepages/'.$page['Sitepage']['image']);			
	$Imageurl = "no-image2.jpg";			
	$Imageurl = ($page['Sitepage']['image'] != '')?$thumbImageurl:$Imageurl;
?> 

<style>
.title-headingx h1 {
    text-transform: none;
}
</style>
	
<section class="about-section">
	<div class="container">
		<div class="title-headingx">
			<h1>Stainless Steel Round Bar Suppliers In <?php echo $location['Location']['name']; ?></h1>
		</div>
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 about-img">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ">
				<img src="<?php echo $Imageurl; ?>" alt="<?php echo $company_name; ?>" title="<?php echo $company_name; ?>">
			</div>
			<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 catalog-detail ">				
				<?php  echo html_entity_decode($description); ?>
			</div>
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 catalog-detail ">
				<?php  echo html_entity_decode($short_description); ?>							
				<a href="company-profile.html" title="Read More">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
			</div>
			</div>
			<div class="hilite-title text-pop-up-top">
				<strong>About Us</strong>
			</div>
		</div>
	</div>
</section>	
       