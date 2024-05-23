<?php ?>
<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Add Product </h1>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-reorder"></i>Product Details </div>
        <div class="widget-content padded">
          <?php
			echo $this->Form->create('Product',array('enctype'=>'multipart/form-data','class' => 'form-horizontal'));
		  ?>
 
     
		 <div class="form-group">
 			  <label class="control-label col-md-2">Select Parent </label>
                <div class="col-md-4">
				  	
						
                   <?php echo $this->Form->select('parent_id',$parentproducts,array('class'=>"form-control col-md-2",'empty' =>array('' => 'Select Parent Category'))); ?>
                </div>
					 <label class="control-label col-md-2">Product Alt</label>
            <div class="col-md-4"> <?php echo $this->Form->input('product_alt', array('class'=>'form-control col-md-3','label'=>''));?> </div>
					
				</div>
				

          <div class="form-group">
            <label class="control-label col-md-2">Product Name</label>
            <div class="col-md-4"> <?php echo $this->Form->input('name', array('class'=>'form-control col-md-3','label'=>''));?> </div>
           
          </div>
<?php
$Imageurl = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";
?>
          <div class="form-group">
            <label class="control-label col-md-2">Product Image</label>
            <div class="col-md-4">
              <div class="fileupload fileupload-new" data-provides="fileupload">
                <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;"> <img src="<?php echo $Imageurl;?>"> </div>
                <div class="fileupload-preview fileupload-exists img-thumbnail" style="width: 200px; max-height: 150px"></div>
                <div> <span class="btn btn-default btn-file"><span class="fileupload-new">Select image</span><span class="fileupload-exists">Change</span>
                  <input type="file" name="data[Product][image]" id="BannerThumb">
                  </span><a class="btn btn-default fileupload-exists" data-dismiss="fileupload" href="#">Remove</a> </div>
              </div>
            </div>
          </div>
		  
		  
		  
		  
          <div class="form-group">
          <label class="control-label col-md-2">Status</label>
          <div class="col-md-4">
          <label class="radio-inline">
          <input type="radio" name="data[Product][active]" value="1">
          <span>Active</span></label>
          <label class="radio-inline">
          <input type="radio" name="data[Product][active]" value="0">
          <span>Inactive</span></label>
          <label class="radio">
          </div>
          <label class="control-label col-md-2">Featured Product</label>
          <div class="col-md-4">
          <label class="radio-inline">
          <input type="radio" name="data[Product][hot_product]" value="1">
          <span>Yes</span></label>
          <label class="radio-inline">
          <input type="radio" name="data[Product][hot_product]" value="0">
          <span>No</span></label>
          <label class="radio">
          </div>
          </div>
		  
		  <div class="form-group">
          <label class="control-label col-md-2">Header Product Status</label>
          <div class="col-md-4">
          <label class="radio-inline">
          <input type="radio" name="data[Product][header_product]" value="1">
          <span>Active</span></label>
          <label class="radio-inline">
          <input type="radio" name="data[Product][header_product]" value="0">
          <span>Inactive</span></label>
          <label class="radio">
          </div>
          </div>
		  
          <div class="form-group">
            <label class="control-label col-md-2">Description</label>
            <div class="col-md-8"> <?php echo $this->Form->input('short_description', array('class'=>'form-control ckeditor col-md-3','label'=>''));?> </div>
          </div>
          <div class="form-group">
            <label class="control-label col-md-2">ADVANTAGES</label>
            <div class="col-md-8"> <?php echo $this->Form->input('description', array('class'=>'form-control ckeditor col-md-3','label'=>''));?> </div>
          </div>
		   <div class="form-group">
            <label class="control-label col-md-2">OTHERS</label>
            <div class="col-md-8"> <?php echo $this->Form->input('extra_description', array('class'=>'form-control ckeditor col-md-3','label'=>''));?> </div>
          </div>
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
