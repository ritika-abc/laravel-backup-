<?php ?>
<!-- Navigation -->
	<div class="navbar navbar-fixed-top scroll-hide">
		<div class="container-fluid top-bar">
			<div class=" col-md-3 admin-logo" >	
				<img src="images/<?php echo $sitelogo;?>" title=" <?php echo $company_name;?>" alt=" <?php echo $company_name;?>"/>
			</div>
			<div class="pull-right">
				<ul class="nav navbar-nav pull-right">      
					<li class="dropdown user hidden-xs"><a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<img width="34" height="34" src="images/alpha/<?php echo substr(strtolower($company_name),0,1);?>.png" />
						<?php echo $company_name;?> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="admin/users/"> <i class="icon-user"></i>My Account</a> </li>
							<li><a href="admin/settings"> <i class="icon-gear"></i>Account Settings</a> </li>
							<li><a href="users/logout"> <i class="icon-signout"></i>Logout</a> </li>
						</ul>
					</li>
				</ul>
			</div>
			<button class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
		</div>
    <div class="container-fluid main-nav clearfix">
      <div class="nav-collapse">
        <ul class="nav">
    <?php 
   
	$urls = array(
    array(
        'label' => 'Home',
		'label_class' => 'se7en-home text-danger',
        'url' => array('controller' => '/', 'action' => 'index'),
    ),	
 
 	array(
        'label' => 'Banners',
		'label_class' => 'se7en-gallery text-warning',
        'url' => array('controller' => 'banners', 'action' => 'index')
    ),
	 		
			
	/*array(
        'label' => 'Categories',
		'label_class' => 'icon-sitemap',
        'url' => array('controller' => 'categories', 'action' => 'index')
    ),
	
	array(
        'label' => 'Ourclients',
		'label_class' => 'se7en-pages',
        'url' => array('controller' => 'ourclients', 'action' => 'index')
    ),
	*/
	array(
        'label' => 'Products',
		'label_class' => 'icon-th-large text-danger',
        'url' => array('controller' => 'products', 'action' => 'index')
    ),	
		 
	
	array(
        'label' => 'Locations',
		'label_class' => 'icon-map-marker text-success',
        'url' => array('controller' => 'locations', 'action' => 'index')
    ),
	
	
	array(
        'label' => 'Site Pages',
		'label_class' => 'se7en-pages text-info',
        'url' => array('controller' => 'sitepages', 'action' => 'index')
    ),
  		
	array(
        'label' => 'Catalogs',
		'label_class' => 'icon-globe text-primary',
        'url' => array('controller' => 'catalogs', 'action' => 'index')
    ),
	
	array(
        'label' => 'Enquiries',
		'label_class' => 'icon-envelope text-info',
        'url' => array('controller' => 'enquiries', 'action' => 'index')
    ),
	
);

     foreach ($urls as $url) {
 		
		$active = ($this->params['controller'] === $url['url']['controller']) ? 'current' : '' ;
 		?>
 		 <li>
 	
		   <?php 
		   
		    echo $this->Html->link("<span aria-hidden=\"true\" class=\"$url[label_class]\"></span>$url[label]",
					array('controller' => $url['url']['controller'], 'action' => $url['url']['action'], 'admin' => true),
					array('escape' => FALSE,'class' => $active)); 
		    
     }
 ?>	  
		</li>
		
			   <li class="dropdown"><a data-toggle="dropdown" href="<?php echo $this->webroot;?>admin/settings">
                <span aria-hidden="true" class="icon-gear text-warning"></span>Website Settings<b class="caret"></b></a>
                <ul class="dropdown-menu">
				<li>
					<a href="<?php echo $this->webroot;?>admin/settings">Website Settings</a>
				</li>  
				<li>
					<a href="<?php echo $this->webroot;?>admin/galleries">Galleries</a>
				</li>  
				<li>
					<a href="<?php echo $this->webroot;?>admin/homepages">Home Page Items</a>
				</li>  
				
				<li>
					<a href="<?php echo $this->webroot;?>admin/homepagemenus">Home Page Menus</a>
				</li>  
				
				<li>
					<a href="<?php echo $this->webroot;?>admin/sitepages">Site Pages</a>
				</li>  
				 
				<li>
					<a href="<?php echo $this->webroot;?>admin/testimonials">Testimonials</a>
				</li>
				 
				 <li>
					<a href="<?php echo $this->webroot;?>admin/blogs">Blogs</a>
				</li>
				 <li>
					<a href="<?php echo $this->webroot;?>admin/socialicons">Social Icons</a>
				</li>
				
	 	
                </ul>
              </li>
			  
			  	  <li> 	
		   <a href="admin/users/"><span aria-hidden="true" class="icon-lock text-info"></span>Change Password</a> 		   
		</li>
			  <li> 	
		   <a href="users/logout"><span aria-hidden="true" class="icon-signout text-danger"></span>Logout</a> 		   
		</li>
		
		<li> 	
		   <a href="<?php echo $this->webroot;?>" target="_blank"><span aria-hidden="true" class="se7en-star text-success"></span>Website</a> 		   
		</li>
        </ul>
			
      </div>
    </div>
  </div>
  <!-- End Navigation -->