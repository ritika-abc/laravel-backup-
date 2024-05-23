<?php
App::uses('AppController', 'Controller');
/**
 * Blogs Controller
 *
 * @property Blog $Blog
 * @property PaginatorComponent $Paginator
 */
class OurclientsController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');
	
	
public function index() {

 
		$ourclients = $this->Ourclient->find('all', array(
		 	'conditions'=>array(
			),
		));
	 $this->loadModel('Sitepage');	
   
      $page = $this->Sitepage->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Sitepage.id' => 11
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
		
$this->set(compact('ourclients','page','meta_title','meta_keyword','meta_desc'));
		
	}
		
	
	public function view($slug=null) {
		
	$blog = $this->Blog->find('first', array(
			'recursive' => 0,
			'order' => array(
				'Blog.blog_order' => 'ASC'
			),
			'conditions' => array(
			'Blog.slug' => $slug
		//	'Blog.active' => 1			
			),
		));
		
        $this->set(compact('blog')); 
	}	
/**
 * admin_index method
 *
 * @return void
 */
 
 	public function admin_index() {

 
		$ourclients = $this->Ourclient->find('all', array(
		 	'recursive' => 0,	
			'order' => array(
				'Ourclient.id' => 'desc'
			),
			'conditions' => array(
			),
		));
				
		$this->set(compact('ourclients'));
	}

/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->Blog->exists($id)) {
			throw new NotFoundException(__('Invalid banner'));
		}
		$options = array('conditions' => array('Blog.' . $this->Blog->primaryKey => $id));
		$this->set('banner', $this->Blog->find('first', $options));
	}

		 
	
/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
  
		if ($this->request->is(array('post', 'put'))) {
			 
				$filename = "";
					 
				$service_slug = $this->generateSlug($this->request->data['Ourclient']['name']);
					 
				$this->request->data['Ourclient']['slug'] = $service_slug;
				
		    if(!empty($this->data['Ourclient']['image']['name'])){
					
					  $filename = $this->process_image($this->request->data['Ourclient']['image'], 'img-'.$service_slug,'ourclients/');
					}
					
						$this->request->data['Ourclient']['image'] = $filename;
 					  
					 

					
			$this->Ourclient->create();
			if ($this->Ourclient->save($this->request->data)) {
				$this->Session->setFlash(__('The Our client has been saved.'));
				return $this->redirect(array('controller' => 'ourclients', 'action' => 'index' ));
			} else {
				$this->Session->setFlash(__('The Our client could not be saved. Please, try again.'));
			}
		}	

	
	}

/**
 * admin_edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if (!$this->Ourclient->exists($id)) {
			throw new NotFoundException(__('Invalid Our client'));
		}
		
		$options = array('conditions' => array('Ourclient.' . $this->Ourclient->primaryKey => $id));
		$banner_details = $this->Ourclient->find('first', $options);
	
		$filename = $banner_details['Ourclient']['image'];
		
		if ($this->request->is(array('post', 'put'))) {
 		
		 

					$service_slug = $this->generateSlug($this->request->data['Ourclient']['name']);
					 
				$this->request->data['Ourclient']['slug'] = $service_slug;
					 
			 
			 if(!empty($this->data['Ourclient']['image']['name']))
                    {
					
					    $filename = $this->process_image($this->request->data['Ourclient']['image'], 'img-'.$service_slug,'ourclients/');  
					}
					
				
			$this->request->data['Ourclient']['image'] = $filename;
 					  
					
	 
						 
			if ($this->Ourclient->save($this->request->data)) {
				$this->Session->setFlash(__('The Our client has been saved.'));
				return $this->redirect(array('controller' => 'ourclients', 'action' => 'index' ));
			} else {
				$this->Session->setFlash(__('The Our client could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Ourclient.' . $this->Ourclient->primaryKey => $id));
			$this->request->data = $this->Ourclient->find('first', $options);
		}		
	
		}
		
			public function admin_change_ourclient_status()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'ourclients', 'action'=>'index'));
        }
        
        if(!$this->Ourclient->save(array('id'=>$this->request->data['client_id'], 'active'=>$this->request->data['status'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to set status at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Our client status updated.'));
        die;
    }

   public function admin_change_ourclient_order()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'ourclients', 'action'=>'index'));
        }
        
        if(!$this->Ourclient->save(array('id'=>$this->request->data['client_id'], 'client_order'=>$this->request->data['client_order'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update Client order at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Client Order updated.'));
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
		$this->Ourclient->id = $id;
		if (!$this->Ourclient->exists()) {
			throw new NotFoundException(__('Invalid Our client'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Ourclient->delete()) {
			$this->Session->setFlash(__('The Our client has been deleted.'));
		} else {
			$this->Session->setFlash(__('The Our client could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
