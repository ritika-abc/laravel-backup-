<?php ?>   
<div class="container-fluid main-content">
    <div class="page-title">
      <h1> Add Video </h1>
    </div>
		
	
    <div class="row">
      <div class="col-lg-12">
        <div class="widget-container fluid-height clearfix">
          <div class="heading"> <i class="icon-reorder"></i>Video Details </div>
          <div class="widget-content padded">
             <?php 
			 
			 echo $this->Form->create('Video',array('enctype'=>'multipart/form-data','class' => 'form-horizontal'));
			
 
          ?>
				  
   <!--<div class="form-group">
                <label class="control-label col-md-2">Title</label>
                <div class="col-md-7">
 				  <input name="data[Gallery][description]" maxlength="255" type="text" class="form-control" id="BannerName">
 				  	
                </div>
              </div>-->
			
              <div class="form-group">
                <label class="control-label col-md-2">Name</label>
                <div class="col-md-7">
 				  <input name="data[Video][name]" maxlength="255" type="text" class="form-control" id="BannerName">
 				  	
                </div>
              </div>
			  
			   
			   <div class="form-group">
                <label class="control-label col-md-2"> URL</label>
                <div class="col-md-4">
 				  <input name="data[Video][video_url]" maxlength="255" type="text" class="form-control" id="BannerName">
 				
                </div>
				  </div>
				<div class="form-group">
				<label class="control-label col-md-2">Select Video Category</label>
                <div class="col-md-4">
				 
				
					 
					 <?php				
 				
				$options = array( '1' => 'Millennium Brilliance Awards 2017', '2' => 'National Achievers Awards 2018','3' => 'Global Business Awards 2017');
				echo $this->Form->select('video_category', $options, array('empty'=>false, 'name'=>'data[Video][video_category]',
				'default'=>$this->data['Video']['video_category'], 'class'=>'form-control'));
				 
 				?> 
				
                </div>
              </div>
 					 
			    
	 		 
			
			   
 					 
			 
			   

			  
                  <div class="form-group">
                <label class="control-label col-md-2"></label>
                <div class="col-md-7">
                  <button class="btn btn-primary" type="submit">Submit</button>
                  <?php 
		   echo $this->Html->link("Cancel",
		   array( 'controller' => 'videos', 'action' => 'index', 'admin' => true),
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
	  
	     