<?php
/**
* Application level Controller
*
* This file is application-wide controller file. You can put all
* application-wide controller-related methods here.
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

App::uses('Controller', 'Controller');

/**
* Application Controller
*
* Add your application-wide methods in the class below, your controllers
* will inherit them.
*
* @package       app.Controller
* @link http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
*/
class AppController extends Controller {

function _setErrorLayout() {  
   	if ($this->name == 'CakeError') {
			$meta_title = "404 Page not Found";
			$meta_keyword = "";
			$meta_desc= "";

			$this->set(compact('meta_title','meta_keyword','meta_desc'));			
		}    
}              

function beforeRender () {  

      $this->_setErrorLayout();
    
}

    public $components = [
        'Session',
        'Auth',
        'Flash',
       // 'DebugKit.Toolbar',
        // 'Security',
    ];


	public function generateSlug($title){
		$pattern="[?()\/&#\,\;\.$+%]";
		$title = trim($title);
		//$slug_name=ereg_replace($pattern,"-",$title);
		$slug_name=strtolower($slug_name);
		$slug_name=str_replace("  ","-",$slug_name);
		$slug_name=str_replace(" ","-",$slug_name);
		$slug_name=str_replace("_","-",$slug_name);
		$slug_name=str_replace("%","",$slug_name);
		$slug_name=str_replace("__","-",$slug_name);
		$slug_name=str_replace("--","-",$slug_name);
		$slug_name=strtolower($slug_name);
		return $this->slugit($title);
		
	}
 
	public function slugit($str, $replace=array(), $delimiter='-') { 
		if ( !empty($replace) ) {   
			$str = str_replace((array)$replace, ' ', $str);	
		}
			$clean = $str; // iconv('UTF-8', 'ASCII//TRANSLIT', $str);	
			$clean = preg_replace("/[^a-zA-Z0-9\/_|+ -]/", '', $clean);	
			$clean = strtolower(trim($clean, '-'));
			$clean = preg_replace("/[\/_|+ -]+/", $delimiter, $clean);	
			return $clean;	
	}


	

	public function process_image($image_file = null,$service_slug = null,$folderpath = '') {
		
		$final_image = "";
		
		if($service_slug == null) {
			
			$service_slug = time();
		}
		
		
		 $ext = substr(strtolower(strrchr($image_file['name'], '.')), 1); //get the extension
                        $arr_ext = array('jpg', 'jpeg', 'gif','png'); //set allowed extensions

                        //only process if the extension is valid
                        if(in_array($ext, $arr_ext))
                        {
						
							$newName = $service_slug.".".$ext;
							  
							move_uploaded_file($image_file['tmp_name'], WWW_ROOT . 'images/'.$folderpath . $newName);	
							  
                            $final_image = $newName;  
                        }
						return $final_image;
	}
	
    public function beforeFilter() {
		
		
		
		$this->loadModel('Banner');	
		$this->loadModel('Socialicon');
		$this->loadModel('Testimonial');
		$this->loadModel('Gallery');
        $this->loadModel('Blog');
		$this->loadModel('Catalog');
        $this->loadModel('Category');
        $this->loadModel('Homepage');			
		$this->loadModel('Sitepage');
		$this->loadModel('Product');		
	    $this->loadModel('Setting');
		
		
		
		  $banners = $this->Banner->find('all', array(
				'recursive' => 0,
			//	'limit' => 50, 
				'order' => array(
					'Banner.id' => 'asc'
				),
				'conditions' => array(
				),
			));
		 $socialicons = $this->Socialicon->find('all', array(
		 	'recursive' => 0,
		//	'limit' => 50, 
			'order' => array(
				'Socialicon.id' => 'asc'
			),
			'conditions' => array(
			'Socialicon.active'=>'1'
			),
		));
		
	     
	    $blogs = $this->Blog->find('all', array(
				'recursive' => 0,
				
				'order' => array(
					'Blog.id' => 'asc'
				),
				'conditions' => array(
					'Blog.active'=>'1'
				),
			));
			
		 $galleries = $this->Gallery->find('all', array(
			
				'order' => array(
					'Gallery.id' => 'asc'
				),
				'conditions' => array(
				),
			));
		
	    $this->set(compact('blogs','socialicons','galleries'));	
	
		$testimonials = $this->Testimonial->find('all', [ 
						'conditions' => [
						'Testimonial.active' => 1,
						],
						]);	
						
		 
	
	   $catalogs = $this->Sitepage->find('first', [   
					'conditions' => [
					'Sitepage.id' => 6,
					],
					'order' => [
					'Sitepage.id' => 'ASC'
					],					
					]);
					
      $mission = $this->Homepage->find('first', [   
						'conditions' => [
						'Homepage.id' => 1,
						],										
						]);
										
      $vision = $this->Homepage->find('first', [   
						'conditions' => [
						'Homepage.id' => 2,
						],										
						]);

       $quality = $this->Homepage->find('first', [   
					'conditions' => [
					'Homepage.id' => 3,
					],										
					]);
					
		 $home_enquiry = $this->Homepage->find('first', [   
						'conditions' => [
						'Homepage.id' => 4,
						],										
						]);
		
		
		$this->set(compact('catalogs','banners','galleries','page','mission','vision','quality','home_enquiry'));
	 
	 
		$directory_name = "";
		$this->set(compact('directory_name'));

		$presence_name = "";
		$this->set(compact('presence_name'));
		
		
			$products = $this->Product->find('all', [   
						'contain' => ['ChildProduct'],         
						'conditions' => [	
						'Product.active' => 1,],
						'order' => ['Product.id' => 'ASC'],
						]);
						
			$params = array(
			'recursive' => -1,
			//'fields' => 'Category.id, Category.name, Category.parent_id',
			'contain' => [
			'ChildProduct',	
					  ], 
					   'conditions' => [
			//'Product.hot_product' => 1,
						   'Product.active' => 1,
					   ],
			   'order' => [
						   'Product.product_order' => 'asc'
					   ],
			);



			$categoriesmenu = $this->Product->find('threaded',$params);

			$categories_list = $categoriesmenu;
		
		    $this->set(compact('products','categoriesmenu','categories_list'));			
 	
			$featured_products = $this->Product->find('all', [   
				
					'conditions' => [
						'Product.active' => 1,
						'Product.hot_product' => 1,
					],
					'order' => [
						'Product.id' => 'ASC'
					],
				 ]);
			$this->set(compact('featured_products'));
			 
			
			
			$this->set(compact('testimonials'));
			
	
	   $homebanners = $this->Banner->find('all', array(
		'order' => array(
					'Banner.id' => 'DESC'
				),
		'conditions' => array( 	
		)		
		));		
		$this->set('homebanners', $homebanners);
			
		
		//	$categories_list = $categories;
			
		//$this->set(compact('categories','home_categories'));
	

		$setting = $this->Setting->find('first', array(
 			'conditions' => array(
				'Setting.id' => '1'
			)
		));
		$this->set(compact('setting'));
	 
		$company_address = array(
						$setting['Setting']['address1'],
						$setting['Setting']['address2'],
						$setting['Setting']['address3']
						);
		@$company_address1 = array(
						$setting['Setting']['new_address2'],
						$setting['Setting']['new_address3'],
						$setting['Setting']['new_address4']
						);								
		$company_address = implode('<br>',array_filter($company_address));
		$company_address1 = implode('<br>',array_filter($company_address1));

		$company_email   = $setting['Setting']['email'];
		$company_email1   = @$setting['Setting']['email_contact'];
		$company_newnumber   = @$setting['Setting']['company_number1'];
		$company_phone   = $setting['Setting']['contact_number'];
		$facebook_url    = $setting['Setting']['facebook_url'];
		$twitter_url     = $setting['Setting']['twitter_url'];
		$googleplus_url  = $setting['Setting']['googleplus_url'];
		$linkedin_url    = $setting['Setting']['linkedin_url'];
		$pinterest_url   = $setting['Setting']['pinterest_url'];
		$youtube_url   = @$setting['Setting']['youtube_url'];
		$skype_url   = @$setting['Setting']['skype_url'];
		$new_number   = @$setting['Setting']['new_number'];
		$image_keyword   = $setting['Setting']['image_keyword'];

		$header_text_title = $setting['Setting']['header_text_title'];
		$header_text = $setting['Setting']['header_text'];
		$footer_text_title = $setting['Setting']['footer_text_title'];
		$footer_text = $setting['Setting']['footer_text'];
		$google_analytics = $setting['Setting']['google_analytics'];


		$company_name    = $setting['Setting']['name'];
		$sitelogo        = $setting['Setting']['sitelogo'];
 

		$company_details = array(
								'company_name'    =>	$company_name,
								'company_address' =>	$company_address,
								'company_email1'  =>	$company_email1 ,
								'company_number1' =>	$company_newnumber ,
								'company_address1'=>	$company_address1,
								'company_email'   =>	$company_email,
								'company_phone'   =>	$company_phone,
								'new_number'      =>	$new_number,
								'facebook_url'    =>	$facebook_url,
								'twitter_url'     =>	$twitter_url,
								'googleplus_url'  =>	$googleplus_url,
								'linkedin_url' 	  =>	$linkedin_url,
								'pinterest_url'   => 	$pinterest_url,
								'sitelogo'        =>	$sitelogo,
								'image_keyword'   =>	$image_keyword,
								'youtube_url'     =>	$youtube_url,
								'skype_url'       =>	$skype_url
		);
		
		$this->Session->write('company_details',$company_details);
		
		$this->set(compact('company_name','company_address','company_address1','company_number1','company_email1','new_number','company_email','company_phone','facebook_url','twitter_url','googleplus_url','linkedin_url','pinterest_url','sitelogo','youtube_url','skype_url','header_text_title','header_text','footer_text_title','footer_text','image_keyword','google_analytics'));

		
        $this->Auth->loginAction = ['controller' => 'users', 'action' => 'login', 'admin' => false];
        $this->Auth->loginRedirect = ['controller' => 'pages', 'action' => 'index', 'admin' => true];
        $this->Auth->logoutRedirect = ['controller' => 'pages', 'action' => 'index', 'admin' => false];
        $this->Auth->authorize = ['Controller'];

        $this->Auth->authenticate = [
            'Form' => [
                'userModel' => 'User',
                'fields' => [
                    'username' => 'username',
                    'password' => 'password'
                ],
                'scope' => [
                    'User.active' => 1,
                ]
            ]
        ];

        if(isset($this->request->params['admin']) && ($this->request->params['prefix'] == 'admin')) {
            if($this->Session->check('Auth.User')) {
                $this->set('authUser', $this->Auth->user());
                $loggedin = $this->Session->read('Auth.User');
                $this->set(compact('loggedin'));
                $this->layout = 'admin';
            }
        } elseif(isset($this->request->params['customer']) && ($this->request->params['prefix'] == 'customer')) {
            if($this->Session->check('Auth.User')) {
                $this->set('authUser', $this->Auth->user());
                $loggedin = $this->Session->read('Auth.User');
                $this->set(compact('loggedin'));
                $this->layout = 'customer';
            }
        } else {
            $this->Auth->allow();
        }

    }

    public function isAuthorized($user) {
        if (($this->params['prefix'] === 'admin') && ($user['role'] != 'admin')) {
            echo '<a href="/users/logout">Logout</a><br />';
            die('Invalid request for '. $user['role'] . ' user.');
        }
        if (($this->params['prefix'] === 'customer') && ($user['role'] != 'customer')) {
            echo '<a href="/users/logout">Logout</a><br />';
            die('Invalid request for '. $user['role'] . ' user.');
        }
        return true;
    }


    public function admin_switch($field = null, $id = null) {
        $this->autoRender = false;
        $model = $this->modelClass;
        if ($this->$model && $field && $id) {
            $field = $this->$model->escapeField($field);
            return $this->$model->updateAll([$field => '1 -' . $field], [$this->$model->escapeField() => $id]);
        }
        if(!$this->RequestHandler->isAjax()) {
            return $this->redirect($this->referer());
        }
    }

    public function admin_editable() {

        $model = $this->modelClass;

        $id = trim($this->request->data['pk']);
        $field = trim($this->request->data['name']);
        $value = trim($this->request->data['value']);

        $data[$model]['id'] = $id;
        $data[$model][$field] = $value;
        $this->$model->save($data, false);

        $this->autoRender = false;

    }

}
