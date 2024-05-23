<?php
App::uses('AppController', 'Controller');
class WebclickController extends AppController {

////////////////////////////////////////////////////////////

    public $components = [
        'RequestHandler',
    ];

////////////////////////////////////////////////////////////

    public function beforeFilter() {
        parent::beforeFilter();
    }

	public function containsWord($str, $word)
	{
		return !!preg_match('#\\b' . preg_quote($word, '#') . '\\b#i', $str);
	}

	
	public function index($id = null) {
	 
	$slug = $this->request->url;
	$slug = str_replace('.html','',$slug);

	$this->loadModel('Location');	 

	$locations_list = $this->Location->find('list', array(
	 
	'fields' => array(
		'slug','slug'
	),
	 
	));		


	$this->loadModel('Product');	 

	$products_list = $this->Product->find('list', array(
	 
	'fields' => array(
		'slug','slug'
	),
	 
	));		
	
	$product_slug_item = '';

	foreach($products_list as $product_item) {	
	 
		 $pos = stripos($slug, $product_item);	 
		 
		 $pos = $this->containsWord($slug, $product_item);
		 
		 	$m_array =  preg_grep('/^'.$product_item.'.*/', array( '0'=> $slug)); 
				 
			if(!empty($m_array)) {
			
			$product_slug_item = $product_item;
			 			
			}	
			
		/* if ( $pos !== false ) { 	 
			$product_slug_item = $product_item;	 
		 }	 */
	 }
	
	
	$location_slug_item = '';

	foreach($locations_list as $location_item) {	
	 
		 $pos = stripos($slug, $location_item);	 
		 
		 $pos = $this->containsWord($slug, $location_item);
		 
		 if ( $pos !== false ) { 	 
			$location_slug_item = $location_item;	 
		 }	 
	 }
	 
     
	     $location_slug_item  = str_replace($product_slug_item.'-in-','',$slug);
 		 $location_slug_item  = str_replace('-traders','',$location_slug_item);
 		 $location_slug_item  = str_replace('-exporters','',$location_slug_item);
 		 $location_slug_item  = str_replace('-suppliers','',$location_slug_item);
		 
		 
	     $product_slug  = str_replace('-in-'.$location_slug_item,'',$slug);
 		 $product_slug  = str_replace('-traders','',$product_slug);
 		 $product_slug  = str_replace('-exporters','',$product_slug);
 		 $product_slug  = str_replace('-suppliers','',$product_slug);
		
	  
	  /*
	    echo "<pre>";
		print_r($locations_list);
		echo "slug : ".$slug;
		echo "<hr>";
		echo "product_slug_item : ".$product_slug_item;
		
		echo "<hr>";
		echo "location_slug_item : ".$location_slug_item;
		echo "<hr>";
		echo "product_slug : ".$product_slug;
		exit;
		*/
	 
	
	$this->loadModel('Product');	 
 
	$product = $this->Product->find('first', [
            'recursive' => -1,
            'contain' => [
                'Gallery',    
            ],
            'conditions' => [              
                'Product.active' => 1,  
 				
			//  " '$slug' LIKE concat('',Product.slug,'%')",  
				'Product.slug' => $product_slug 

            ]
        ]);
		if(!empty($product['Product']['meta_title'])) {	
		$meta_title   = $product['Product']['meta_title'];
		}
		if(!empty($product['Product']['meta_keyword'])) {	
		$meta_keyword = $product['Product']['meta_keyword'];
		}
		if(!empty($product['Product']['meta_desc'])) {	
		$meta_desc   = $product['Product']['meta_desc'];
		}
		$this->set(compact('meta_title','meta_keyword','meta_desc'));
		if(empty($product)) {
		throw new NotFoundException('Could not find this Page.');		
		exit;
		}	
		
		$this->set(compact('product'));	  
			
	$product_slug = @$product['Product']['slug'];

	$catalogslug  = str_replace($product_slug.'-','',$slug);
	$locationslug = str_replace($product_slug.'-in-','',$slug);
	
	$this->loadModel('Location');	 

	$location = $this->Location->find('first', [
            'recursive' => 0,			
            'conditions' => [     
			
			'Location.slug' => $location_slug_item 

			
			//'Location.slug LIKE' => '%' . $locationslug . '%'			
		//	 " '$slug' LIKE concat('%', Location.slug,'%')",  
            ]
        ]);
			
 
	$pos2 = stripos($slug, '-exporters');
	 
	if ( $pos2 !== false ) {  
	$catalog_id  = '2';
	$catalogslug = 'exporters';
	}

	$pos3 = stripos($slug, '-traders');
	 
	if ( $pos3 !== false ) {  
	$catalog_id  = '3';
	$catalogslug = 'traders';
	}	

	$pos4 = stripos($slug, '-suppliers');
	 
	if ( $pos4 !== false ) {  
	$catalog_id  = '4';
	$catalogslug = 'suppliers';
	}		
 
	
    $this->loadModel('Catalog');	 
	
	$catalog = $this->Catalog->find('first', [
            'recursive' => -1,
            'contain' => [
                'Category',

            ],
            'conditions' => [
              
            'Catalog.slug LIKE' => '%' . $catalogslug . '%'
			// '$slug' LIKE concat('%', Catalog.slug,'%')",  
            ]
        ]);	
 
  
  // 
	
		if(!empty($catalog)) {
			
        
		$this->loadModel('Product');
 				
		$product = $this->Product->find('first', [
		'contain' => 'Gallery',
            'recursive' => 0,				 		
            'conditions' =>  array(
			//'Product.slug' => $slug
			" '$slug' LIKE concat(Product.slug,'%')",  
			)
        ]);
		
		$catalog_id   = $catalog['Catalog']['id']; 
		
		$product_slug = $product['Product']['slug']; 
		
		if($catalog_id == '4') {

		$directory_name = '-suppliers';
		}

		if($catalog_id == '3') {

		$directory_name = '-traders';
		}

		if($catalog_id == '2') {

		$directory_name = '-exporters';
		}
		 		 
		$this->set(compact('directory_name'));	  
		
        $this->set(compact('country','product_page','product','catalog'));
		
     $product_name = $product['Product']['name']; 
		
		
	if(!empty($catalog['Catalog']['meta_title'])) {	
		$meta_title   = $catalog['Catalog']['meta_title'];
		
		$meta_title = str_replace('catname', $product_name, $meta_title );
	}
	if(!empty($catalog['Catalog']['meta_keyword'])) {	
		$meta_keyword = $catalog['Catalog']['meta_keyword'];
		
		$meta_keyword = str_replace('catname', $product_name, $meta_keyword );
	}
	if(!empty($catalog['Catalog']['meta_desc'])) {	
		$meta_desc   = $catalog['Catalog']['meta_desc'];
		
		$meta_desc = str_replace('catname', $product_name, $meta_desc );
	}
			
	$this->set(compact('meta_title','meta_keyword','meta_desc'));	
 $this->set(compact('products'));
		
		
				
	
				 $this->render('catalog');
			}
			 
			else if(!empty($location)) {
										 		 
	$location_name = ucwords(strtolower($location['Location']['name']));
	
	
	$presence_name = $location['Location']['slug'].'/';
	
	$directory_name = '-in-'.$location['Location']['slug'];
	$this->set(compact('directory_name')); 
		
    $this->set(compact('location_name','presence_name')); 	

		$product_slug = str_replace($directory_name,'',$slug);

	
		$this->loadModel('Product');
 				
		$product = $this->Product->find('first', [
		'contain' => 'Gallery',
            'recursive' => 0,				 		
            'conditions' =>  array(
			 'Product.slug' => $product_slug,
			)
        ]);
		
	$product_name  = $product['Product']['name'];
	
	$country = $location['Location']['slug'];	 	
  	
    $this->set(compact('product','location','country'));
 
	$this->loadModel('Catalog');
	 
		 $catalog = $this->Catalog->find('first', [
            'recursive' => 0,				 		
            'conditions' =>  array(
			'Catalog.id' => 1
			)
        ]);
		
 	
	if(!empty($catalog['Catalog']['meta_title'])) {	
		$meta_title   = $catalog['Catalog']['meta_title'];
		
 		$meta_title = str_replace('countryname', $location_name, $meta_title );
		$meta_title = str_replace('catname', $product_name, $meta_title );
	}
	if(!empty($catalog['Catalog']['meta_keyword'])) {	
		$meta_keyword = $catalog['Catalog']['meta_keyword'];
		
 		$meta_keyword = str_replace('countryname', $location_name, $meta_keyword );
		$meta_keyword = str_replace('catname', $product_name, $meta_keyword );
	}
	if(!empty($catalog['Catalog']['meta_desc'])) {	
		$meta_desc   = $catalog['Catalog']['meta_desc'];
		
 		$meta_desc = str_replace('countryname', $location_name, $meta_desc );
		$meta_desc = str_replace('catname', $product_name, $meta_desc );
	}
			
		$this->set(compact('meta_title','meta_keyword','meta_desc'));			
					
		$this->set(compact('country','location','product','products','catalog'));
		$this->set(compact('products'));
		
		$productbred = $this->Product->find('first', [ 
		'recursive' => -1,        
		'conditions' => [     
		'Product.active' => 1,	
		'Product.id' => $product['Product']['parent_id'],   
		],       
		'order' => [  
		'Product.id' => 'ASC' 
		]     

		]);
       
	    $this->set(compact('productbred'));
				
	 
				 $this->render('location');
			}
			else {
				
				$this->loadModel('Product');	 

				$product = $this->Product->find('first', [
				'recursive' => -1,
				'contain' => [
				'Gallery',    
				],
				'conditions' => [              
				//'Product.active' => 1,              
				  'Product.slug' => $slug
				]
				]);
 
				
				if(!empty($product['Product']['meta_title'])) {	
				$meta_title   = $product['Product']['meta_title'];
				}
				if(!empty($product['Product']['meta_keyword'])) {	
				$meta_keyword = $product['Product']['meta_keyword'];
				}
				if(!empty($product['Product']['meta_desc'])) {	
				$meta_desc   = $product['Product']['meta_desc'];
				}
				$this->set(compact('meta_title','meta_keyword','meta_desc'));
				if(empty($product)) {
							throw new NotFoundException(__('Page Not Found.'));

				//	return $this->redirect('/');
				}	

				$this->set(compact('product'));	 
				
				$this->loadModel('Product');	 

				$relproducts = $this->Product->find('all', [
				'recursive' => -1,
				'contain' => [
				'Gallery',    
				],
				'conditions' => [              
				//'Product.active' => 1,              
				  'Product.parent_id' => $product['Product']['id'],
				]
				]);

				$this->set(compact('relproducts'));	
				
						$this->set(compact('products'));
		
		$productbred = $this->Product->find('first', [ 
		'recursive' => -1,        
		'conditions' => [     
		'Product.active' => 1,	
		'Product.id' => $product['Product']['parent_id'],   
		],       
		'order' => [  
		'Product.id' => 'ASC' 
		]     

		]);
       
	    $this->set(compact('productbred'));
				
				$this->render('index');
			}			 
	}
}
