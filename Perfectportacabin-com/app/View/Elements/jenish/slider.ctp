<?php ?>	
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<?php
				$i=0;
				$active = " ";
				foreach($banners as $banner): 
				$i++;
				if($i==1){
					$active="active";
				}
				else {
					$active=" ";
				}
			?>
			<li data-target="#carousel-example-generic" data-slide-to="<?php echo $i; ?>" class="<?php echo $active; ?>"></li>
			<?php endforeach; ?>
		</ol>
		<div class="carousel-inner" role="listbox">
			<?php
				$i=0;
				$active = " ";
				foreach($banners as $banner): 
				$i++;
				if($i==1){
					$active="active";
				}
				else {
					$active=" ";
				}
			?>
			<?php 
				$thumbImageurl = $this->Html->url('/images/banners/'.$banner['Banner']['image']);			
				$Imageurl = "images/no-image.jpg";			
				$Imageurl = ($banner['Banner']['image'] != '')?$thumbImageurl:$Imageurl;
			?>
			<div class="item <?php echo $active; ?>">
				<img src="<?php echo $Imageurl; ?>" alt="<?php echo $banner['Banner']['name']; ?>" title="<?php echo $banner['Banner']['name']; ?>">
			</div>
			<?php endforeach; ?>
		</div>
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>