<?php ?>
<div class="container-fluid main-content">
  <div class="page-title">
    <h1> Video</h1>
  </div>
  <!-- DataTables Example -->
  <div class="row">
    <div class="col-lg-12">
      <div class="widget-container fluid-height clearfix">
        <div class="heading"> <i class="icon-table"></i>Manage Video
          <?php 
		   echo $this->Html->link("<i class=\"icon-plus\"></i>New Video",
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
	<?php foreach ($videos as $gallery): ?>
              <tr>
				<td><?php echo h($gallery['Video']['id']); ?></td>
				<td><?php echo h($gallery['Video']['name']); ?></td>	
                <td><?php echo h($gallery['Video']['video_url']); ?></td>	
				
 				 
                <td class="actions">
				<div class="action-buttons"> 
			 

				<?php 
				echo $this->Html->link("<i class=\"icon-pencil\"></i>",
				array( 'action' => 'edit', $gallery['Video']['id']),
				array('escape' => FALSE,'class' => 'table-actions')); 
				?>


				<?php echo $this->Form->postLink("<i class=\"icon-trash\"></i>", 
				array('action' => 'delete', $gallery['Video']['id']), 
				array('escape' => FALSE,'class' => 'table-actions'), __('Are you sure you want to delete # %s?', $gallery['Video']['id'])); ?>

 
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
 
  