<section class="content-header">
    <h1>
        <?= $title ?> Tahun Akademik : <?= $ta_aktif['ta'] ?>/<?= $ta_aktif['semester'] ?>
    </h1>
    <br>
</section>

<div class="row">
    <div class="col-sm-12">
        <div class="box box-success box-solid">

            <!-- /.box-header -->
            <div class="box-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th width="50px" class="text-center">No</th>
                            <th class="text-center">Fakultas</th>
                            <th class="text-center">Kode Prodi</th>
                            <th class="text-center">Program Studi</th>
                            <th class="text-center">Jenjang</th>
                            <th width="150px" class="text-center">Jadwal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($prodi as $key => $value) { ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><b><?= $value['fakultas']  ?></b></td>
                                <td><?= $value['kode_prodi']  ?></td>
                                <td><?= $value['prodi']  ?></td>
                                <td class="text-center"><?= $value['jenjang']  ?></td>
                                <td class="text-center">
                                    <a href="<?= base_url('JadwalKuliah/detailjadwal/' . $value['id_prodi']) ?>" class="btn btn-success btn-flat btn-sm"><i class="fa fa-calendar"></i></a>
                                </td>
                            </tr>
                        <?php } ?>

                    </tbody>
                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>