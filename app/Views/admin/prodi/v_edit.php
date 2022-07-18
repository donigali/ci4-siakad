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
                echo form_open('prodi/update/' . $prodi['id_prodi']);
                ?>

                <!-- <div class="form-group">
                    <label>Fakultas</label>
                    <select name="id_fakultas" class="form-control">
                        <option value="<?= $prodi['id_fakultas'] ?>"><?= $prodi['fakultas'] ?></option>
                        <?php foreach ($fakultas as $key => $value) { ?>
                            <option value="<?= $value['id_fakultas'] ?>"><?= $value['fakultas'] ?></option>
                        <?php } ?>
                    </select>
                </div> -->

                <div class="form-group">
                    <label>Kode Jurusan</label>
                    <input name="kode_prodi" value="<?= $prodi['kode_prodi'] ?>" class="form-control" placeholder="Kode Jurusan" readonly>
                </div>

                <div class="form-group">
                    <label>Jurusan</label>
                    <input name="prodi" value="<?= $prodi['prodi'] ?>" class="form-control" placeholder="Jurusan">
                </div>

                <div class="form-group">
                    <label>Jenjang</label>
                    <select name="jenjang" class="form-control">
                        <option value="<?= $prodi['jenjang'] ?>"><?= $prodi['jenjang'] ?></option>
                        <option value="MTs">MTs</option>
                        <option value="MA">MA</option>
                    </select>
                </div>

                <!-- <div class="form-group">
                    <label>KA Prodi</label>
                    <select name="ka_prodi" class="form-control">
                        <option value="<?= $prodi['ka_prodi'] ?>"><?= $prodi['ka_prodi'] ?></option>
                        <?php foreach ($dosen as $key => $value) { ?>
                            <option value="<?= $value['nama_dosen'] ?>"><?= $value['nama_dosen'] ?></option>
                        <?php } ?>

                    </select>
                </div> -->


            </div>
            <div class="modal-footer">
                <a href="<?= base_url('prodi') ?>" class="btn btn-danger pull-left btn-flat">Close</a>
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