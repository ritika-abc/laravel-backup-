<?php
/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

App::uses('AppController', 'Controller');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class PagesController extends AppController {

/**
 * Controller name
 *
 * @var string
 */
  

/**
 * This controller does not use a model
 *
 * @var array
 */
    public $uses = array();

/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
 
  public function index() {
	  
	  $this->layout="default";
	  $this->loadModel('Sitepage');	
   
      $page = $this->Sitepage->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Sitepage.id' => 1
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
    


$this->set(compact('page','meta_title','meta_keyword','meta_desc'));
		
    }
	
	
    
	public function about_us() {
		
		
		$this->loadModel('Sitepage');	
		
		
		 $about_us = $this->Sitepage->find('first', array(
			'recursive' => 0,
			
			'conditions' => array(
			'Sitepage.id' => 2
			),
		));
		 
		 
		 
	if(!empty($about_us['Sitepage']['meta_title'])) {	
		$meta_title   = $about_us['Sitepage']['meta_title'];
	}
	if(!empty($about_us['Sitepage']['meta_keyword'])) {	
		$meta_keyword = $about_us['Sitepage']['meta_keyword'];
	}
	if(!empty($about_us['Sitepage']['meta_desc'])) {	
		$meta_desc   = $about_us['Sitepage']['meta_desc'];
	}
 
 	$this->set(compact('about_us','our_mission','our_vision','meta_title','meta_keyword','meta_desc'));
		
		$this->loadModel('Product');	

	     $products = $this->Product->find('all', [   
			'contain' => [
                'Gallery',    
            ],         
            'conditions' => [
                'Product.active' => 1,
				
            ],
            'order' => [
                'Product.id' => 'ASC'
            ]
			
        ]);
        
		$this->set(compact('products'));
		
		
	}
			
		

     public function sitemap() {

		 $this->loadModel('Product');
		$products=$this->Product->find('all');
		$this->set(compact('products'));
		
		
		$this->loadModel('Sitepage');
		$sitemap = $this->Sitepage->find('first',array(
		'conditions'=>array(
		'Sitepage.id'=>3),)
		);
		if(!empty($sitemap['Sitepage']['meta_title'])) {	
		$meta_title   = $sitemap['Sitepage']['meta_title'];
	}
	if(!empty($sitemap['Sitepage']['meta_keyword'])) {	
		$meta_keyword = $sitemap['Sitepage']['meta_keyword'];
	}
	if(!empty($sitemap['Sitepage']['meta_desc'])) {	
		$meta_desc   = $sitemap['Sitepage']['meta_desc'];
	}
 
 	$this->set(compact('products','meta_title','meta_keyword','meta_desc'));
	
	
	}
	
   
	public function contact() {
		
			$this->loadModel('Sitepage');	
			
			$page = $this->Sitepage->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Sitepage.id' => 3
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
		 
	$this->set(compact('page','meta_title','meta_keyword','meta_desc'));
			 	
	}
	
	public function admin_index() { 
		
		$pages = $this->Page->find('all', array(
			'recursive' => 0,
			'order' => array(				
			),
			'conditions' => array(			
			),
		));		  			 
		$this->set(compact('pages'));		
	}
 	  
	public function admin_view($id = null) {
		if (!$this->Page->exists($id)) {
			throw new NotFoundException('Invalid page');
		}
		$page = $this->Page->find('first', array(			
			'conditions' => array(
				'Page.id' => $id
			)
		));
		$this->set(compact('page'));
	}

////////////////////////////////////////////

	public function admin_add() {		
		
		if ($this->request->is('post')) {
			
			if(empty($this->data['Page']['slug']))
            {
			$this->request->data['Page']['slug'] = $this->generateSlug($this->request->data['Page']['name']);			
			}	
			
			$filename = "";
			
				if(!empty($this->data['Page']['image']['name']))
                    {
						$filename = $this->process_image($this->request->data['Page']['image'], $this->request->data['Page']['slug'],'pages/');
					}
					$this->request->data['Page']['image'] = $filename;

			$this->Page->create();
			if ($this->Page->save($this->request->data)) {
				$this->Session->setFlash('The page has been saved');
				return $this->redirect(array('action' => 'index',$parent_id));
			} else {
				$this->Session->setFlash('The page could not be saved. Please, try again.');
			}
		}
	
	}

////////////////////////////////////////////

	public function admin_edit($id = null) {
		if (!$this->Page->exists($id)) {
			throw new NotFoundException('Invalid page');
		}
		
		$options = array('conditions' => array('Page.' . $this->Page->primaryKey => $id));
		$page_details = $this->Page->find('first', $options);
	
		$filename = $page_details['Page']['image'];
		
		if ($this->request->is('post') || $this->request->is('put')) {
			
			if(empty($this->data['Page']['slug']))
            {
			$this->request->data['Page']['slug'] = $this->generateSlug($this->request->data['Page']['name']);			
			}	
		
			if(!empty($this->data['Page']['image']['name']))
                    {
						$filename = $this->process_image($this->request->data['Page']['image'], $this->request->data['Page']['slug'],'pages/');
					}
					
					$this->request->data['Page']['image'] = $filename;
						
			if ($this->Page->save($this->request->data)) {
				$this->Session->setFlash('The page has been saved');
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash('The page could not be saved. Please, try again.');
			}
		} else {
			$this->request->data = $this->Page->find('first', array('conditions' => array('Page.id' => $id)));
		}

	}

////////////////////////////////////////////


 public function admin_change_page_status()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'categories', 'action'=>'index'));
        }
        
        if(!$this->Page->save(array('id'=>$this->request->data['page_id'], 'active'=>$this->request->data['status'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update status at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Page status updated.'));
        die;
    }
	public function admin_change_page_order()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'categories', 'action'=>'index'));
        }
        
        if(!$this->Page->save(array('id'=>$this->request->data['page_id'], 'page_order'=>$this->request->data['page_order'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update page order at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Page Order updated.'));
        die;
    }
	
	
	public function admin_delete($id = null) {
		$this->Page->id = $id;
		if (!$this->Page->exists()) {
			throw new NotFoundException('Invalid page');
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Page->delete()) {
			$this->Session->setFlash('Page deleted');
			return $this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash('Page was not deleted');
		return $this->redirect(array('action' => 'index'));
	}

}
