<?php
 App::uses('AppController', 'Controller');
 
 class CertificatesController extends AppController {
	 
	 
	  public function admin_index(){
		 
		 $all_certificates = $this->Certificate->find('all');
		 $this->set(compact('all_certificates'));
		 
	 }
	 
	 public function admin_add(){
		 
			if ($this->request->is('post')) {

				$this->request->data['Certificate']['slug'] = $this->generateSlug($this->request->data['Certificate']['name']);

				    $filename = "";
					
					if(!empty($this->data['Certificate']['image']['name'])){
						
					$filename = $this->process_image($this->request->data['Certificate']['image'], 'img-'.
					
					$this->request->data['Certificate']['slug'],'certificates/');
					
					}

			     $this->request->data['Certificate']['image'] = $filename;

			     $this->Certificate->create();
			     if ($this->Certificate->save($this->request->data)){
							$this->Flash->flash('The Certificate has been saved');
							return $this->redirect(['action' => 'index']);
			 } 
			 else {
		
         		$this->Flash->flash('The Certificate could not be saved. Please, try again.');
			}
			}
				
				
		 
	 }
	 
		public function admin_edit($id=null){

			if (!$this->Certificate->exists($id)) {
			  throw new NotFoundException('Invalid Certificate');
			}

			$options = array('conditions' => array('Certificate.' . $this->Certificate->primaryKey => $id));
			$certificate_details = $this->Certificate->find('first', $options);
           
		   

			$filename = $certificate_details['Certificate']['image'];
		
			
		  if ($this->request->is('post') || $this->request->is('put')) {
 
		  $this->request->data['Certificate']['slug'] = $this->generateSlug($this->request->data['Certificate']['name']);
					  
		   if(!empty($this->data['Certificate']['image']['name'])){
		    $filename = $filename = $this->process_image($this->request->data['Certificate']['image'], 'img-'.$this->request->data['Certificate']['slug'],'certificates/');
		     }
			 $this->request->data['Certificate']['image'] = $filename;
				
				if ($this->Certificate->save($this->request->data)) {
                $this->Flash->flash('The Certificate has been saved');
                return $this->redirect(['action' => 'index', $id]);
            }

			else {
                $this->Flash->flash('The Certificate could not be saved. Please, try again.');
            }
			}
			else {
            $certificate = $this->Certificate->find('first', [
                'conditions' => [
                    'Certificate.id' => $id
                ]
            ]);
            $this->request->data = $certificate;
        }
		}
		
		public function admin_change_certificate_status()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'certificates', 'action'=>'index'));
        }
        
        if(!$this->Certificate->save(array('id'=>$this->request->data['certificate_id'], 'active'=>$this->request->data['status'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to set status at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'Certificate status updated.'));
        die;
    }
		
		public function admin_change_certificate_order()
    {
        if(!$this->request->is('AJAX'))
        {
            return $this->redirect(array('controller'=>'certificates', 'action'=>'index'));
        }
        
        if(!$this->Certificate->save(array('id'=>$this->request->data['certificate_id'], 'certificate_order'=>$this->request->data['certificate_order'])))
        {
            echo json_encode(array('status'=>'failure', 'message'=>'Unable to update certificate order at the moment.'));
            die;
        }
        
        echo json_encode(array('status'=>'success', 'message'=>'certificate Order updated.'));
        die;
    }
		
	 
	 public function admin_delete($id = null) {
        $this->Certificate->id = $id;
        if (!$this->Certificate->exists()) {
            throw new NotFoundException('Invalid Certificate');
        }
        $this->request->onlyAllow('post', 'delete');
        if ($this->Certificate->delete()) {
            $this->Flash->flash('Certificate deleted');
            return $this->redirect(['action' => 'index']);
        }
        $this->Flash->flash('Certificate was not deleted');
        return $this->redirect(['action' => 'index']);
    }
	 
 }
