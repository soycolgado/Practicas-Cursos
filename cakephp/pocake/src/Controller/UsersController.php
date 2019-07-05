<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Users Controller
 *
 */
class UsersController extends AppController
{
	public function index(){
		$users = $this->paginate($this->Users);
		$this->set('users',$users);
	}

	public function view(){
		echo 'Detalle del usuario';
		exit();
	}

	public function add(){
		$user = $this->Users->newEntity();

		if($this->request->is('post')){
			$user = $this->Users->patchEntity($user,$this->request->data);
			if($this->Users->save($user)){
				$this->Flash->success('El usuario ha sido creado correctamente');
				return $this->redirect(['controller'=>'Users','action'=>'index']);
			}
			else{
				$this->Flash->error('El ususario no pudo ser creado, por favor intente nuevamente');
			}
		}

		$this->set(compact('user'));
	}
}
