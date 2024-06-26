<?php ?>
<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Catalogs <?php //echo $title_for_layout?></h1>
  </div>
   
  <!-- DataTables Example -->
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-table"></i>Manage Catalogs
          <?php 
		   echo $this->Html->link("<i class=\"icon-plus\"></i>New Catalog",
		   array( 'action' => 'add', 'admin' => true),
		    array('escape' => FALSE,'class' => 'btn btn-sm btn-primary-outline pull-right')); 
			?>
        </div>
        <div class="widget-content padded clearfix">
          <table class="table table-bordered table-striped" id="dataTable1">
            <thead>
              <th>ID</th>
              <th>Catalog Name</th>
			  <!--<th>Product</th>-->
			  <th>Status</th>
              <th class="actions">Actions</th>
              </thead>
            <tbody>
			 	<?php foreach ($products as $product): ?>
              <tr>
				<td><?php echo h($product['Catalog']['id']); ?></td>
				<td><?php echo h($product['Catalog']['name']); ?></td>
			<!--	<td><?php //echo $product['Category']['name']; ?></td>-->		
				<td><?php	
			$options = array( '1' => 'Active', '0' => 'Inactive');
			echo $this->Form->select('active', $options, array('empty'=>false, 'name'=>'data[Catalog][active]', 'default'=>$product['Catalog']['active'], 'class'=>'form-control ddStatus', 'data-catalog_id'=>$product['Catalog']['id']));
			?>
			<span class="col-md-2 success_msg<?php echo h($product['Catalog']['id']); ?>"></span>
			</td>	
		
            <td class="actions">
		   <div class="action-buttons"> 		
		   <?php 
		   echo $this->Html->link("<i class=\"icon-pencil\"></i>",
		   array( 'action' => 'edit', $product['Catalog']['id']),
		    array('escape' => FALSE,'class' => 'table-actions')); 
		  ?>
			 

<?php /* echo $this->Form->postLink("<i class=\"icon-trash\"></i>", 
array('action' => 'delete', $product['Catalog']['id']), 
array('escape' => FALSE,'class' => 'table-actions'), __('Are you sure you want to delete # %s?', $product['Catalog']['id'])); */  ?>

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

<script>
$('#flashMessage').addClass('alert alert-success');
</script>  

 <script type="text/javascript">     
        $(document).on('change', '.ddStatus', function(e) {
            var element = $(this); 
            currentStatus = $(this).val(); // Current Status
            $.ajax({
                type: 'POST',
                url: '<?php echo Router::url(array('controller'=>'catalogs', 'action'=>'change_catalog_status'))?>', 
                data: 'catalog_id='+element.data('catalog_id')+'&status='+currentStatus,
                success: function(jsonResponse) {
                    var response = $.parseJSON(jsonResponse);
                    if(response.status != 'success')
                    {
                        element.val(!currentStatus);
                    }
                    
                  //  alert(response.message);
					$('.success_msg'+element.data('catalog_id')).show();
				
			    setTimeout(function() { $('.success_msg'+element.data('catalog_id')).hide(); }, 2000);
				  
				 $('.success_msg'+element.data('catalog_id')).html('<h3><i class="text-success icon-check"></i></h3>');
                    }
                });
            });            
  </script> 
