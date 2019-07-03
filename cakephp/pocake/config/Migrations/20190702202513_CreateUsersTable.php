<?php
use Migrations\AbstractMigration;

class CreateUsersTable extends AbstractMigration
{
    /**
     * Change Method.
     *
     * More information on this method is available here:
     * http://docs.phinx.org/en/latest/migrations.html#the-change-method
     * @return void
     */
    public function change()
    {
            $table = $this->table('users');
            $table->addColumn('first_name','string',array('limit'=>100));
            $table->addColumn('last_name','string',array('limit'=>100));
            $table->addColumn('email','string',array('limit'=>100));
            $table->addColumn('password','string');
            $table->addColumn('role','enum',array('values'=>['admin','user']));
            $table->addColumn('active','boolean');
            $table->addColumn('created','datetime');
            $table->addColumn('modified','datetime');
            $table->create();
       
    }
}
