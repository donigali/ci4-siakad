<section class="content-header">
    <h1>
        <?= $title ?>
    </h1>
    <br>
</section>

<div class="row">
    <div class="col-sm-3">
    </div>
    <div class="col-sm-6">
        <div class="box box-success box-solid">
            <div class="box-header with-border">
                <h3 class="box-title"><?= $title ?></h3>

                <div class="box-tools pull-right">

                </div>
                <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <?php
                $errors = session()->getFlashdata('errors');
                if (!empty($errors)) { ?>
                    <div class="alert alert-danger" role="alert">
                        <ul>
                            <?php foreach ($errors as $key => $value) { ?>
                                <li><?= esc($value) ?></li>
                            <?php } ?>
                        </ul>
                    </div>
                <?php } ?>

                <?php
                echo form_open_multipart('mahasiswa/update/' . $mhs['id_mhs']);
                ?>


                <div class="col-sm-6">
                    <div class="form-group">
                        <label>NIS</label>
                        <input name="nis" value="<?= $mhs['nim'] ?>" class="form-control" placeholder="NIS">
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Nama Siswa</label>
                        <input name="nama_mhs" value="<?= $mhs['nama_mhs'] ?>" class="form-control" placeholder="Nama Siswa">
                    </div>
                </div>

                <div class="form-group">
                    <label>Jurusan</label>
                    <select name="id_prodi" class="form-control">
                        <option value="<?= $mhs['id_prodi'] ?>"><?= $mhs['jenjang'] ?>-<?= $mhs['prodi'] ?></option>
                        <?php foreach ($prodi as $key => $value) { ?>
                            <option value="<?= $value['id_prodi'] ?>"><?= $value['jenjang'] ?>-<?= $value['prodi'] ?></option>
                        <?php } ?>
                    </select>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input name="password" value="<?= $mhs['password'] ?>" class="form-control" placeholder="Password">
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <img src="<?= base_url('fotomhs/' . $mhs['foto_mhs']) ?>" id="gambar_load" width="200px">
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Foto Dosen</label>
                        <input type="file" name="foto_mhs" id="preview_gambar" class="form-control">
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <a href="<?= base_url('mahasiswa') ?>" class="btn btn-danger pull-left btn-flat">Close</a>
                <button type="submit" class="btn btn-success btn-flat">Simpan</button>
            </div>
            <?php echo form_close() ?>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
    <div class="col-sm-3">
    </div>
</div>