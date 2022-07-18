<section class="content-header">
    <h1>
        <?= $title ?>
    </h1>
    <br>
</section>

<div class="row">
    <div class="col-sm-12">
        <div class="box box-success box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">Data <?= $title ?></h3>

                <div class="box-tools pull-right">
                    <a href="<?= base_url('prodi/add') ?>" class="btn btn-box-tool"><i class="fa fa-plus"></i> Add</a>
                </div>
                <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <?php

                if (session()->getFlashdata('pesan')) {
                    echo '<div class="alert alert-success" role="alert">';
                    echo session()->getFlashdata('pesan');
                    echo '</div>';
                }
                ?>

                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th width="50px" class="text-center">No</th>
                            <!-- <th class="text-center">Fakultas</th> -->
                            <th class="text-center">Kode Jurusan</th>
                            <th class="text-center">Jurusan</th>
                            <th class="text-center">Jenjang</th>
                            <!-- <th class="text-center">KA Prodi</th> -->
                            <th width="150px" class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($prodi as $key => $value) { ?>
                            <tr>
                                <td class="text-center"><b><?= $no++; ?></b></td>
                                <!-- <td><b><?= $value['fakultas']  ?></b></td> -->
                                <td class="text-center"><b><?= $value['kode_prodi']  ?></b></td>
                                <td><?= $value['prodi']  ?></td>
                                <td class="text-center"><?= $value['jenjang']  ?></td>
                                <!-- <td><?= $value['ka_prodi']  ?></td> -->
                                <td class="text-center">
                                    <a href="<?= base_url('prodi/edit/' . $value['id_prodi']) ?>" class="btn btn-warning btn-sm btn-flat"><i class="fa fa-pencil"></i></a>
                                    <button class="btn btn-danger btn-sm btn-flat" data-toggle="modal" data-target="#delete<?= $value['id_prodi'] ?>"><i class="fa fa-trash"></i></button>
                                </td>
                            </tr>
                        <?php  } ?>

                    </tbody>
                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>


<!-- modal delete -->
<?php foreach ($prodi as $key => $value) { ?>
    <div class="modal fade" id="delete<?= $value['id_prodi'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Delete <?= $title ?></h4>
                </div>
                <div class="modal-body">

                    Apakah Anda Yakin Ingin Menghapus <b><?= $value['prodi'] ?> .?</b>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger pull-left btn-flat" data-dismiss="modal">Close</button>
                    <a href="<?= base_url('prodi/delete/' . $value['id_prodi']) ?>" class="btn btn-success btn-flat">Delete</a>
                </div>

            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
<?php } ?>