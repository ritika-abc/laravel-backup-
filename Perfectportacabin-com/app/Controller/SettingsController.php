<?php
App::uses('AppController', 'Controller');
/**
 * Settings Controller
 *
 * @property Setting $Setting
 * @property PaginatorComponent $Paginator
 */
class SettingsController extends AppController {

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
		 
		$id=1;
		if (!$this->Setting->exists($id)) {
			throw new NotFoundException(__('Invalid setting'));
		}
		
			$options = array('conditions' => array('Setting.' . $this->Setting->primaryKey => $id));
		$company_details = $this->Setting->find('first', $options);
	
		$filename = $company_details['Setting']['sitelogo'];
		
		
		if ($this->request->is(array('post', 'put'))) {
	 
					  $service_slug = $this->generateSlug($this->request->data['Setting']['name']);	 
					
					if(!empty($this->data['Setting']['sitelogo']['name']))
                    {
					
					  $filename = $this->process_image($this->request->data['Setting']['sitelogo'], $service_slug.'-logo','');
					}
					
					
						$this->request->data['Setting']['sitelogo'] = $filename;
						
			if ($this->Setting->save($this->request->data)) {
				$this->Session->setFlash(__('The setting has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The setting could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Setting.' . $this->Setting->primaryKey => $id));
			$this->request->data = $this->Setting->find('first', $options);
		}
		//$this->Setting->recursive = 0;
		//$this->set('settings', $this->Paginator->paginate());
	}

	
	
	public function admin_homepage() {
		 
		$id=1;
		if (!$this->Setting->exists($id)) {
			throw new NotFoundException(__('Invalid setting'));
		}
		
			$options = array('conditions' => array('Setting.' . $this->Setting->primaryKey => $id));
		$company_details = $this->Setting->find('first', $options);
	
		$custom1 = $company_details['Setting']['custom1'];
		$custom2 = $company_details['Setting']['custom2'];
		$custom3 = $company_details['Setting']['custom3'];

		
		if ($this->request->is(array('post', 'put'))) {

		if(!empty($this->data['Setting']['custom1']['name']))
		{

		$custom1 = $this->process_image($this->request->data['Setting']['custom1'], 'img1-'.time());
		}

		$this->request->data['Setting']['custom1'] = $custom1;


 
		if(!empty($this->data['Setting']['custom2']['name']))
		{

		$custom2 = $this->process_image($this->request->data['Setting']['custom2'], 'img2-'.time());
		}

		$this->request->data['Setting']['custom2'] = $custom2;

		if(!empty($this->data['Setting']['custom3']['name']))
		{

		$custom3 = $this->process_image($this->request->data['Setting']['custom3'], 'img3-'.time());
		}

		$this->request->data['Setting']['custom3'] = $custom3;

						
						
			if ($this->Setting->save($this->request->data)) {
				$this->Session->setFlash(__('The setting has been saved.'));
				return $this->redirect(array('action' => 'homepage'));
			} else {
				$this->Session->setFlash(__('The setting could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Setting.' . $this->Setting->primaryKey => $id));
			$this->request->data = $this->Setting->find('first', $options);
		}
		//$this->Setting->recursive = 0;
		//$this->set('settings', $this->Paginator->paginate());
	}

	
/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->Setting->exists($id)) {
			throw new NotFoundException(__('Invalid setting'));
		}
		$options = array('conditions' => array('Setting.' . $this->Setting->primaryKey => $id));
		$this->set('setting', $this->Setting->find('first', $options));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Setting->create();
			if ($this->Setting->save($this->request->data)) {
				$this->Session->setFlash(__('The setting has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The setting could not be saved. Please, try again.'));
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
		if (!$this->Setting->exists($id)) {
			throw new NotFoundException(__('Invalid setting'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Setting->save($this->request->data)) {
				$this->Session->setFlash(__('The setting has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The setting could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Setting.' . $this->Setting->primaryKey => $id));
			$this->request->data = $this->Setting->find('first', $options);
		}
	}

/**
 * admin_delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->Setting->id = $id;
		if (!$this->Setting->exists()) {
			throw new NotFoundException(__('Invalid setting'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Setting->delete()) {
			$this->Session->setFlash(__('The setting has been deleted.'));
		} else {
			$this->Session->setFlash(__('The setting could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
