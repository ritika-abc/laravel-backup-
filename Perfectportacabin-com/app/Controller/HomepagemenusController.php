<?php
App::uses('AppController', 'Controller');
/**
 * Homepages Controller
 *
 * @property Homepage $Homepage
 * @property PaginatorComponent $Paginator
 */
class HomepagemenusController extends AppController {

/**
 * Components
 *
 * @var array
 */
//	public $components = array('Paginator');

/**
 * admin_index method
 *
 * @return void
 */
 
 	public function admin_index() {
		
     
 
		$homepage_menu = $this->Homepagemenu->find('all');
				//print_r($homepage_menu);
	// exit;
		$this->set(compact('homepage_menu'));
		
		
	}

/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	
		 
	
/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add($id = null) {
  
		if ($this->request->is(array('post', 'put'))) {
			 
				//	print_r($this->request->data);
				//	exit;
					 
					$service_slug = $this->generateSlug($this->request->data['Homepagemenu']['name']);
					 
	
 					  
					 

					
			$this->Homepagemenu->create();
			if ($this->Homepagemenu->save($this->request->data)) {
				$this->Session->setFlash(__('Item has been saved.'));
				return $this->redirect(array('controller' => 'homepagemenus', 'action' => 'index' ));
			} else {
				$this->Session->setFlash(__('The Item could not be saved. Please, try again.'));
			}
		}	
 	
	}

	public function admin_edit($id = null) {
		
				if (!$this->Homepagemenu->exists($id)) {
					throw new NotFoundException(__('Invalid Homepage menu'));
				}
		
		$options = array('conditions' => array('Homepagemenu.' . $this->Homepagemenu->primaryKey => $id));
		$portfolio_details = $this->Homepagemenu->find('first', $options);
	
		
		
			if ($this->request->is(array('post', 'put'))) {



		        	$service_slug = $this->generateSlug($this->request->data['Homepagemenu']['name']);


					if ($this->Homepagemenu->save($this->request->data)) {
					$this->Session->setFlash(__('The Homepage menu has been saved.'));
					return $this->redirect(array('controller' => 'homepagemenus', 'action' => 'index' ));
					}
					else {
					$this->Session->setFlash(__('The Homepage could not be saved. Please, try again.'));
					}
			} else 
			{
			$options = array('conditions' => array('Homepagemenu.' . $this->Homepagemenu->primaryKey => $id));
			$this->request->data = $this->Homepagemenu->find('first', $options);
		    }		
		 	  
		}
public function admin_change_menu_order()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'homepagemenus', 'action'=>'index'));
        }
        
        if(!$this->Homepagemenu->save(array('id'=>$this->request->data['menu_id'], 'menus_order'=>$this->request->data['menus_order'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update Homepage menu order at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Homepage menu Order updated.'));
        die;
    }


public function admin_change_menu_status()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'homepagemenus', 'action'=>'index'));
        }
        
        if(!$this->Homepagemenu->save(array('id'=>$this->request->data['menu_id'], 'active'=>$this->request->data['status'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update status at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Homepage Menu status updated.'));
        die;
    }

	public function admin_delete($id = null) {
		$this->Homepagemenu->id = $id;
		if (!$this->Homepagemenu->exists()) {
			throw new NotFoundException(__('Invalid Homepage'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Homepagemenu->delete()) {
			$this->Session->setFlash(__('The Homepage menu has been deleted.'));
		} else {
			$this->Session->setFlash(__('The Homepage menu could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
