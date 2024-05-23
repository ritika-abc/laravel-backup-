<?php
?>
<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Update Product </h1>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-reorder"></i>Product Details </div>
        <div class="widget-content padded">
         <?php 
		 	 echo $this->Form->create('Product',array('enctype'=>'multipart/form-data','class' => 'form-horizontal'));  
			 echo $this->Form->input('id');
		  ?>
		   
		   
			  
			  <div class="form-group">
 			  <label class="control-label col-md-2">Select Parent </label>
                <div class="col-md-4">
				  	
					 <?php echo $this->Form->input('parentproducts', array('name' => 'data[Product][parent_id]', 'value' => $this->data['Product']['parent_id'], 'class'=>'form-control col-md-3','label'=>'', 'empty' => array(0 => 'Select Parent')));?>	

                </div>
					 <label class="control-label col-md-2">Product Alt</label>
            <div class="col-md-4"> <?php echo $this->Form->input('product_alt', array('class'=>'form-control col-md-3','label'=>''));?> </div>
					
				</div>
				
				
          <div class="form-group">
            <label class="control-label col-md-2">Product Name</label>
            <div class="col-md-4"> <?php echo $this->Form->input('name', array('class'=>'form-control col-md-3','label'=>''));?> </div>
           
          </div>
		  

          <?php				 
				$thumbImageurl1 = $this->Html->url('/images/products/'.$this->data['Product']['image']);
				$thumbImageurl2 = $this->Html->url('/images/products/'.$this->data['Product']['home_image']);
				$Imageurl1 = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";
				$Imageurl2 = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";
				
				$Imageurl1 = ($this->data['Product']['image'] != '')?$thumbImageurl1:$Imageurl1;
				$Imageurl2 = ($this->data['Product']['home_image'] != '')?$thumbImageurl2:$Imageurl2;
				?>
          <div class="form-group">
            <label class="control-label col-md-2">Image</label>
            <div class="col-md-4">
              <div class="fileupload fileupload-new" data-provides="fileupload">
                <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;"> <img src="<?php echo $Imageurl1;?>"> </div>
                <div class="fileupload-preview fileupload-exists img-thumbnail" style="width: 200px; max-height: 150px"></div>
                <div> <span class="btn btn-default btn-file"><span class="fileupload-new">Select image</span><span class="fileupload-exists">Change</span>
                  <input type="file" name="data[Product][image]" id="BannerThumb">
                  </span><a class="btn btn-default fileupload-exists" data-dismiss="fileupload" href="#">Remove</a> </div>
              </div>
            </div>
			
			 <label class="control-label col-md-2">Home Image</label>
            <div class="col-md-4">
              <div class="fileupload fileupload-new" data-provides="fileupload">
                <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;"> <img src="<?php echo $Imageurl2;?>"> </div>
                <div class="fileupload-preview fileupload-exists img-thumbnail" style="width: 200px; max-height: 150px"></div>
                <div> <span class="btn btn-default btn-file"><span class="fileupload-new">Select image</span><span class="fileupload-exists">Change</span>
                  <input type="file" name="data[Product][home_image]" id="BannerThumb">
                  </span><a class="btn btn-default fileupload-exists" data-dismiss="fileupload" href="#">Remove</a> </div>
              </div>
            </div>
		
      
          </div>
		 
		  
        <div class="form-group">
            <label class="control-label col-md-2">Home Description</label>
            <div class="col-md-8"> <?php echo $this->Form->input('home_description', array('class'=>'form-control ckeditor col-md-3','label'=>''));?> </div>
          </div>
				
		  <div class="form-group">
            <label class="control-label col-md-2">Short Description</label>
            <div class="col-md-8"> <?php echo $this->Form->input('short_description', array('class'=>'form-control ckeditor col-md-3','label'=>''));?> </div>
          </div>
          <div class="form-group">
            <label class="control-label col-md-2">Description</label>
            <div class="col-md-8"> <?php echo $this->Form->input('description', array('class'=>'form-control ckeditor col-md-3','label'=>''));?> </div>
          </div>
		  <div class="form-group">
            <label class="control-label col-md-2">Specification</label>
            <div class="col-md-8"> <?php echo $this->Form->input('specification', array('class'=>'form-control ckeditor col-md-3','label'=>''));?> </div>
          </div>
		  <?php /*
		  <div class="form-group">
            <label class="control-label col-md-2">Cost Description</label>
            <div class="col-md-8"> <?php echo $this->Form->input('costdescription', array('class'=>'form-control ckeditor col-md-3','label'=>''));?> </div>
          </div>
		  */
		  ?>
		  
		  
		  
          <div class="form-group">
            <label class="control-label col-md-2">Meta Title</label>
            <div class="col-md-8"> <?php echo $this->Form->input('meta_title', array('class'=>'form-control col-md-3','label'=>''));?> </div>
          </div>
		  
		    <div class="form-group">
            <label class="control-label col-md-2">Meta Description</label>
            <div class="col-md-8"> <?php echo $this->Form->input('meta_desc', array('class'=>'form-control col-md-3','label'=>''));?> </div>
          </div>
		  
          <div class="form-group">
            <label class="control-label col-md-2">Meta Keyword</label>
            <div class="col-md-8"> <?php echo $this->Form->input('meta_keyword', array('class'=>'form-control col-md-3','label'=>''));?> </div>
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
          <?php echo $this->Form->end(); ?> </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">     
        $(document).on('change', '.ddStatus', function(e) {
            var element = $(this); 
            currentParentCategory = $(this).val(); 		 
            $.ajax({    
					url: '<?php echo Router::url(array('controller'=>'products', 'action'=>'dropdown_subcategories'))?>',
					async: false,
					type: "POST", 
					data: "parent_category_id="+currentParentCategory, 
					dataType: "html",
					success: function(data) {
					$('#subcategorieslist').html(data);
					}
				})
            });            
</script>
