<?php ?>
<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Home Page Menu <?php //echo $title_for_layout?></h1>
  </div>
  <!-- DataTables Example -->
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-table"></i>Manage Home Page Custom
          <?php 
		   echo $this->Html->link("<i class=\"icon-plus\"></i>New Menu",
		   array( 'action' => 'add', 'admin' => true),
		    array('escape' => FALSE,'class' => 'btn btn-sm btn-primary-outline pull-right')); 
			?>
        </div>
        <div class="widget-content padded clearfix">
          <table class="table table-bordered table-striped" id="dataTable1">
            <thead>
			  <th width="5%">ID</th>
               <th>Name</th>
			   <th>Order</th>
			    <th>Status</th>   
			   
               <th class="actions">Actions</th>
              </thead>
              <tbody>
			<?php foreach ($homepage_menu as $portfolio): ?>
              <tr>
				<td><?php echo h($portfolio['Homepagemenu']['id']); ?></td>
				<td><?php echo h($portfolio['Homepagemenu']['name']); ?></td>	
 
				<td class="col-md-2">
				<?php				
 				 
				echo $this->Form->input('menus_order', array( 'style' => 'width:50px;', 'label' => '', 'empty'=>false, 'name'=>'data[Homepagemenu][menus_order]', 'default'=>$portfolio['Homepagemenu']['menus_order'], 'class'=>'form-control col-md-2 menus_order', 'data-menu_id'=>$portfolio['Homepagemenu']['id']));
				 
 				?>
					<span class="col-md-2 success_msg_order<?php echo h($portfolio['Homepagemenu']['id']); ?>"></span>
				</td>
 				 <td>
				<?php				
 				
				$options = array( '1' => 'Active', '0' => 'Inactive');
				echo $this->Form->select('active', $options, array('empty'=>false, 'name'=>'data[Homepagemenu][active]', 'default'=>$portfolio['Homepagemenu']['active'], 'class'=>'form-control ddStatus', 'data-menu_id'=>$portfolio['Homepagemenu']['id']));
				 
 				?>
				<span class="col-md-2 success_msg<?php echo h($portfolio['Homepagemenu']['id']); ?>"></span>
				</td>
                <td class="actions">
				<div class="action-buttons"> 
			 

				<?php 
				echo $this->Html->link("<i class=\"icon-pencil\"></i>",
				array( 'action' => 'edit', $portfolio['Homepagemenu']['id']),
				array('escape' => FALSE,'class' => 'table-actions')); 
				?>


				<?php  echo $this->Form->postLink("<i class=\"icon-trash\"></i>", 
				array('action' => 'delete', $portfolio['Homepagemenu']['id']), 
				array('escape' => FALSE,'class' => 'table-actions'), __('Are you sure you want to delete # %s?', $portfolio['Homepagemenu']['id']));  ?>

 
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
        $(document).on('change', '.menus_order', function(e) {
            var element = $(this); 
            currentMenu_order = $(this).val(); // Current Status
            $.ajax({
                type: 'POST',
                url: '<?php echo Router::url(array('controller'=>'homepagemenus', 'action'=>'change_menu_order'))?>', // change_location_order is a Function in controller
                data: 'menu_id='+element.data('menu_id')+'&menus_order='+currentMenu_order,
                success: function(jsonResponse) {
                    var response = $.parseJSON(jsonResponse);
                    if(response.status != 'success')
                    {
                        element.val(!currentStatus);
                    }
                    
                  //  alert(response.message);
					$('.success_msg_order'+element.data('menu_id')).show();
				
			    setTimeout(function() { $('.success_msg_order'+element.data('menu_id')).hide(); }, 2000);
				  
				 $('.success_msg_order'+element.data('menu_id')).html('<h3><i class="text-success icon-check"></i></h3>');
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
                url: '<?php echo Router::url(array('controller'=>'homepagemenus', 'action'=>'change_menu_status'))?>', // change_location_status is a Function in controller
                data: 'menu_id='+element.data('menu_id')+'&status='+currentStatus,
                success: function(jsonResponse) {
                    var response = $.parseJSON(jsonResponse);
                    if(response.status != 'success')
                    {
                        element.val(!currentStatus);
                    }
                    
                   // alert(response.message);
					$('.success_msg'+element.data('menu_id')).show();
				
			    setTimeout(function() { $('.success_msg'+element.data('menu_id')).hide(); }, 2000);
				  
				 $('.success_msg'+element.data('menu_id')).html('<h3><i class="text-success icon-check"></i></h3>');
                    }
                });
            });            
  </script> 
 