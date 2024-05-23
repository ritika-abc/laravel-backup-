<?php
App::uses('AppController', 'Controller');
class UsersController extends AppController {

////////////////////////////////////////////////////////////

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('login','customer_login','customer_myaccount',
		'customer_orderhistory',
		'customer_orderdetails',
		'customer_logout');
    }

////////////////////////////////////////////////////////////


    public function login() {

        // echo AuthComponent::password('admin');
			$this->layout = "login";

        if ($this->request->is('post')) {
            if($this->Auth->login()) {

                $this->User->id = $this->Auth->user('id');
                $this->User->saveField('logins', $this->Auth->user('logins') + 1);
                $this->User->saveField('last_login', date('Y-m-d H:i:s'));

                if ($this->Auth->user('role') == 'customer') {
                    return $this->redirect([
                        'controller' => 'users',
                        'action' => 'dashboard',
                        'customer' => true,
                        'admin' => false
                    ]);
                } elseif ($this->Auth->user('role') == 'admin') {
                    return $this->redirect([
                        'controller' => 'users',
                        'action' => 'dashboard',
                        'manager' => false,
                        'admin' => true
                    ]);
                } else {
                    $this->Flash->danger('Login is incorrect');
                }
            } else {
                $this->Flash->danger('Login is incorrect');
            }
        }
    }

////////////////////////////////////////////////////////////

    public function logout() {
        $this->Flash->flash('Good-Bye');
        $_SESSION['KCEDITOR']['disabled'] = true;
        unset($_SESSION['KCEDITOR']);
        return $this->redirect($this->Auth->logout());
    }

////////////////////////////////////////////////////////////



 public function customer_login() {
	 
	 			$this->layout = "default";

				        $shop = $this->Session->read('Shop');

	  if ($this->request->is('post') && $this->request->data['mode'] == 'register') {
		  
		  $this->request->data['role'] = 'customer';
		  
            $this->User->create();
            if ($this->User->save($this->request->data)) {
                $this->Flash->flash('You have successfully registered.');
				$customer_data = $this->User->find('first', array('order' => 'User.id DESC', 'conditions' => array('email' => $this->request->data['email'])));

 
			  
		if ($customer_data['User']['password'] == Security::hash($this->request->data['password'], 'sha1', true)) {

					  
		$this->Session->write('customer_data', $customer_data);

		$this->Session->write('User.id', $customer_data['User']['id']);
		$this->Session->write('User.name', $customer_data['User']['name']);
		
		}
		
		
              //  return $this->redirect(['controller' => '/shop', 'action' => 'address']);
			   
			//	return $this->redirect(['controller' => 'shop', 'action' => 'address']);
				
				//				return $this->redirect(array('controller' => 'shop', 'action' => 'address' ));
				
			if($shop['Order']['order_item_count'] > 0) {
				return 	$this->redirect('/shop/address');
			}
			else {
				return 	$this->redirect('/customer/myaccount');
			}



            } else {
                $this->Flash->flash('The user could not be saved. Please, try again.');
            }
        }
	
	  if ($this->request->is('post') && $this->request->data['mode'] == 'login') {

 	  
		App::uses('Sanitize', 'Utility');
		$clean = new Sanitize();
		$clean->clean($_POST);

		$customer_data = $this->User->find('first', array('order' => 'User.id DESC', 'conditions' => array('email' => $this->request->data['email'])));

 
			  
		if ($customer_data['User']['password'] == Security::hash($this->request->data['password'], 'sha1', true)) {

					  
		$this->Session->write('customer_data', $customer_data);

		$this->Session->write('User.id', $customer_data['User']['id']);
		$this->Session->write('User.name', $customer_data['User']['name']);
		 
		 				return 	$this->redirect('/shop/address');

		 /* 
		
		$data =array();

		$this->loadModel('Order');

		$data["Order"]["id"] = $check["Cart"]["id"];

		$data["Order"]["user_id"] = $customer_data['User']['id'];

		$this->Order->save($data);

		*/
		
		} else {

		$this->Flash->flash('Login error. Check your email and/or password!');

		//$this->Session->delete('Customer.customer_id');
		//$this->Session->delete('Customer.customer_group_id');

		}

	//	$this->redirect($_SERVER['HTTP_REFERER']);
	  }
    }

	
	 public function customer_myaccount() {

    	 $this->layout = "default";

		 if(@$this->Session->read('User.id') == '') {
				
				        return $this->redirect('/customer/register');

			}
			
			$this->request->data['User']['id'] = $this->Session->read('User.id');

	
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->User->save($this->request->data)) {
                $this->Flash->flash('The user has been saved');
						$this->Session->write('customer_data', $this->User->read(null, $this->Session->read('User.id')));

             		  return $this->redirect('/customer/myaccount');

            } else {
                $this->Flash->flash('The user could not be saved. Please, try again.');
            }
        } 
		
		 $customer_data = $this->Session->read('customer_data');
         $this->set(compact('customer_data'));

 
    }
	
	 public function customer_logout() {
		 
		$this->layout = "default";

		$this->Session->write('customer_data', '');

		$this->Session->write('User.id', '');
		$this->Session->write('User.name', '');
        $this->Session->write('Shop','');

		return 	$this->redirect('/');

    }

	
 	
 public function customer_orderdetails($id) {
	 
	 	 			$this->layout = "default";
					
			$this->loadModel('Order');
			
			$order_data = $this->Order->find('first', [
            'recursive' => 1,
            'conditions' => [
                'Order.id' => $id
            ]
        ]);
       		
	        $this->set(compact('order_data'));

	}

    public function customer_orderhistory() {
		
			 			$this->layout = "default";

		
		 if(@$this->Session->read('User.id') == '') {
				
				        return $this->redirect('/customer/register');

			}
		
		    $this->loadModel('Order');
			
			$order_data = $this->Order->find('all',
			array(
 			'conditions' => array(
				'Order.user_id' => $this->Session->read('User.id'),
			),
			'order' => array(
                    'Order.created' => 'desc'
                ),
		));
		
 		
	        $this->set(compact('order_data'));

					
    }



    public function customer_dashboard() {
    }

 

    public function admin_dashboard() 
      {
   
      }

 
 
	 public function admin_index() { 	
   
	   $id = 1;		
	   $this->User->id = $id;	
	   
	   if (!$this->User->exists()) {		
			throw new NotFoundException('Invalid user');		
	   }	
	   if ($this->request->is('post') || $this->request->is('put')) {	
	   if ($this->User->save($this->request->data)) {			
			$this->Session->setFlash('Password changed success!');			
			$this->redirect(array('action' => 'index'));			
	   } else {		
			$this->Session->setFlash('The Password could not be saved. Please, try again.');		
	   }	
	   } 
	   else {	
	   $this->request->data = $this->User->read(null, $id);	
	   }
	 }
	 
	

    public function Xadmin_index() {

        $this->Paginator = $this->Components->load('Paginator');

        $this->Paginator->settings = [
            'User' => [
                'recursive' => -1,
                'contain' => [
                ],
                'conditions' => [
                ],
                'order' => [
                    'Users.name' => 'ASC'
                ],
                'limit' => 20,
                'paramType' => 'querystring',
            ]
        ];
        $users = $this->Paginator->paginate();
        $this->set(compact('users'));
    }

////////////////////////////////////////////////////////////

    public function admin_view($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException('Invalid user');
        }
        $this->set('user', $this->User->read(null, $id));
    }

////////////////////////////////////////////////////////////

    public function admin_add() {
        if ($this->request->is('post')) {
            $this->User->create();
            if ($this->User->save($this->request->data)) {
                $this->Flash->flash('The user has been saved');
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->flash('The user could not be saved. Please, try again.');
            }
        }
    }

////////////////////////////////////////////////////////////

    public function admin_edit($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException('Invalid user');
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->User->save($this->request->data)) {
                $this->Flash->flash('The user has been saved');
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->flash('The user could not be saved. Please, try again.');
            }
        } else {
            $this->request->data = $this->User->read(null, $id);
        }
    }

////////////////////////////////////////////////////////////

    public function admin_password($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException('Invalid user');
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->User->save($this->request->data)) {
                $this->Flash->flash('The user has been saved');
                $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->flash('The user could not be saved. Please, try again.');
            }
        } else {
            $this->request->data = $this->User->read(null, $id);
        }
    }

////////////////////////////////////////////////////////////

    public function admin_delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException('Invalid user');
        }
        if ($this->User->delete()) {
            $this->Flash->flash('User deleted');
            return $this->redirect(['action' => 'index']);
        }
        $this->Flash->flash('User was not deleted');
        return $this->redirect(['action' => 'index']);
    }

////////////////////////////////////////////////////////////

}
