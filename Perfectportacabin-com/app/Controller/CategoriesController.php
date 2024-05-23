<?php
App::uses('AppController', 'Controller');
class CategoriesController extends AppController {

////////////////////////////////////////////

	public function index() {
		
	$this->loadModel('Sitepage');	
    $this->loadModel('Product');		
				
  $this->helpers[] = 'Tree';
        $categories = $this->Category->find('all', [
            'recursive' => -1,
            'order' => [
                'Category.lft' => 'ASC'
            ],
            'conditions' => [
            ],
        ]);
       
		 $products = $this->Product->find('all', [
            'recursive' => -1,           
            
            'conditions' => [
                'Product.active' => 1,
			 'Product.category_id' => 2,
            ],
            'order' => [
                'Product.views' => 'ASC'
            ]
        ]);
		
		  
		  $page = $this->Sitepage->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Sitepage.id' => 13
			),
		));
		 
	if(!empty($page['Sitepage']['meta_title'])) {	
		$meta_title   = $page['Sitepage']['meta_title'];
	}
	if(!empty($page['Sitepage']['meta_keyword'])) {	
		$meta_keyword = $page['Sitepage']['meta_keyword'];
	}
	if(!empty($page['Sitepage']['meta_desc'])) {	
		$meta_desc   = $page['Sitepage']['meta_desc'];
	}
 
 
   
		  $product_page = $this->Sitepage->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Sitepage.id' => '13'
			),
		));
		
        
		$this->set(compact('product_page','page','meta_title','meta_keyword','meta_desc','categories'));
		
 
	}
	
   public function get_allchildren($id){
	return $this->Category->children($id, true); // a flat array with
   }
   
   
    public function view() {
		$this->loadModel('Sitepage');	
		$this->loadModel('Product');	
 		
		   $this->helpers[] = 'Tree';
        $categories = $this->Category->find('all', [
            'recursive' => -1,
            'order' => [
                'Category.lft' => 'ASC'
            ],
            'conditions' => [
			
            ],
        ]);
       
	   $products = $this->Product->find('all', [
            'recursive' => -1,           
            
            'conditions' => [
                'Product.active' => 1,
			 'Product.category_id' => 1,
            ],
            'order' => [
                'Product.views' => 'ASC'
            ]
        ]);
		
		
		  
		  $page = $this->Sitepage->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Sitepage.id' => 13
			),
		));
		 
	if(!empty($page['Sitepage']['meta_title'])) {	
		$meta_title   = $page['Sitepage']['meta_title'];
	}
	if(!empty($page['Sitepage']['meta_keyword'])) {	
		$meta_keyword = $page['Sitepage']['meta_keyword'];
	}
	if(!empty($page['Sitepage']['meta_desc'])) {	
		$meta_desc   = $page['Sitepage']['meta_desc'];
	}
 
 
   
		  $product_page = $this->Sitepage->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Sitepage.id' => '13'
			),
		));
		
        
		$this->set(compact('product_page','page','meta_title','meta_keyword','meta_desc','categories','products'));
						
 	}
	
	  

	public function admin_index($parent_id=0) { 
		
		$categories = $this->Category->find('all', array(
			'recursive' => 0,
			'order' => array(
				'Category.lft' => 'ASC'
			),
			'conditions' => array(
			'Category.parent_id' => $parent_id
			),
		));
		
		$options = array('conditions' => array('Category.' . $this->Category->primaryKey => $parent_id));
		$category_details = $this->Category->find('first', $options);
		
 			 
		$this->set(compact('categories','parent_id','category_details'));
		
	}

////////////////////////////////////////////

	public function admin_view($id = null) {
		if (!$this->Category->exists($id)) {
			throw new NotFoundException('Invalid category');
		}
		$category = $this->Category->find('first', array(
			'contain' => array(
				'ParentCategory',
				'ChildCategory',
			),
			'conditions' => array(
				'Category.id' => $id
			)
		));
		$this->set(compact('category'));
	}

////////////////////////////////////////////

	public function admin_add($parent_id=0) {
		
		$this->request->data['Category']['parent_id'] = $parent_id;
		
		if ($this->request->is('post')) {
			
			if(empty($this->data['Category']['slug']))
            {
			$this->request->data['Category']['slug'] = $this->generateSlug($this->request->data['Category']['name']);			
			}	
			
			$filename = "";
			
				if(!empty($this->data['Category']['image']['name']))
                    {
					  $filename = $this->process_image($this->request->data['Category']['image'], 'img-'.$this->request->data['Category']['slug'],'categories/');
					}
					$this->request->data['Category']['image'] = $filename;

			$this->Category->create();
			if ($this->Category->save($this->request->data)) {
				$this->Session->setFlash('The category has been saved');
				return $this->redirect(array('action' => 'index',$parent_id));
			} else {
				$this->Session->setFlash('The category could not be saved. Please, try again.');
			}
		}
	
	
		$parents = $this->Category->generateTreeList(null, null, null, ' -- ');
		$this->set(compact('parents','parent_id'));
	}

////////////////////////////////////////////

	public function admin_edit($id = null) {
		if (!$this->Category->exists($id)) {
			throw new NotFoundException('Invalid category');
		}
		
		$options = array('conditions' => array('Category.' . $this->Category->primaryKey => $id));
		$category_details = $this->Category->find('first', $options);
	
		$filename = $category_details['Category']['image'];
		
		if ($this->request->is('post') || $this->request->is('put')) {
			
			if(empty($this->data['Category']['slug']))
            {
			$this->request->data['Category']['slug'] = $this->generateSlug($this->request->data['Category']['name']);			
			}	
		if(!empty($this->data['Category']['image']['name']))
                    {
					  $filename = $this->process_image($this->request->data['Category']['image'], 'img-'.$this->request->data['Category']['slug'],'categories/');
					}
					$this->request->data['Category']['image'] = $filename;
						
			if ($this->Category->save($this->request->data)) {
				$this->Session->setFlash('The category has been saved');
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash('The category could not be saved. Please, try again.');
			}
		} else {
			$this->request->data = $this->Category->find('first', array('conditions' => array('Category.id' => $id)));
		}

		$parents = $this->Category->generateTreeList(null, null, null, ' -- ');
		$this->set(compact('parents'));
	}

////////////////////////////////////////////


 public function admin_change_category_status()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'categories', 'action'=>'index'));
        }
        
        if(!$this->Category->save(array('id'=>$this->request->data['category_id'], 'active'=>$this->request->data['status'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update status at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Category status updated.'));
        die;
    }
	public function admin_change_category_order()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'categories', 'action'=>'index'));
        }
        
        if(!$this->Category->save(array('id'=>$this->request->data['category_id'], 'category_order'=>$this->request->data['category_order'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update category order at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Category Order updated.'));
        die;
    }
	
	
	public function admin_delete($id = null) {
		$this->Category->id = $id;
		if (!$this->Category->exists()) {
			throw new NotFoundException('Invalid category');
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Category->delete()) {
			$this->Session->setFlash('Category deleted');
			return $this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash('Category was not deleted');
		return $this->redirect(array('action' => 'index'));
	}

////////////////////////////////////////////

}
