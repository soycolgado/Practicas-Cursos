<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Users Controller
 *
 * @property \App\Model\Table\UsersTable $Users
 *
 * @method \App\Model\Entity\User[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class UsersController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function isAuthorized($user)
    {
        if(isset($user['role']) && $user['role'] == 'user' ){
            if(in_array($this->request->action,['home','view','logout'])){
                return true;
            }
        }

        return parent::isAuthorized($user);
    }

    


    public function login(){

        if($this->request->is('post')){

            $user = $this->Auth->identify();
            if($user){

                $this->Auth->setUser($user);
                return $this->redirect($this->Auth->redirectUrl());

            }else{
                
                $this->Flash->error('Los datos son invalidos',['key' => 'auth']);
            }
        }
    }

    public function home(){
        $this->render();
    }

    public function logout(){
        return $this->redirect($this->Auth->logout());
    }

    public function index()
    {
        $users = $this->paginate($this->Users);

        $this->set(compact('users'));
    }

    /**
     * View method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id)
    {
        $user = $this->Users->get($id);
        $this->set('user',$user);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $user = $this->Users->newEntity();
        if($this->request->is('post')){
            $user = $this->Users->patchEntity($user,$this->request->data);
            if($this->Users->save($user)){
                $this->Flash->success('Usuario creado correctamente');
                return $this->redirect(['controller'=>'users','action'=>'index']);
            }else{
                $this->Flash->error('No se pudo crear el usuario');
            }
        }

        $this->set(compact('user'));
    }

    /**
     * Edit method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit()
    {
        
    }

    /**
     * Delete method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete()
    {
       
    }
}
