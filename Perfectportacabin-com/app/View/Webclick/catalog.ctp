<?php				 
   $thumbImageurl = $this->Html->url('/images/products/'.$product['Product']['image']);
   
   $galleries = $product['Gallery'];
   
   $directory_name = str_replace('-','',$directory_name);
   
   $directory_url  = "$directory_name-category.html";
   
   
   $directory_name = ucwords($directory_name);
    if($directory_name == 'Exporters')
      {  
       $title = $product['Product']['exporters_title']; 
   	$image_title = $product['Product']['exporters_image_title']; 
      }
      if($directory_name == 'Manufacturers')
      {  
       $title = $product['Product']['manufacturers_title']; 
   	$image_title = $product['Product']['manufacturers_image_title']; 
      }
      elseif($directory_name == 'Suppliers')
       {  
       $title = $product['Product']['suppliers_title']; 
   	$image_title = $product['Product']['suppliers_image_title']; 
   	}
   ?>
<?php				 
   $thumbImageurl = $this->Html->url('/images/products/'.$product['Product']['image']);
   
   $galleries = $product['Gallery'];
    

   ?>
		<section class="common-banner">
		<div class="container">
			<h1><?php echo $product['Product']['name'];?> <?php echo $directory_name;?></h1>
			<ul>
				<li><a href="<?php echo $this->webroot;?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li><?php echo $product['Product']['name'];?> <?php echo $directory_name;?></li>
			</ul>
		</div>
	</section>

	<section class="products-details">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 details-product">
					<?php 
						$thumbImageurl = 'images/products/'.$product['Product']['image'];
						$Imageurl = 'images/no-image2.jpg';
						$Imageurl = ($product['Product']['image'] != '')?$thumbImageurl:$Imageurl;
					?>
					<div class="cover-product detail-last">
						<div class="zoom-effect">
							<img src="<?php echo $Imageurl; ?>" title="<?php echo $product['Product']['name'];?> <?php echo $directory_name;?>" alt="<?php echo $product['Product']['name'];?> <?php echo $directory_name;?>" class="image-zoom">
							<div class="overlay-zoom">
								<div class="text-zoom"></div>
							</div>
						</div>
					</div>
					<?php 
						$description  = $catalog['Catalog']['description'];
						$description  = str_replace('countryname', $directory_name, $description );
						$description = str_replace('catname', $product['Product']['name'], $description );				
					?>   
					<div class="cover-product-this">
						<?php echo html_entity_decode($description); ?>
					</div>
				</div>
				<div class="co-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>