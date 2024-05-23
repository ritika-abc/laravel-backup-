<?php
App::uses('AppController', 'Controller');
/**
 * events Controller
 *
 * @property Event $Event
 * @property PaginatorComponent $Paginator
 */
class EventsController extends AppController {

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
 
 	public function admin_index() {

 
		$events = $this->Event->find('all', array(
		 	'recursive' => 0,	
			'order' => array(
				'Event.id' => 'desc'
			),
			'conditions' => array(
			),
		));
				
		$this->set(compact('events'));
	}
	public function index() {

 
		$events = $this->Event->find('all', array(
		 	'recursive' => 0,	
			'order' => array(
				'Event.id' => 'desc'
			),
			'conditions' => array(
			),
		));
				
		$this->set(compact('events'));
	}


/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->Event->exists($id)) {
			throw new NotFoundException(__('Invalid Event'));
		}
		$options = array('conditions' => array('Event.' . $this->Event->primaryKey => $id));
		$this->set('Event', $this->Event->find('first', $options));
	}

		 
	
/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add($company_id = null) {
  
		if ($this->request->is(array('post', 'put'))) {
			 
					 $filename = "";
					 
					$service_slug = $this->generateSlug($this->request->data['Event']['name']);
					 
									
		if(!empty($this->data['Event']['image']['name']))
                    {
					
					  $filename = $this->process_image($this->request->data['Event']['image'], 'img-'.$service_slug,'events/');
					}
					
						$this->request->data['Event']['image'] = $filename;
 					  
					
			$this->Event->create();
			if ($this->Event->save($this->request->data)) {
				$this->Session->setFlash(__('The Event has been saved.'));
				return $this->redirect(array('controller' => 'events', 'action' => 'index' ));
			} else {
				$this->Session->setFlash(__('The Event could not be saved. Please, try again.'));
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
		if (!$this->Event->exists($id)) {
			throw new NotFoundException(__('Invalid Event'));
		}
		
		$options = array('conditions' => array('Event.' . $this->Event->primaryKey => $id));
		$socialicon_details = $this->Event->find('first', $options);
	
		$filename = $socialicon_details['Event']['image'];
		
		if ($this->request->is(array('post', 'put'))) {
 		
		 

					$service_slug = $this->generateSlug($this->request->data['Event']['name']);
					 
			 
			 if(!empty($this->data['Event']['image']['name']))
                    {
					
					    $filename = $this->process_image($this->request->data['Event']['image'], 'img-'.$service_slug,'events/');  
					}
					
				
			$this->request->data['Event']['image'] = $filename;
 					  
					
	 
						 
			if ($this->Event->save($this->request->data)) {
				$this->Session->setFlash(__('The Event has been saved.'));
				return $this->redirect(array('controller' => 'events', 'action' => 'index' ));
			} else {
				$this->Session->setFlash(__('The Event could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Event.' . $this->Event->primaryKey => $id));
			$this->request->data = $this->Event->find('first', $options);
		}		
		 
		}

		
		
 public function admin_change_socialicon_status()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'events', 'action'=>'index'));
        }
        
        if(!$this->Event->save(array('id'=>$this->request->data['events_id'], 'active'=>$this->request->data['status'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update status at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'status updated.'));
        die;
    }
	public function admin_change_events_order()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'events', 'action'=>'index'));
        }
        
        if(!$this->Event->save(array('id'=>$this->request->data['socialicon_id'], 'events_order'=>$this->request->data['events_order'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update order at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Order updated.'));
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
		$this->Event->id = $id;
		if (!$this->Event->exists()) {
			throw new NotFoundException(__('Invalid Event'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Event->delete()) {
			$this->Session->setFlash(__('The Event has been deleted.'));
		} else {
			$this->Session->setFlash(__('The Event could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
