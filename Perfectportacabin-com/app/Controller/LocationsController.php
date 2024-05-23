<?php
App::uses('AppController', 'Controller');
/**
 * Locations Controller
 *
 * @property Location $Location
 * @property PaginatorComponent $Paginator
 */
class LocationsController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * admin_index method
 *
 * @return void
 */ 
  
	public function index() {
 			 
		 	
 

		$locations = $this->Location->find('all', array(
			'recursive' => -1,						
			'contain' => array(
				'ChildLocation',
			),	
			'order' => array(
				//'Location.location_order' => 'ASC'
			),
			'conditions' => array(
			'Location.active' => 1,
			 'Location.parent_id' => 0
			),
		));

		$ourpresence = $this->Sitepage->find('first', array(
			'conditions'=>array(
			'Sitepage.id'=>5
			),	
			
		));
		
		if(!empty($ourpresence['Sitepage']['meta_title'])) {	
		$meta_title   = $ourpresence['Sitepage']['meta_title'];
		
 		
	}
	if(!empty($ourpresence['Sitepage']['meta_keyword'])) {	
		$meta_keyword = $ourpresence['Sitepage']['meta_keyword'];
		
 		
	}
	if(!empty($ourpresence['Sitepage']['meta_desc'])) {	
		$meta_desc   = $ourpresence['Sitepage']['meta_desc'];
		
	}
			
	$this->set(compact('meta_title','meta_keyword','meta_desc','locations'));	
	
		
        
	}	
	
	
	
    public function view($slug = null) {
 		
	$directory_name = '-in-'.$slug;
	$this->set(compact('directory_name')); 
		 	
	$presence_name = $slug.'/';	
    $this->set(compact('presence_name')); 
	
	$this->loadModel('Sitepage');	
   		 
    $page = $this->Sitepage->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Sitepage.id' => 6
			),
		));
	 $this->set(compact('page')); 	 
 		
		  $location = $this->Location->find('first', [
            'recursive' => 0,			
            'conditions' => [
                'Location.slug' => $slug
            ]
        ]);
			 
        if(empty($location)) {
			
			throw new NotFoundException('Could not find this Page.');		
			exit;
        }		
  
		$country = $slug;
		
        $this->set(compact('country','location','slug'));
		
	$location_name = $location['Location']['name'];  
	
  	if(!empty($page['Sitepage']['meta_title'])) {	
		$meta_title   = $page['Sitepage']['meta_title'];
		
 		$meta_title = str_replace('City', $location_name, $meta_title );
	}
	if(!empty($page['Sitepage']['meta_keyword'])) {	
		$meta_keyword = $page['Sitepage']['meta_keyword'];
		
 		$meta_keyword = str_replace('City', $location_name, $meta_keyword );
	}
	if(!empty($page['Sitepage']['meta_desc'])) {	
		$meta_desc   = $page['Sitepage']['meta_desc'];
		
 		$meta_desc = str_replace('City', $location_name, $meta_desc );
	}
			
	$this->set(compact('meta_title','meta_keyword','meta_desc'));	
	
		   			
		
	
	}
	
	
 
		
	public function admin_index($parent_id = 0) { 
	
 	
	if($parent_id > 0) {
		$locations = $this->Location->find('all', array(
			'recursive' => 0,
			'order' => array(
				//'Location.id' => 'ASC'
			),
			'conditions' => array(
			'Location.parent_id' => $parent_id
			),
		));
	}
else {
$locations = $this->Location->find('all', array(
			'recursive' => 0,
			'order' => array(
				//'Location.id' => 'ASC'
			),
			'conditions' => array(
			'Location.parent_id' => 0
			),
		));
}		
		//$options = array('conditions' => array('Location.' . $this->Location->primaryKey => $parent_id));
		$location_details = ''; //$this->Location->find('first', $options);
		 			 
		$this->set(compact('locations','parent_id','location_details'));
		
	}
		 
/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->Location->exists($id)) {
			throw new NotFoundException(__('Invalid location'));
		}
		$options = array('conditions' => array('Location.' . $this->Location->primaryKey => $id));
		$this->set('location', $this->Location->find('first', $options));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add($parent_id=0) {
		if ($this->request->is('post')) {
			$this->Location->create();
			
			
			if(empty($this->data['Location']['slug']))
            {
			$this->request->data['Location']['slug'] = $this->generateSlug($this->request->data['Location']['name']);			
			}	
			
			 $filename = "";
				if(!empty($this->data['Location']['image']['name']))
                {
					  $filename = $this->process_image($this->request->data['Location']['image'], 'img-'.$this->request->data['Location']['slug'],'locations/');
				}
				
		 
					$this->request->data['Location']['image'] = $filename;
					
			if ($this->Location->save($this->request->data)) {
				$this->Session->setFlash(__('The location has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The location could not be saved. Please, try again.'));
			}
		}
		
								$this->set(compact('parent_id'));

		$this->loadModel('locations');		
			$parents = $this->Location->find('list', array(			 
			'conditions' => array(
			'Location.parent_id' => '0'
			),
		));
  
 
				$this->set(compact('parents'));

	}

/**
 * admin_edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if (!$this->Location->exists($id)) {
			throw new NotFoundException(__('Invalid location'));
		}
		
		$options = array('conditions' => array('Location.' . $this->Location->primaryKey => $id));
		$category_details = $this->Location->find('first', $options);
	
		$filename = $category_details['Location']['image'];
		
		if ($this->request->is(array('post', 'put'))) {
			
			if(empty($this->data['Location']['slug']))
            {
			$this->request->data['Location']['slug'] = $this->generateSlug($this->request->data['Location']['name']);			
			}	
		if(!empty($this->data['Location']['image']['name']))
                {
					  $filename = $this->process_image($this->request->data['Location']['image'], 'img-'.$this->request->data['Location']['slug'],'locations/');
				}
				
					$this->request->data['Location']['image'] = $filename;
						
						
			if ($this->Location->save($this->request->data)) {
				$this->Session->setFlash(__('The location has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The location could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Location.' . $this->Location->primaryKey => $id));
			$this->request->data = $this->Location->find('first', $options);
		}
		
			$this->loadModel('locations');		
			$parents = $this->Location->find('list', array(			 
			'conditions' => array(
			'Location.parent_id' => '0'
			),
		));
  
			$this->set(compact('parents'));
	}	

 public function admin_change_location_status()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'locations', 'action'=>'index'));
        }
        
        if(!$this->Location->save(array('id'=>$this->request->data['location_id'], 'active'=>$this->request->data['status'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update status at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Location status updated.'));
        die;
    }
	public function admin_change_location_order()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'locations', 'action'=>'index'));
        }
        
        if(!$this->Location->save(array('id'=>$this->request->data['location_id'], 'location_order'=>$this->request->data['location_order'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update Location order at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Location Order updated.'));
        die;
    }
	

/**
 * admin_delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->Location->id = $id;
		if (!$this->Location->exists()) {
			throw new NotFoundException(__('Invalid location'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Location->delete()) {
			$this->Session->setFlash(__('The location has been deleted.'));
		} else {
			$this->Session->setFlash(__('The location could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
