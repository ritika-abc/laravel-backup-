<?php
App::uses('AppController', 'Controller');
class ProductsController extends AppController {

////////////////////////////////////////////////////////////

    public $components = [
        'RequestHandler',
    ];

////////////////////////////////////////////////////////////

    public function beforeFilter() {
        parent::beforeFilter();
    }

////////////////////////////////////////////////////////////

    public function index() {
		
		
		  $this->loadModel('Sitepage');	

		  $product_page = $this->Sitepage->find('first', array(

			'conditions' => array(
			'Sitepage.id' => '9'
			),
		));
		
		if(!empty($product_page['Sitepage']['meta_title'])) {	
		$meta_title   = $product_page['Sitepage']['meta_title'];
		}
		if(!empty($product_page['Sitepage']['meta_keyword'])) {	
			$meta_keyword = $product_page['Sitepage']['meta_keyword'];
		}
		if(!empty($product_page['Sitepage']['meta_desc'])) {	
			$meta_desc   = $product_page['Sitepage']['meta_desc'];
		}
			
        
		$this->set(compact('product_page','page','meta_title','meta_keyword','meta_desc'));
   
  
 

    }

////////////////////////////////////////////////////////////

 public function productdetails($id = null) {
 
		 
        $product = $this->Product->find('first', [
           
            'conditions' => [              
                'Product.active' => 1,
                'Product.category_id' => $id
            ]
        ]);
		  
			
        if (empty($product)) {
            return $this->redirect(['action' => 'index'], 301);
        }

        $this->Product->updateViews($product);

		
		
	if(!empty($product['Product']['meta_title'])) {	
		$meta_title   = $product['Product']['meta_title'];
	}
	if(!empty($product['Product']['meta_keyword'])) {	
		$meta_keyword = $product['Product']['meta_keyword'];
	}
	if(!empty($product['Product']['meta_desc'])) {	
		$meta_desc   = $product['Product']['meta_desc'];
	}
	 	$this->set(compact('meta_title','meta_keyword','meta_desc','product'));	
       
    }
	
	
	///////////////////////////////////////////////////////////////////////////////////
	
    public function view($slug=null) {
		 
     $this->loadModel('Product');	
		 $products = $this->Product->find('first', array(
			'recursive' => 0,
			'order' => array(
				
			),
			'conditions' => array(
			'Product.slug' => $slug

			),
		));
		 
           
          
		$this->set(compact('products'));
		 
	 
    }
  
	///////////////////////////////////////////////////////////////////////////////////
  
	public function admin_seo($id = null) {
 
        if ($this->request->is('post') || $this->request->is('put')) {
 
		 
            if ($this->Product->save($this->request->data)) {
                $this->Flash->flash('The product seo has been saved');
               // return $this->redirect(['action' => 'index']);
			   
			    $product = $this->Product->find('first', [
                'conditions' => [
                    'Product.id' => $id
                ]
            ]);
            $this->request->data = $product;
			
            } else {
                $this->Flash->flash('The product seo could not be saved. Please, try again.');
            }
        } else {
            $product = $this->Product->find('first', [
                'conditions' => [
                    'Product.id' => $id
                ]
            ]);
            $this->request->data = $product;
        }

        $this->set(compact('id'));

        $this->set(compact('product'));

 
		$this->loadModel('Category');
		
		$categories = $this->Category->find('list', array(
		 
		)
		);
		$this->set(compact('categories'));
		     	

    }
	public function admin_index() { 
	
		
		$products = $this->Product->find('all', array(
			'recursive' => 0,
		 	 
			'order' => array(
				'Product.id' => 'DESC'
			),
			
		));
		
		
		//$options = array('conditions' => array('Product.' . $this->Product->primaryKey => $parent_id));
		//$product_details = $this->Product->find('first', $options);
		
		
		
		$this->set(compact('products'));
		
	}
	 

////////////////////////////////////////////////////////////

    public function admin_view($id = null) {

        if (($this->request->is('post') || $this->request->is('put')) && !empty($this->request->data['Product']['image']['name'])) {

            $this->Img = $this->Components->load('Img');

            $newName = $this->request->data['Product']['slug'];

            $ext = $this->Img->ext($this->request->data['Product']['image']['name']);

            $origFile = $newName . '.' . $ext;
            $dst = $newName . '.jpg';

            $targetdir = WWW_ROOT . 'images/original';

            $upload = $this->Img->upload($this->request->data['Product']['image']['tmp_name'], $targetdir, $origFile);

            if($upload == 'Success') {
                $this->Img->resampleGD($targetdir . DS . $origFile, WWW_ROOT . 'images/large/', $dst, 800, 800, 1, 0);
                $this->Img->resampleGD($targetdir . DS . $origFile, WWW_ROOT . 'images/small/', $dst, 180, 180, 1, 0);
                $this->request->data['Product']['image'] = $dst;
            } else {
                $this->request->data['Product']['image'] = '';
            }

            if ($this->Product->save($this->request->data)) {
                $this->Flash->flash($upload);
                return $this->redirect($this->referer());
            } else {
                $this->Flash->flash('The Product could not be saved. Please, try again.');
            }
        }

        if (!$this->Product->exists($id)) {
            throw new NotFoundException('Invalid product');
        }
        $product = $this->Product->find('first', [
            'recursive' => -1,
            'contain' => [
                'Category',
                'Brand',
            ],
            'conditions' => [
                'Product.id' => $id
            ]
        ]);
        $this->set(compact('product'));
    }

////////////////////////////////////////////////////////////

    public function admin_add() {
		
		
	 //	$this->Product->query("ALTER TABLE `products` ADD `parent_id` INT(11) NULL DEFAULT '0' AFTER `id`;");
		
		$_SESSION['KCFINDER'] = [
            'disabled' => false,
            'uploadURL' => '../images/products',
            'uploadDir' => '',
            'dirPerms' => 0777,
            'filePerms' => 0777
        ];
		
        if ($this->request->is('post')) {
			
			$this->request->data['Product']['slug'] = $this->generateSlug($this->request->data['Product']['name']);

				$filename = "";
				if(!empty($this->data['Product']['image']['name']))
                {
					  $filename = $this->process_image($this->request->data['Product']['image'], 'img-'.$this->request->data['Product']['slug'],'products/');
				}
				
			       $this->request->data['Product']['image'] = $filename;

	               $filename1 = "";
				if(!empty($this->data['Product']['inner_image']['name']))
                {
					  $filename1 = $this->process_image($this->request->data['Product']['inner_image'], 'img-'.$this->request->data['Product']['name'],'products/');
				}
				
			$this->request->data['Product']['inner_image'] = $filename1;
		
            $this->Product->create();
            if ($this->Product->save($this->request->data)) {
                $this->Flash->flash('The product has been saved');
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->flash('The product could not be saved. Please, try again.');
            }
        }
       		 
		$this->loadModel('Category');
		
		$categories = $this->Category->find('list', array(
		 
		)
		);
        $parentproducts = $this->Product->find('list');
		$this->set(compact('parentproducts'));	
 
		$this->set(compact('categories'));
		     	
    }

////////////////////////////////////////////////////////////

   public function admin_edit($id = null) {


        if (!$this->Product->exists($id)) {
            throw new NotFoundException('Invalid product');
        }
			
	$this->Product->query("UPDATE `products` SET`header_title` = name,`link_title`  = concat(name,' Exporters'),`link_image_title`  = concat(name,' Suppliers'),
`footer_title`  = concat(name,' Manufacturers'),`location_title`  = concat(name,' in city'),`location_image_title`  = concat(name,' in city'),`exporters_title`  = concat(name,' Exporters '),`exporters_image_title`  = concat(name,' Exporters'),`manufacturers_title`  = concat(name,' Manufacturers'),`manufacturers_image_title`  = concat(name,' Manufacturers'),`suppliers_title`  = concat(name,' Suppliers'),`suppliers_image_title`  = concat(name,' Suppliers'),`sitemap_title`  = name");

		$options = array('conditions' => array('Product.' . $this->Product->primaryKey => $id));
		$product_details = $this->Product->find('first', $options);
 			 
	
		$filename1 = $product_details['Product']['image'];
	    $filename2 = $product_details['Product']['home_image'];
		
	
		
        if ($this->request->is('post') || $this->request->is('put')) {
 
		$this->request->data['Product']['slug'] = $this->generateSlug($this->request->data['Product']['name']);
					  
		if(!empty($this->data['Product']['image']['name']))
                {
					  $filename1 = $this->process_image($this->request->data['Product']['image'], 'img-'.$this->request->data['Product']['slug'],'products/');
				}
				
			$this->request->data['Product']['image'] = $filename1;
			
	 	if(!empty($this->data['Product']['home_image']['name']))
                {
					  $filename2 = $this->process_image($this->request->data['Product']['home_image'], 'home-img-'.$this->request->data['Product']['slug'],'products/');
				}
				
			$this->request->data['Product']['home_image'] = $filename2;
			
	 
   
            if ($this->Product->save($this->request->data)) {
                $this->Flash->flash('The product has been saved');
                return $this->redirect(['action' => 'index', $id]);
            } else {
                $this->Flash->flash('The product could not be saved. Please, try again.');
            }
        } else {
            $product = $this->Product->find('first', [
                'conditions' => [
                    'Product.id' => $id
                ]
            ]);
            $this->request->data = $product;
        }

        $this->set(compact('id'));

        $this->set(compact('product'));


		$categories = $this->Product->Category->find('list', array(
		'conditions' => array('Category.parent_id' => $product['Product']['parent_category_id'])
		)
		);
		$this->set(compact('categories'));	
		
		$parentproducts = $this->Product->find('list');
		$this->set(compact('parentproducts'));	
 

	
 
    }

////////////////////////////////////////////////////////////

    public function admin_tags($id = null) {

        $tags = ClassRegistry::init('Tag')->find('all', [
            'recursive' => -1,
            'fields' => [
                'Tag.name'
            ],
            'order' => [
                'Tag.name' => 'ASC'
            ],
        ]);
        $tags = Hash::combine($tags, '{n}.Tag.name', '{n}.Tag.name');
        $this->set(compact('tags'));

        if ($this->request->is('post') || $this->request->is('put')) {

            $tagstring = '';

            foreach($this->request->data['Product']['tags'] as $tag) {
                $tagstring .= $tag . ', ';
            }

            $tagstring = trim($tagstring);
            $tagstring = rtrim($tagstring, ',');

            $this->request->data['Product']['tags'] = $tagstring;

            $this->Product->save($this->request->data, false);

            return $this->redirect(['action' => 'tags', $this->request->data['Product']['id']]);

        }

        $product = $this->Product->find('first', [
            'conditions' => [
                'Product.id' => $id
            ]
        ]);
        if (empty($product)) {
            throw new NotFoundException('Invalid product');
        }
        $this->set(compact('product'));

        $selectedTags = explode(',', $product['Product']['tags']);
        $selectedTags = array_map('trim', $selectedTags);
        $this->set(compact('selectedTags'));

        $neighbors = $this->Product->find('neighbors', ['field' => 'id', 'value' => $id]);
        $this->set(compact('neighbors'));

    }

public function search(){

        
        $this->loadModel('Sitepage');
      $search_item=$this->request->data['Product']['search'];
	  $results = $this->Product->find('all',array('conditions'=>array('Product.name LIKE'=>'%'.trim($search_item).'%')));
	   $page = $this->Sitepage->find('first', array(
			
			'conditions' => array(
			'Sitepage.id' => 16
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
	  $this->set(compact('results'));
	
		$this->set(compact('page','meta_title','meta_keyword','meta_desc'));
    }

////////////////////////////////////////////////////////////

    public function admin_csv() {
        $products = $this->Product->find('all', [
            'recursive' => -1,
        ]);
        $this->set(compact('products'));
        $this->layout = false;
    }

	 
	public function admin_dropdown_subcategories()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'products', 'action'=>'index'));
        }
        
		
	     $parent_category_id  =  @$this->request->data['parent_category_id'];
         	$this->loadModel('Category');	 

		    $options = [
            'recursive' => 0,
            'conditions' => [
				'Category.parent_id' => $parent_category_id,
             ]
        ];
       
		$categories =   $this->Category->find('all', $options);
?>	
<select name="data[Product][category_id]" class="form-control col-md-3" id="ProductCategoryId">
<?php foreach ($categories as $category): ?>
<option value="<?php echo h($category['Category']['id']); ?>"><?php echo h($category['Category']['name']); ?></option>
<?php endforeach; ?>

</select>

<?php
		
         die;
    }
	 
	
////////////////////////////////////////////////////////////


 public function admin_change_product_hot()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'products', 'action'=>'index'));
        }
        
        if(!$this->Product->save(array('id'=>$this->request->data['product_id'], 'hot_product'=>$this->request->data['hot_product'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to set Product as Featured at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Product set as Featured.'));
        die;
    }

 public function admin_change_product_status()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'products', 'action'=>'index'));
        }
        
        if(!$this->Product->save(array('id'=>$this->request->data['product_id'], 'active'=>$this->request->data['status'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to set status at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Product status updated.'));
        die;
    }
	
	 public function admin_change_product_order()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'products', 'action'=>'index'));
        }
        
        if(!$this->Product->save(array('id'=>$this->request->data['product_id'], 'product_order'=>$this->request->data['product_order'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update Product order at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Product Order updated.'));
        die;
    }
	

	
    public function admin_delete($id = null) {
        $this->Product->id = $id;
        if (!$this->Product->exists()) {
            throw new NotFoundException('Invalid product');
        }
        $this->request->onlyAllow('post', 'delete');
        if ($this->Product->delete()) {
            $this->Flash->flash('Product deleted');
            return $this->redirect(['action' => 'index']);
        }
        $this->Flash->flash('Product was not deleted');
        return $this->redirect(['action' => 'index']);
    }

////////////////////////////////////////////////////////////

}
