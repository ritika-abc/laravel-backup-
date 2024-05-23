<?php ?>   
<div class="container-fluid main-content">
    <div class="page-title">
      <h1> Add Menu</h1>
    </div>
		
	
    <div class="row">
      <div class="col-lg-12">
        <div class="widget-container fluid-height clearfix">
          <div class="heading"> <i class="icon-reorder"></i>Menu Details </div>
          <div class="widget-content padded">
             <?php echo $this->Form->create('Homepagemenu',array('enctype'=>'multipart/form-data','class' => 'form-horizontal'));
 
          ?>
				  
   <div class="form-group">
          
              <div class="form-group">
                <label class="control-label col-md-2">Menu Title</label>
                <div class="col-md-7">
 									 <?php echo $this->Form->input('name', array('class'=>'form-control col-md-3','label'=>''));?>	
 				  	
                </div>
              </div>
			  
			   
			   <div class="form-group">
                <label class="control-label col-md-2"> Manu Url</label>
                <div class="col-md-7">
  						 <?php echo $this->Form->input('url', array('class'=>'form-control col-md-3','label'=>''));?>	
                </div>
              </div>
 					 
			    
			  
                  <div class="form-group">
                <label class="control-label col-md-2"></label>
                <div class="col-md-7">
                  <button class="btn btn-primary" type="submit">Submit</button>
                  <?php 
		   echo $this->Html->link("Cancel",
		   array( 'controller' => 'homepagemanus', 'action' => 'index', 'admin' => true),
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
	  
	     