<!-- Content -->
  <div id="content"> 
    
    <!-- Linking -->
    <div class="linking">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li class="active">My Account</li>
        </ol>
      </div>
    </div>
	
    
    <!-- Blog -->
    <section class="login-sec padding-top-30 padding-bottom-100">
      <div class="container">
	  <div class="row">
        <!--Middle Part Start-->
        <div class="col-sm-9" id="content">
          <h1 class="title">My Account</h1>
          <p class="lead">Hello, <strong><?php echo $customer_data['User']['first_name']. " ".$customer_data['User']['last_name'];?>!</strong> - To update your account information.</p>
			<?php echo $this->Form->create('User'); ?>
          <div class="row">
            <div class="col-sm-6">
            <fieldset id="personal-details">
              <legend>Personal Details</legend>
              <div class="form-group required">
         <?php echo $this->Form->input('first_name', array('value' => $customer_data['User']['first_name'], 'class' => 'form-control')); ?>
              </div>
              <div class="form-group required">
         <?php echo $this->Form->input('last_name', array('value' => $customer_data['User']['last_name'], 'class' => 'form-control')); ?>
              </div>
              <div class="form-group required">
         <?php echo $this->Form->input('email', array('value' => $customer_data['User']['email'], 'class' => 'form-control')); ?>
              </div>
              <div class="form-group required">
         <?php echo $this->Form->input('mobile', array('value' => $customer_data['User']['mobile'], 'class' => 'form-control')); ?>
              </div>
                          </fieldset><br>
            </div>
            <div class="col-sm-6">
            <fieldset>
              <legend>Change Password</legend>
              <!--<div class="form-group required">
                <label for="input-password" class="control-label">Old Password</label>
                  <input type="password" class="form-control" id="input-password" placeholder="Old Password" value="" name="old-password">
              </div>-->
              <div class="form-group required">
                <label for="input-password" class="control-label">New Password</label>
                  <input type="password" class="form-control" id="input-password" placeholder="New Password" value="" name="data[User][password]">
              </div>
              <!--<div class="form-group required">
                <label for="input-confirm" class="control-label">New Password Confirm</label>
                  <input type="password" class="form-control" id="input-confirm" placeholder="New Password Confirm" value="" name="new-confirm">
              </div>-->
            </fieldset>
             </div>
            </div>
             
            
            
            
            <div class="buttons">
              <div class="pull-right">
                <input type="submit" class="btn btn-lg btn-round" value="Save Changes">
              </div>
            </div>
          </form>
        </div>
        <!--Middle Part End -->
        <!--Right Part Start -->
        <aside id="column-right" class="col-sm-3 hidden-xs">
          <h3 class="subtitle">Account</h3>
          <div class="list-group">
            <ul class="list-item">
              <li><a href="customer/logout">Logout</a></li>
              <li><a href="customer/myaccount">Change  Password</a></li>
              <li><a href="customer/myaccount">My Account</a></li>
			  <li><a href="customer/orderhistory">Order History</a></li>

			  <!--
              <li><a href="#">Address Books</a></li>
              <li><a href="wishlist.html">Wish List</a></li>
              <li><a href="#">Order History</a></li>
              <li><a href="#">Downloads</a></li>
              <li><a href="#">Reward Points</a></li>
              <li><a href="#">Returns</a></li>
              <li><a href="#">Transactions</a></li>
              <li><a href="#">Newsletter</a></li>
              <li><a href="#">Recurring payments</a></li>
			  -->
            </ul>
          </div>
        </aside>
        <!--Right Part End -->
      </div>
     
  </div>
 	  </section>
