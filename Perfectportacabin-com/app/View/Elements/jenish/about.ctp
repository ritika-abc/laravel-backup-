<?php ?>	
<section class="about-section">
	<div class="container">
		<div class="title-headingx">
			<h1>Welcome To <?php echo $company_name; ?></h1>
		</div>
		<div class="row">
			<?php
				$thumbImageurl = $this->Html->url('/images/sitepages/'.$page['Sitepage']['image']);			
				$Imageurl = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";			
				$Imageurl = ($page['Sitepage']['image'] != '')?$thumbImageurl:$Imageurl;
			?>  
			<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 about-img">
				<img src="<?php echo $Imageurl; ?>" alt="<?php echo $company_name; ?>" title="<?php echo $company_name; ?>">
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 about-content">
				<span>About Company</span>
				<?php echo $page['Sitepage']['description']; ?>
				<div class="under-margin">
					<p></p>
				</div>				
			</div>
		
		</div>
	</div>
</section>