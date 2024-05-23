<div class="container-fluid main-content">
   <div class="page-title">
      <h1> Update SEO for <?php echo $this->data['Product']['name'];?> </h1>
   </div>
   <div class="row">
      <div class="col-lg-12">
         <div class="widget-container fluid-height clearfix">
            <div class="heading"> <i class="icon-reorder"></i>Services Details </div>
            <div class="widget-content padded">
               <?php 
                  echo $this->Form->create('Product',array('enctype'=>'multipart/form-data','class' => 'form-horizontal'));  
                  echo $this->Form->input('id');
                  ?>
             
			  <div class="form-group">
                  <label class="control-label col-md-2">Image Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('image_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
                  
               </div>
			 
               <div class="form-group">
                  <label class="control-label col-md-2">Header Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('header_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
                  <label class="control-label col-md-2">Footer Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('footer_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
               </div>
			   
              
			   
               <div class="form-group">
                  <label class="control-label col-md-2">Location Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('location_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
                  <label class="control-label col-md-2">Location Image Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('location_image_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
               </div>
			   
			   
			    <div class="form-group">
                  <label class="control-label col-md-2">Exporters Image/Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('exporters_image_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
                  <label class="control-label col-md-2">Manufacturers Image/Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('manufacturers_image_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
               </div>
			   
			   <div class="form-group">
                  <label class="control-label col-md-2">Suppliers Image/Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('suppliers_image_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
                  <label class="control-label col-md-2">Exporters Image/Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('exporters_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
               </div>
			   
			    <div class="form-group">
                  <label class="control-label col-md-2">Manufacturers Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('manufacturers_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
                  <label class="control-label col-md-2">Suppliers Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('suppliers_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
               </div>
			   
			     <div class="form-group">
                  <label class="control-label col-md-2">Sitemap Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('sitemap_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
				   <label class="control-label col-md-2">Image Link/Title</label>
                  <div class="col-md-4"> <?php echo $this->Form->input('link_title', array('class'=>'form-control col-md-3', 'label' => false));?> </div>
               </div>
			   
               <div class="form-group">
                  <label class="control-label col-md-2"></label>
                  <div class="col-md-5">
                     <button class="btn btn-primary" type="submit">Submit</button>
                     <?php 
                        echo $this->Html->link("Cancel",
                        array( 'controller' => 'products', 'action' => 'index', 'admin' => true),
                         array('escape' => FALSE,'class' => 'btn btn-default-outline')); 
                        ?>
                  </div>
               </div>
               <?php echo $this->Form->end(); ?> 
            </div>
         </div>
      </div>
   </div>
</div>