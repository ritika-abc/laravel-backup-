<?php ?>
<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Certificates <?php //echo $title_for_layout?></h1>
  </div>
  <!-- DataTables Example -->
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-table"></i>Manage Certificates
          <?php 
		   echo $this->Html->link("<i class=\"icon-plus\"></i>New Certificate",
		   array( 'action' => 'add', 'admin' => true),
		    array('escape' => FALSE,'class' => 'btn btn-sm btn-primary-outline pull-right')); 
			?>
        </div>
        <div class="widget-content padded clearfix">
          <table class="table table-bordered table-striped" id="dataTable1">
            <thead>
			  <th width="5%">ID</th>
               <th>Name</th>
			   <th >Image</th> 
               <th>Status</th>	
  <th>Order</th>			   
               <th class="actions">Actions</th>
              </thead>
            <tbody>
			<?php foreach ($all_certificates as $certificate): ?>
              <tr>
				<td><?php echo h($certificate['Certificate']['id']); ?></td>
				<td><?php echo h($certificate['Certificate']['name']); ?></td>	
 
				<td  align="center">
				<?php
				
				$thumbImageurl = '/images/certificates/'.$certificate['Certificate']['image'];
				$Imageurl = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";
				
				$Imageurl = ($certificate['Certificate']['image'] != '')?$thumbImageurl:$Imageurl;
				?>

				<?php echo $this->Html->image($Imageurl, array('alt' => $certificate['Certificate']['name'], 'width' => 100, 'height' => 75));?>
				</td>
            <td>
			<?php	
			$options = array( '1' => 'Active', '0' => 'Inactive');
			echo $this->Form->select('active', $options, array('empty'=>false, 'name'=>'data[Certificate][active]', 'default'=>$certificate['Certificate']['active'], 'class'=>'form-control ddStatus', 'data-certificate_id'=>$certificate['Certificate']['id']));
			?>
			<span class="col-md-2 success_msg<?php echo h($certificate['Certificate']['id']); ?>"></span>
			</td>
			
			<td class="col-md-2">
				<?php				
 				 
				echo $this->Form->input('certificate_order', array( 'style' => 'width:50px;', 'label' => '', 'empty'=>false, 'name'=>'data[Certificate][certificate_order]', 'default'=>$certificate['Certificate']['certificate_order'], 'class'=>'form-control col-md-2 certificate_order', 'data-certificate_id'=>$certificate['Certificate']['id']));
				 
 				?>
				
			<span class="col-md-2 success_msg_order<?php echo h($certificate['Certificate']['id']); ?>"></span>

				</td>
                <td class="actions">
				<div class="action-buttons"> 
			 

				<?php 
				echo $this->Html->link("<i class=\"icon-pencil\"></i>",
				array( 'action' => 'edit', $certificate['Certificate']['id']),
				array('escape' => FALSE,'class' => 'table-actions')); 
				?>


				<?php echo $this->Form->postLink("<i class=\"icon-trash\"></i>", 
				array('action' => 'delete', $certificate['Certificate']['id']), 
				array('escape' => FALSE,'class' => 'table-actions'), __('Are you sure you want to delete # %s?', $certificate['Certificate']['id'])); ?>

 
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
                url: '<?php echo Router::url(array('controller'=>'certificates', 'action'=>'change_certificate_status'))?>', 
                data: 'certificate_id='+element.data('certificate_id')+'&status='+currentStatus,
                success: function(jsonResponse) {
                    var response = $.parseJSON(jsonResponse);
                    if(response.status != 'success')
                    {
                        element.val(!currentStatus);
                    }
                    
                 //   alert(response.message);
					$('.success_msg'+element.data('certificate_id')).show();
				
			    setTimeout(function() { $('.success_msg'+element.data('certificate_id')).hide(); }, 2000);
				  
				 $('.success_msg'+element.data('certificate_id')).html('<h3><i class="text-success icon-check"></i></h3>');
                    }
                });
            });            
  </script> 
 
 <script type="text/javascript">     
        $(document).on('change', '.certificate_order', function(e) {
            var element = $(this); 
            currentCertificate_order = $(this).val(); // Current Status
            $.ajax({
                type: 'POST',
                url: '<?php echo Router::url(array('controller'=>'certificates', 'action'=>'change_certificate_order'))?>', // change_category_order is a Function in controller
                data: 'certificate_id='+element.data('certificate_id')+'&certificate_order='+currentCertificate_order,
                success: function(jsonResponse) {
                    var response = $.parseJSON(jsonResponse);
                    if(response.status != 'success')
                    {
                        element.val(!currentStatus);
                    }
                    
                $('.success_msg_order'+element.data('certificate_id')).show();
				
			    setTimeout(function() { $('.success_msg_order'+element.data('certificate_id')).hide(); }, 2000);
				  
				$('.success_msg_order'+element.data('certificate_id')).html('<h3><i class="text-success icon-check"></i></h3>');

                    }
                });
            });            
  </script> 