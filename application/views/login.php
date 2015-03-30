<?php if ( $this->session->flashdata( 'message' ) ) : ?>
    <p><?php echo $this->session->flashdata( 'message' ); ?></p>
<?php endif; ?>

<?php echo form_open( 'user/do_login/' ); ?>
<?php echo form_fieldset( 'Login Form' ); ?>

    <div class="textfield">
        <?php echo form_label( 'username', 'user_name' ); ?>
        <?php echo form_error( 'user_name' ); ?>
        <?php echo form_input( 'user_name', set_value( 'user_name' ) ); ?>
    </div>

    <div class="textfield">
        <?php echo form_label( 'password', 'user_pass' ); ?>
        <?php echo form_error( 'user_pass' ); ?>
        <?php echo form_password( 'user_pass' ); ?>
    </div>

    <div class="buttons">
        <?php echo form_submit( 'login', 'Login' ); ?>
    </div>

<?php echo form_fieldset_close(); ?>
<?php echo form_close(); ?>