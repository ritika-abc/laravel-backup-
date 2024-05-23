<?php
App::uses('AppController', 'Controller');
/**
 * Locations Controller
 *
 * @property Location $Location
 * @property PaginatorComponent $Paginator
 */
    
   class SitemapsController extends AppController{
 
	var $name = 'Sitemaps';
	var $uses = array('Pages', 'Locations');
	var $helpers = array('Time');
	var $components = array('RequestHandler');
 
	function index (){	
	
	$this->layout = "ajax";
	
	Configure::write('debug', 0);
	  
	$this->loadModel('Location');

	$locations = $this->Location->find('all', array(
			'recursive' => 0,
			'order' => array(
				'Location.location_order' => 'ASC'
			),
			'conditions' => array(
			'Location.active' => 1,
			// 'Location.parent_id' => 0
			),
		));
		
        $this->set(compact('locations')); 
		
		    $this->loadModel('Product');	

	      $products = $this->Product->find('all', [  
		    'contain' => [
				'ChildProduct'
            ],
            'conditions' => [
                'Product.active' => 1,				
            ],
            'order' => [
                'Product.id' => 'ASC'
            ]			
        ]);


 
    $this->set(compact('products'));
	 
	 $this->response->download('sitemap.xml');

		/*
		//prevent xml validation errors caused by sql log
	    Configure::write('debug', 0);
		$this->Pages->recursive=-1;
		$this->Locations->recursive=-1;
		$this->set('pages', $this->Pages->find('all', array( 'conditions' => array('active'=>1), 'fields' => array('modified','id'))));
		$this->set('locations', $this->Locations->find('all', array( 'conditions' => array('active' => 1 ), 'fields' => array('modified','id','name'))));
		*/
	}
}
