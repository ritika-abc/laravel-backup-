<?php ?>
<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Events</h1>
  </div>
  <!-- DataTables Example -->
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-table"></i>Manage Events
          <?php 
		   echo $this->Html->link("<i class=\"icon-plus\"></i>New Events",
		   array( 'action' => 'add', 'admin' => true),
		    array('escape' => FALSE,'class' => 'btn btn-sm btn-primary-outline pull-right')); 
			?>
        </div>
        <div class="widget-content padded clearfix">
          <table class="table table-bordered table-striped" id="dataTable1">
            <thead>
			  <th width="5%">ID</th>
               <th width="35%">Name</th>
			   <th width="40%">Video URL</th>              
               <th class="actions">Actions</th>
              </thead>
            <tbody>
	<?php foreach ($events as $gallery): ?>
              <tr>
				<td><?php echo h($gallery['Event']['id']); ?></td>
				<td><?php echo h($gallery['Event']['name']); ?></td>	
                <td><?php echo h($gallery['Event']['url']); ?></td>	
				
 				 
                <td class="actions">
				<div class="action-buttons"> 
			 

				<?php 
				echo $this->Html->link("<i class=\"icon-pencil\"></i>",
				array( 'action' => 'edit', $gallery['Event']['id']),
				array('escape' => FALSE,'class' => 'table-actions')); 
				?>


				<?php echo $this->Form->postLink("<i class=\"icon-trash\"></i>", 
				array('action' => 'delete', $gallery['Event']['id']), 
				array('escape' => FALSE,'class' => 'table-actions'), __('Are you sure you want to delete # %s?', $gallery['Event']['id'])); ?>

 
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
 
  