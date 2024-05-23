<?php

function sub_categories($category_id) { 
App::import('Controller', 'Categories');
$Children_list = new CategoriesController;

$allChildren = $Children_list->get_allchildren($category_id );

return $allChildren;

} 		  

$category_id = $category['Category']['parent_id'];

if($category_id == 0) {
$category_id = $category['Category']['id'];
}

if(count($categories) > 0) {	
foreach ($categories as $category): 

$sub_categories2 = sub_categories($category['Category']['id']);	

if(count($sub_categories2) == 0) {
$sub_categories2 = sub_categories($category['Category']['parent_id']);	
 
}	
?>
<div class="open-title">
<a href="<?php echo $category['Category']['slug'];?>.htm" title="<?php echo $category['Category']['slug'];?>.htm"><h3 class="left-title"><?php echo $category['Category']['name'];?></h3></a>

<?php  		
if($category_id == $category['Category']['id']) {							
if(count($sub_categories2) > 0) {
?>
<ul class="left-list">
<?php							
foreach ($sub_categories2 as $sub_category): 

if(empty($sub_category['Category']['slug'])) {
$sub_category['Category']['slug'] = $sub_category['Category']['id'];
}
?>
<li class="submenu"><a href="<?php echo $sub_category['Category']['slug'];?>.htm" title="<?php echo $sub_category['Category']['name'];?>"><?php echo $sub_category['Category']['name'];?></a></li>
<?php 
endforeach;
?>		
</ul> 
<?php 
}  
}
?>		
</div>  
<?php 
endforeach;
}
?>