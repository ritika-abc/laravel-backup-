<?php ?>
<!-- Content -->
  <div id="content"> 
    
    <!-- Linking -->
    <div class="linking">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li class="active">Authentication</li>
        </ol>
      </div>
    </div>
    
    <!-- Blog -->
    <section class="login-sec padding-top-30 padding-bottom-100">
      <div class="container">
        <div class="row">
          <div class="col-md-6"> 
            <!-- Login Your Account -->
            <h5>Login Your Account</h5>
            
            <!-- FORM -->
			 <form action="" method="post">
              <ul class="row">
			   
                <li class="col-sm-12">
                  <label>Username
                    <input type="text" class="form-control" name="email" placeholder="">
                  </label>
                </li>
                <li class="col-sm-12">
                  <label>Password
                    <input type="password" class="form-control" name="password" placeholder="">
                  </label>
                </li>
                <li class="col-sm-6">
                  <div class="checkbox checkbox-primary">
                    <input id="cate1" class="styled" type="checkbox" >
                    <label for="cate1"> Keep me logged in </label>
                  </div>
                </li>
                <li class="col-sm-6"> <a href="#." class="forget">Forgot your password?</a> </li>
                <li class="col-sm-12 text-left">
				<input type="hidden" name="mode" value="login">
                  <button type="submit" class="btn-round">Login</button>
                </li>
              </ul>
            </form>
          </div>
          
          <!-- Don’t have an Account? Register now -->
          <div class="col-md-6">
            <h5>Don’t have an Account? Register now</h5>
            
            <!-- FORM -->
			<?php echo $this->Form->create('User'); ?>
			  	<?php
				 
				$Imageurl = "images/no-image.jpg";
				 
				?>
				<div class="form-group">
				<label class="control-label col-md-2">Image</label>
				<div class="col-md-3">
                  <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="fileupload-new img-thumbnail" style="width: 200px; height: 150px;"> <img src="<?php echo $Imageurl;?>"> </div>
                    <div class="fileupload-preview fileupload-exists img-thumbnail" style="width: 200px; max-height: 150px"></div>
                    <div> <span class="btn btn-default btn-file"><span class="fileupload-new">Select image</span><span class="fileupload-exists">Change</span>
 					  <input type="file" name="data[Student][image]" id="BlogThumb">
                      </span><a class="btn btn-default fileupload-exists" data-dismiss="fileupload" href="#">Remove</a> </div>
                  </div>
				 
                   </div>
                 <label class="control-label col-md-2">Select Course</label>
                <div class="col-md-3">				  	
                      <?php echo $this->Form->input('category_id', array('category_id' => 'data[Student][category_id]', 'class'=>'select2able col-md-3','label'=>'',  'required' => 'required', 'empty' => array('' => 'Select Category')));?>
                </div>
				
				</div>  
               <div class="form-group">
                  <label class="control-label col-md-2">Name</label>
                  <div class="col-md-3">				  	
                      <?php echo $this->Form->input('name', array('class'=>'form-control col-md-3','label'=>'','required' => 'required',));?> 
                  </div>
				 
				  <label class="control-label col-md-2">Email</label>
				  <div class="col-md-3">
				  <?php echo $this->Form->input('email', array('class'=>'form-control col-md-3','label'=>'','required' => 'required',));?> 
				  </div>
				    </div>
                <div class="form-group">
                  <label class="control-label col-md-2">Password</label>
                  <div class="col-md-3">				  	
                      <?php echo $this->Form->input('password', array('class'=>'form-control col-md-3','label'=>'','required' => 'required',));?> 
                   </div>
				 
				  <label class="control-label col-md-2"> Phone</label>
				  <div class="col-md-3">
				     <?php echo $this->Form->input('phone', array('class'=>'form-control col-md-3','label'=>'','required'=>'required','onkeypress'=>'return event.charCode >= 8 && event.charCode <= 57' ,' maxlength'=>'15'));?> 
				  </div>
		        </div>
				<div class="form-group">
                  <label class="control-label col-md-2">Alternate Phone</label>
                  <div class="col-md-3">				  	
                   <?php echo $this->Form->input('alternate_phone', array('class'=>'form-control col-md-3','label'=>'','onkeypress'=>'return event.charCode >= 8 && event.charCode <= 57' ,' maxlength'=>'15'));?> 
                   </div>
				 
				  <label class="control-label col-md-2">Enrollment No.</label>
				  <div class="col-md-3">
				   <?php echo $this->Form->input('enrollment_no', array('class'=>'form-control col-md-3','label'=>'','required' => 'required',));?> 
				  </div>
		        </div>
				
				
                   <div class="form-group">
				      <label class="control-label col-md-2">Address</label>
					    
                          <div class="col-md-8"> <?php echo $this->Form->input('address', array('class'=>'form-control col-md-3','label'=>''));?> </div>
                     
					  
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
                    <a href="customer/login" class="btn btn-info">Login</a>
                  </div>
            <?php echo $this->Form->end(); ?> 
          </div>
        </div>
      </div>
    </section>
     
  </div>
  <!-- End Content --> 
  