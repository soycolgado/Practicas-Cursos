<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 */
?>

<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <div class="page-header">
            <h2>Crear Usuario</h2>
        </div>
        <?= $this->Form->create($user) ?>
        <fieldset>
            <?php
                echo $this->Form->input('first_name',['label' => 'Nombre']);
                echo $this->Form->input('last_name',['label' => 'Apellido']);
                echo $this->Form->input('email',['label' => 'Correo Electronico']);
                echo $this->Form->input('password',['label' => 'Contraseña']);
                echo $this->Form->input('role',['options' => ['admin'=>'Administrador','user'=>'Usuario'],'label' => 'Rol'],);
                echo $this->Form->input('active',['type'=>'checkbox','label'=>'Activo']);

            ?>
        </fieldset>
        <?= $this->Form->button('Crear Usuario') ?>
        <?= $this->Form->end() ?>
    </div>
</div>

