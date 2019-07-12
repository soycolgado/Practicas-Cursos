<?= $this->Html->css('login') ?>

<div class="container">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        <?= $this->Flash->render('auth') ?>
        <?= $this->Form->create() ?>
			<fieldset>
				<h2>Please Sign In</h2>
				<hr class="colorgraph">
				<div class="form-group">
                    <!-- <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address"> -->
                    <?= $this->Form->input('email',['class'=>'form-control input-lg','placeholder'=>'Correo Electronico','label'=>false]) ?>
				</div>
				<div class="form-group">
                    <!-- <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password"> -->
                    <?= $this->Form->input('password',['class'=>'form-control input-lg','placeholder'=>'Contraseña','label'=>false]) ?>
				</div>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <!-- <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In"> -->
                        <?= $this->Form->button('Acceder',['class'=>'btn btn-lg btn-success btn-block']) ?>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <!-- <a href="" class="btn btn-lg btn-primary btn-block">Register</a> -->
                        <?= $this->Html->link('Registrarse',['controller'=>'users','action'=>'add'],['class'=>'btn btn-primary btn-lg btn-block']) ?>
					</div>
				</div>
			</fieldset>
		<?= $this->Form->end() ?>
	</div>
</div>

</div>