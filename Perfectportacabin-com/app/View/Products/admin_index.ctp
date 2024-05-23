<?php ?>
<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Products <?php //echo $title_for_layout?></h1>
  </div>
   
  <!-- DataTables Example -->
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-table"></i>Manage Products
          <?php 
		   echo $this->Html->link("<i class=\"icon-plus\"></i>New Product",
		   array( 'action' => 'add',  'admin' => true),
		    array('escape' => FALSE,'class' => 'btn btn-sm btn-primary-outline pull-right')); 
			?>
			  
        </div>
        <div class="widget-content padded clearfix">
          <table class="table table-bordered table-striped" id="dataTable1">
            <thead>
              <th>ID</th>
              <th>Product Name</th>
			  <!-- <th>Category Id </th>-->
			  <th>Image</th>
			  <th>Status</th>
			  <th>Order</th>
			  <th>Featured</th>
              <th class="actions">Actions</th>
              </thead>
            <tbody>
			 	<?php foreach ($products as $product): 
				
				$thumbImageurl = 'images/products/'.$product['Product']['image'];
				$Imageurl = 'images/no-image.jpg';
				
				$Imageurl = ($product['Product']['image'] != '')?$thumbImageurl:$Imageurl;
				?>
              <tr>
				<td><?php echo h($product['Product']['id']); ?></td>
				<td><?php echo h($product['Product']['name']); ?></td>
			   <!-- <td> <?php // echo h($product['Product']['category_id']); ?> </td>-->
				<td align="center">
				<img src="<?php echo $Imageurl;?>" 
				width= "180" height= "180" alt = "<?php echo $product['Product']['image'] ;?>" class = "image"/></td>	

			<td>
			<?php	
			$options = array( '1' => 'Active', '0' => 'Inactive');
			echo $this->Form->select('active', $options, array('empty'=>false, 'name'=>'data[Product][active]', 'default'=>$product['Product']['active'], 'class'=>'form-control ddStatus', 'data-product_id'=>$product['Product']['id']));
			?>
			<span class="col-md-2 success_msg<?php echo h($product['Product']['id']); ?>"></span>
			</td>
             <td>
			<?php				

			echo $this->Form->input('product_order', array( 'style' => 'width:50px;', 'label' => '', 'empty'=>false, 'name'=>'data[Product][product_order]', 'default'=>$product['Product']['product_order'], 'class'=>'form-control col-md-2 product_order', 'data-product_id'=>$product['Product']['id']));

			?>
				
			<span class="col-md-2 success_msg_order<?php echo h($product['Product']['id']); ?>"></span>

				</td>			
			<td>
			<?php	
			$options = array( '1' => 'Yes', '0' => 'No');
			echo $this->Form->select('hot_product', $options, array('empty'=>false, 'name'=>'data[Product][product_hot]', 'default'=>$product['Product']['hot_product'], 'class'=>'form-control ddHotStatus', 'data-product_id'=>$product['Product']['id']));
			?>
			<span class="col-md-2 success_msg_hotproduct<?php echo h($product['Product']['id']); ?>"></span>
			</td>
			
			
                  <td class="actions">
		  <div class="action-buttons"> 	
 
			
			<a href="<?php echo $this->webroot;?><?php echo h($product['Category']['slug']); ?>/<?php echo h($product['Product']['slug']); ?>.html" target="_blank" class="table-actions"><i class="icon-eye-open"></i></a>
		
			
			<a href="<?php echo $this->webroot;?>admin/galleries/index/<?php echo $product['Product']['id'];?>" class="table-actions"><i class="icon-camera"></i></a>

				 		  
		   <?php 
		   echo $this->Html->link("<i class=\"icon-pencil\"></i>",
		   array( 'action' => 'edit', $product['Product']['id']),
		    array('escape' => FALSE,'class' => 'table-actions')); 
		  ?>
		
		<?php 
		 
		  echo $this->Html->link("<i class=\"icon-globe\"></i>",
		  array( 'action' => 'seo', $product['Product']['id']),
		   array('escape' => FALSE,'class' => 'table-actions')); 

		 ?> 
	 

<?php echo $this->Form->postLink("<i class=\"icon-trash\"></i>", 
array('action' => 'delete', $product['Product']['id']), 
array('escape' => FALSE,'class' => 'table-actions'), __('Are you sure you want to delete # %s?', $product['Product']['id'])); ?>

			</div>
				 </td>
              
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- end DataTables Example -->
</div>
   

<?php //echo $this->Tree->generate($categoriestree, array('element' => 'categories/tree_item', 'class' => 'categorytree', 'id' => 'categorytree')); ?>
<script>
$('#flashMessage').addClass('alert alert-success');
</script>
 
 
 
 
<script type="text/javascript">     
        $(document).on('change', '.ddHotStatus', function(e) {
            var element = $(this); 
            currentHotStatus = $(this).val(); // Current Status
            $.ajax({
                type: 'POST',
                url: '<?php echo Router::url(array('controller'=>'products', 'action'=>'change_product_hot'))?>', 
                data: 'product_id='+element.data('product_id')+'&hot_product='+currentHotStatus,
                success: function(jsonResponse) {
                    var response = $.parseJSON(jsonResponse);
                    if(response.status != 'success')
                    {
                        element.val(!currentHotStatus);
                    }
                    
                 //   alert(response.message);
					$('.success_msg_hotproduct'+element.data('product_id')).show();
				
			    setTimeout(function() { $('.success_msg_hotproduct'+element.data('product_id')).hide(); }, 2000);
				  
				 $('.success_msg_hotproduct'+element.data('product_id')).html('<h3><i class="text-success icon-check"></i></h3>');
                    }
                });
            });            
  </script> 
  
  
 <script type="text/javascript">     
        $(document).on('change', '.ddStatus', function(e) {
            var element = $(this); 
            currentStatus = $(this).val(); // Current Status
            $.ajax({
                type: 'POST',
                url: '<?php echo Router::url(array('controller'=>'products', 'action'=>'change_product_status'))?>', 
                data: 'product_id='+element.data('product_id')+'&status='+currentStatus,
                success: function(jsonResponse) {
                    var response = $.parseJSON(jsonResponse);
                    if(response.status != 'success')
                    {
                        element.val(!currentStatus);
                    }
                    
                 //   alert(response.message);
					$('.success_msg'+element.data('product_id')).show();
				
			    setTimeout(function() { $('.success_msg'+element.data('product_id')).hide(); }, 2000);
				  
				 $('.success_msg'+element.data('product_id')).html('<h3><i class="text-success icon-check"></i></h3>');
                    }
                });
            });            
  </script> 

<script type="text/javascript">     
        $(document).on('change', '.product_order', function(e) {
            var element = $(this); 
            currentCertificate_order = $(this).val(); // Current Status
            $.ajax({
                type: 'POST',
                url: '<?php echo Router::url(array('controller'=>'products', 'action'=>'change_product_order'))?>', // change_category_order is a Function in controller
                data: 'product_id='+element.data('product_id')+'&product_order='+currentCertificate_order,
                success: function(jsonResponse) {
                    var response = $.parseJSON(jsonResponse);
                    if(response.status != 'success')
                    {
                        element.val(!currentStatus);
                    }
                    
                $('.success_msg_order'+element.data('product_id')).show();
				
			    setTimeout(function() { $('.success_msg_order'+element.data('product_id')).hide(); }, 2000);
				  
				$('.success_msg_order'+element.data('product_id')).html('<h3><i class="text-success icon-check"></i></h3>');

                    }
                });
            });            
  </script> 
