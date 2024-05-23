<?php
App::uses('AppController', 'Controller');
/**
 * Galleries Controller
 *
 * @property Gallery $Gallery
 * @property PaginatorComponent $Paginator
 */
class VideosController extends AppController {

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
		$videos = $this->Video->find('all');
		
		
		$this->set(compact('videos'));
	}


public function index() {
		$videos = $this->Video->find('all');
		
		
		$this->set(compact('videos'));
	}
/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->Gallery->exists($id)) {
			throw new NotFoundException(__('Invalid gallery'));
		}
		$options = array('conditions' => array('Gallery.' . $this->Gallery->primaryKey => $id));
		$this->set('gallery', $this->Gallery->find('first', $options));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			
			
		

			$service_slug = $this->generateSlug($this->request->data['Video']['name']);
			
			$this->Video->create();
			if ($this->Video->save($this->request->data)) {
				$this->Session->setFlash(__('The Video has been saved.'));
				return $this->redirect(array('controller' => 'videos', 'action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Video could not be saved. Please, try again.'));
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
		if (!$this->Video->exists($id)) {
			throw new NotFoundException(__('Invalid gallery'));
		}
		
		$options = array('conditions' => array('Video.' . $this->Video->primaryKey => $id));
		$banner_details = $this->Video->find('first', $options);
	
		
		if ($this->request->is(array('post', 'put'))) {
			
			
			$service_slug = $this->generateSlug($this->request->data['Video']['name']);
					
						
			if ($this->Video->save($this->request->data)) {
				$this->Session->setFlash(__('The Video has been saved.'));
				return $this->redirect(array('controller' => 'videos', 'action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Video could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Video.' . $this->Video->primaryKey => $id));
			$this->request->data = $this->Video->find('first', $options);
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
		$this->Video->id = $id;
		if (!$this->Video->exists()) {
			throw new NotFoundException(__('Invalid Video'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Gallery->delete()) {
			$this->Session->setFlash(__('The Video has been deleted.'));
		} else {
			$this->Session->setFlash(__('The Video could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
