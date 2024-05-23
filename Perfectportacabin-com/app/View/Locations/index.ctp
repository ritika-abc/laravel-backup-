<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1>Our Presence</h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li>Our Presence</li>
			</ul>
		</div>
	</section>

	<section class="our-presence">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 our-three">
				
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 our-presence-row">
						<div class="inner-our-presence">
						<a href="exporters-category.html" title="Exporters Category">Exporters Category</a>
						</div>
					</div>
				
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 our-presence-row">
						<div class="inner-our-presence">
						<a href="traders-category.html" title="Traders Category">Traders Category</a>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 our-presence-row">
						<div class="inner-our-presence">
						<a href="suppliers-category.html" title="Suppliers Category">Suppliers Category</a>
						</div>
					</div>
					
					<?php /*
					<div class="under-cover">
						<?php
							if(count($locations) > 0) {
								foreach($locations as $name):
								$childlocation = $name['ChildLocation'];
								$location_slug = $name['Location']['slug'];                        
						?>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 city">
							<a href="<?php echo h($name['Location']['slug']); ?>/" title="<?php echo h($name['Location']['name']); ?>"><?php echo h($name['Location']['name']); ?></a>
						</div>
						<?php
							if(count($childlocation)>0){
								foreach($childlocation as $child):
								if($child['active']==1){
						?>
						<div class="col-md-4 boxes">
							<div class="inner-box">
								<a href="<?php echo h($child['slug']); ?>/" title="<?php echo h($child['name']); ?>"><i class="fa fa-globe" aria-hidden="true"></i> <?php echo h($child['name']); ?></a>
							</div>
						</div>
						<?php } endforeach;  }  ?>
						<?php endforeach;  }  ?>
					</div>
					*/ ?>
					<div class="under-cover">
						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 city">
							<p>Market Place</p>
						</div>
						<?php
							if(count($locations) > 0) {
								foreach($locations as $name):
								$childlocation = $name['ChildLocation'];
								$location_slug = $name['Location']['slug'];                        
						?>
						<div class="col-md-4 boxes">
							<div class="inner-box">
								<a href="<?php echo h($name['Location']['slug']); ?>/" title="<?php echo h($name['Location']['name']); ?>"><i class="fa fa-globe" aria-hidden="true"></i> <?php echo h($name['Location']['name']); ?></a>
							</div>
						</div>
						<?php endforeach;  }  ?>
					</div>
				</div>
				<div class="co-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
					<?php echo $this->element('jenish/inner_enquiry'); ?>
				</div>
			</div>
		</div>
	</section>
