<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Website Settings
      <?php //echo $title_for_layout?>
    </h1>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-table"></i>Website Details </div>
        <div class="widget-content padded clearfix"> 
		 <?php echo $this->Form->create('Setting', array('enctype'=>'multipart/form-data', "class" => "form-horizontal" )); ?>
		 <?php 	echo $this->Form->input('id');?>
          <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Site Name</label>
            <div class="col-sm-4"> <?php echo $this->Form->input('name', array('class'=>'form-control col-md-3','label'=>''));?> </div>
            <label for="site_name" class="col-sm-2 control-label">Site Logo</label>
            <div class="col-sm-4">
               	<?php
				
				$thumbImageurl = $this->Html->url('/images/'.$this->data['Setting']['sitelogo']);
				$Imageurl = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";
				
				$Imageurl = ($this->data['Setting']['sitelogo'] != '')?$thumbImageurl:$Imageurl;
				?>
                   <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;"> <img src="<?php echo $Imageurl;?>"> </div>
                    <div class="fileupload-preview fileupload-exists img-thumbnail" style="width: 200px; max-height: 150px"></div>
                    <div> <span class="btn btn-default btn-file"><span class="fileupload-new">Select image</span><span class="fileupload-exists">Change</span>
 					  <input type="file" name="data[Setting][sitelogo]" id="SettingThumb">
                      </span><a class="btn btn-default fileupload-exists" data-dismiss="fileupload" href="#">Remove</a> </div>
                  </div>
 				
            </div>
          </div>
          <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('email', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">Email Contact</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('email_contact', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
          <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Address 1</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('address1', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">Address 2</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('address2', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
          <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Address 3</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('address3', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">Contact Number</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('contact_number', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
		   <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">New_Address 1</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('new_address2', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">New_Address 2</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('new_address3', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
		  <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">New_Address 3</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('new_address4', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">New_number 2</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('new_number', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
		   <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">company_New email</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('company_email1', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">company_New Number</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('company_number1', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
          <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Facebook Url </label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('facebook_url', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">Twitter Url </label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('twitter_url', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
          <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Googleplus Url </label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('googleplus_url', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">Instagram Url </label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('instagram_url', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
          <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Linkedin Url </label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('linkedin_url', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">Pinterest Url </label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('pinterest_url', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
		    <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Youtube Url </label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('youtube_url', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
            <label for="site_name" class="col-sm-2 control-label">Skype Url </label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('skype_url', array('class'=>'form-control col-md-3','label'=>''));?>
            </div>
          </div>
          
          <div class="form-group">
            <label for="site_name" class="col-sm-2 control-label">Google Analytics</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('google_analytics', array('class'=>'form-control col-md-3','label'=>''));?>
            </div> 			
			  <label for="site_name" class="col-sm-2 control-label">Additional Tracking JS</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('extra_js', array('class'=>'form-control col-md-3','label'=>''));?>
            </div> 			 
          </div>
		  
		 <div class="form-group">          
            <label for="site_name" class="col-sm-2 control-label">Image Keyword</label>			
             <div class="col-sm-4">
              <?php	echo $this->Form->input('image_keyword', array('class'=>'form-control col-md-3','label'=>''));?>
            </div> 			 
          </div>
		  
		  <div class="form-group">          
            <label for="site_name" class="col-sm-2 control-label">Header Text Title</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('header_text_title', array('class'=>'form-control col-md-3','label'=>''));?>
            </div> 
			
			  <label for="site_name" class="col-sm-2 control-label">Footer Text Title</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('footer_text_title', array('class'=>'form-control col-md-3','label'=>''));?>
            </div> 			 
          </div>
		  
		  <div class="form-group">          
            <label for="site_name" class="col-sm-2 control-label">Header Text</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('header_text', array('class'=>'ckeditor form-control col-md-3','label'=>''));?>
            </div> 
			
			  <label for="site_name" class="col-sm-2 control-label">Footer Text</label>
            <div class="col-sm-4">
              <?php	echo $this->Form->input('footer_text', array('class'=>'form-control col-md-3','label'=>''));?>
            </div> 	
			 
          </div>
          <div class="form-group text-left">
            <div class="col-sm-offset-2 col-sm-7">
              <button class="btn btn-success" type="submit"><span class="fa fa-refresh"></span>&nbsp;Save Settings</button>
            </div>
          </div>
          <?php echo $this->Form->end(); ?> </div>
      </div>
    </div>
  </div>
</div>
<script>
$('#flashMessage').addClass('alert alert-success');
</script>
