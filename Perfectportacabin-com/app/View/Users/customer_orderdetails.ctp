<?php echo $this->set('title_for_layout', 'Order Details'); ?>

 
 
 <!-- Content -->
  <div id="content"> 
    
    <!-- Ship Process -->
    <div class="ship-process padding-top-30 padding-bottom-30">
      <div class="container">
            
      </div>
    </div>
    
    <!-- Payout Method -->
    <section class="padding-bottom-60">
      <div class="container"> 
        <!-- Payout Method -->
        <div class="pay-method check-out"> 
          
          <!-- Shopping Cart -->
          <div class="heading">
            <h2>Order Details</h2>
            <hr>
			

        <!-- Button -->
        <div class="text-right"> <a href="customer/orderhistory" class="btn-round btn-light">Back to Order History</a> 
		 
		</div>
          </div>
          
<div class="row">
    <div class="col col-sm-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Customer Info</h3>
            </div>
            <div class="panel-body">
                <?php echo $order_data['Order']['first_name'];?> <?php echo $order_data['Order']['last_name'];?><br />
                Email: <?php echo $order_data['Order']['email'];?><br />
                Phone: <?php echo $order_data['Order']['phone'];?><br>
				&nbsp;
            </div>
        </div>
    </div>
    <div class="col col-sm-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Billing Address</h3>
            </div>
            <div class="panel-body">
                <?php echo $order_data['Order']['first_name'];?> <?php echo $order_data['Order']['last_name'];?><br />
                <?php echo $order_data['Order']['billing_address'];?><br />
                <?php echo $order_data['Order']['billing_address2'];?><br />
                <?php echo $order_data['Order']['billing_city'];?>, <?php echo $order_data['Order']['billing_state'];?> <?php echo $order_data['Order']['billing_zip'];?><br />
             </div>
        </div>
    </div>
    <div class="col col-sm-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Shipping Address</h3>
            </div>
            <div class="panel-body">
                <?php echo $order_data['Order']['first_name'];?> <?php echo $order_data['Order']['last_name'];?><br />
                <?php echo $order_data['Order']['shipping_address'];?><br />
                <?php echo $order_data['Order']['shipping_address2'];?><br />
                <?php echo $order_data['Order']['shipping_city'];?>, <?php echo $order_data['Order']['shipping_state'];?> <?php echo $order_data['Order']['shipping_zip'];?><br />
             </div>
        </div>
    </div>
</div>

<hr>

<div class="panel panel-default">
<div class="panel-body">
<div class="row">
    <div class="col col-sm-1">#</div>
    <div class="col col-sm-4">ITEM</div>
    <div class="col col-sm-2">WEIGHT</div>
     <div class="col col-sm-2">PRICE</div>
    <div class="col col-sm-1" style="text-align: right;">QUANTITY</div>
    <div class="col col-sm-2" style="text-align: right;">SUBTOTAL</div>
</div>

<br />
<br />

<?php foreach ($order_data['OrderItem'] as $item): ?>
<div class="row">
    <div class="col col-sm-1"></div>
    <div class="col col-sm-4">
    <?php echo $item['name']; ?>
     <br />
     </div>
    <div class="col col-sm-2"><?php echo $item['weight']; ?></div>
     <div class="col col-sm-2"><i class="fa fa-rupee"></i><?php echo $item['price']; ?></div>
    <div class="col col-sm-1" style="text-align: right;"><?php echo $item['quantity']; ?></div>
    <div class="col col-sm-2" style="text-align: right;"><i class="fa fa-rupee"></i><?php echo $item['subtotal']; ?></div>
</div>


<br />

<?php endforeach; ?>


<hr>

<div class="row">
	<div class="col col-sm-4"></div> 
	<div class="col col-sm-2"></div>
	<div class="col col-sm-1">&nbsp;</div>
	<div class="col col-sm-1"></div>	
	<div class="col col-sm-2"  align="left" style="text-align: right;">Shipping Charges:</div>	
	<div class="col col-sm-2" style="text-align: right;"><strong><i class="fa fa-rupee"></i><?php echo $order_data['Order']['shipping']; ?></strong></div>
</div>
 
<hr>

<div class="row">
	<div class="col col-sm-4"></div> 
 	<div class="col col-sm-2">Total Items: <?php echo $order_data['Order']['order_item_count']; ?></div>	

	<div class="col col-sm-2">Total Weight: <?php echo $order_data['Order']['weight']; ?> Kg</div>

	<div class="col col-sm-2"  align="left" style="text-align: right;">Total:</div>	
	<div class="col col-sm-2" style="text-align: right;"><strong><i class="fa fa-rupee"></i><?php echo $order_data['Order']['total']; ?></strong></div>
</div>
 
 
 <br><br>
 
 
<div class="panel panel-default">
<div class="row panel-body">
	<div class="col col-sm-3"><strong>Shipping information : </strong></div> 
	<div class="col col-sm-9"><?php echo $order_data['Order']['shipping_info']; ?></div> 
</div>
</div>
</div>

      </div>
    </section>
      
