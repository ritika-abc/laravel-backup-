<?php ?>
<div class="container-fluid main-content">
   <div class="page-title">
      <h1> Ourclient <?php //echo $title_for_layout?></h1>
   </div>
   <!-- DataTables Example -->
   <div class="row">
      <div class="col-lg-12">
         <div class="widget-container fluid-height clearfix">
            <div class="heading"> <i class="icon-table"></i>Manage Client
               <?php 
                  echo $this->Html->link("<i class=\"icon-plus\"></i>New Client",
                  array( 'action' => 'add', 'admin' => true),
                   array('escape' => FALSE,'class' => 'btn btn-sm btn-primary-outline pull-right')); 
                  ?>
            </div>
            <div class="widget-content padded clearfix">
               <table class="table table-bordered table-striped" id="dataTable1">
                  <thead>
                     <th width="5%">ID</th>
                     <th >Name</th>
                     <th width="40%">Image</th>
                     <th>Status</th>
                     <th>Order</th>
                     <th class="actions">Actions</th>
                  </thead>
                  <tbody>
                     <?php foreach ($ourclients as $items): ?>
                     <tr>
                        <td><?php echo h($items['Ourclient']['id']); ?></td>
                        <td><?php echo h($items['Ourclient']['name']); ?></td>
                        <td  align="center">
                           <?php
                              $thumbImageurl = '/images/ourclients/'.$items['Ourclient']['image'];
                              $Imageurl = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";
                              
                              $Imageurl = ($items['Ourclient']['image'] != '')?$thumbImageurl:$Imageurl;
                              ?>
                           <?php echo $this->Html->image($Imageurl, array('alt' => $items['Ourclient']['name'], 'width' => 100, 'height' => 75));?>
                        </td>
                        <td>
                           <?php	
                              $options = array( '1' => 'Active', '0' => 'Inactive');
                              echo $this->Form->select('active', $options, array('empty'=>false, 'name'=>'data[Ourclient][active]', 'default'=>$items['Ourclient']['active'], 'class'=>'form-control ddStatus', 'data-client_id'=>$items['Ourclient']['id']));
                              ?>
                           <span class="col-md-2 success_msg<?php echo h($items['Ourclient']['id']); ?>"></span>
                        </td>
                        <td class="col-md-2">
                           <?php				
                              echo $this->Form->input('client_order', array( 'style' => 'width:50px;', 'label' => '', 'empty'=>false, 'name'=>'data[Ourclient][client_order]', 'default'=>$items['Ourclient']['client_order'], 'class'=>'form-control col-md-2 client_order', 'data-client_id'=>$items['Ourclient']['id']));
                               
                              	?>
                           <span class="col-md-2 success_msg_order<?php echo h($items['Ourclient']['id']); ?>"></span>
                        </td>
                        <td class="actions">
                           <div class="action-buttons"> 
                              <?php 
                                 echo $this->Html->link("<i class=\"icon-pencil\"></i>",
                                 array( 'action' => 'edit', $items['Ourclient']['id']),
                                 array('escape' => FALSE,'class' => 'table-actions')); 
                                 ?>
                              <?php echo $this->Form->postLink("<i class=\"icon-trash\"></i>", 
                                 array('action' => 'delete', $items['Ourclient']['id']), 
                                 array('escape' => FALSE,'class' => 'table-actions'), __('Are you sure you want to delete # %s?', $items['Ourclient']['id'])); ?>
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
           url: '<?php echo Router::url(array('controller'=>'ourclients', 'action'=>'change_ourclient_status'))?>', 
           data: 'client_id='+element.data('client_id')+'&status='+currentStatus,
           success: function(jsonResponse) {
               var response = $.parseJSON(jsonResponse);
               if(response.status != 'success')
               {
                   element.val(!currentStatus);
               }
               
              // alert(response.message);
   $('.success_msg'+element.data('client_id')).show();
   
   setTimeout(function() { $('.success_msg'+element.data('client_id')).hide(); }, 2000);
   
   $('.success_msg'+element.data('client_id')).html('<h3><i class="text-success icon-check"></i></h3>');
               }
           });
       });            
</script> 
<script type="text/javascript">     
   $(document).on('change', '.client_order', function(e) {
       var element = $(this); 
       currentBlog_order = $(this).val(); // Current Status
       $.ajax({
           type: 'POST',
           url: '<?php echo Router::url(array('controller'=>'ourclients', 'action'=>'change_ourclient_order'))?>', // change_category_order is a Function in controller
           data: 'client_id='+element.data('client_id')+'&client_order='+currentBlog_order,
           success: function(jsonResponse) {
               var response = $.parseJSON(jsonResponse);
               if(response.status != 'success')
               {
                   element.val(!currentStatus);
               }
               
           $('.success_msg_order'+element.data('client_id')).show();
   
   setTimeout(function() { $('.success_msg_order'+element.data('client_id')).hide(); }, 2000);
   
   $('.success_msg_order'+element.data('client_id')).html('<h3><i class="text-success icon-check"></i></h3>');
   
               }
           });
       });            
</script>