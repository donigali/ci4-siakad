<div class="login-box">
    <div class="login-logo">
        <center><img class="img-responsive" src="<?= base_url('gambar/logo.png') ?>" alt="Photo"></center>
        <a href="<?= base_url() ?>"><b>Login</b> SIAKAD</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Silahkan Login</p>
        <?php
        $errors = session()->getFlashdata('errors');
        
         ?>

        <?php
        if (session()->getFlashdata('pesan')) {
            echo '<div class="alert alert-warning" role="alert">';
            echo session()->getFlashdata('pesan');
            echo '</div>';
        }
        if (session()->getFlashdata('sukses')) {
            echo '<div class="alert alert-success" role="alert">';
            echo session()->getFlashdata('sukses');
            echo '</div>';
        }
        ?>
        <?php
        echo form_open('auth/cek_login');
        ?>
        <div class="form-group has-feedback">
            <input name="username" class="form-control" placeholder="Username">
            <span class="fa fa-user form-control-feedback"></span>
            <p><?= ($validation->hasError('username')) ? $validation->getError('username') : ''; ?></p>
        </div>
        
        <div class="form-group has-feedback">
            <select name="level" class="form-control">
                <option value="">--Level--</option>
                <option value="1">Admin</option>
                <option value="2">Siswa</option>
                <option value="3">Guru</option>
            </select>
             <p><?= ($validation->hasError('level')) ? $validation->getError('level') : ''; ?></p>
        </div>
        <div class="form-group has-feedback">
            <input name="password" type="password" class="form-control" placeholder="Password" value="<?= old('password') ?>">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
             <p><?= ($validation->hasError('password')) ? $validation->getError('password') : ''; ?></p>
        </div>

        <div class="row">
            <!-- /.col -->
            <div class="col-xs-12">
                <button type="submit" class="btn btn-primary btn-block btn-flat">Log In</button>
            </div>
            <!-- /.col -->
        </div>
        <?php echo form_close() ?>



    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->