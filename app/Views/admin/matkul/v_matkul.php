<section class="content-header">
    <h1>
        <?= $title ?>
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
                            <th>Fakultas</th>
                            <th>Kode Prodi</th>
                            <th>Program Studi</th>
                            <th class="text-center">Jenjang</th>
                            <th>Mata Kuliah</th>
                            <th width="150px" class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $db = \Config\Database::connect();
                        $no = 1;
                        foreach ($prodi as $key => $value) {
                            $jml = $db->table('tbl_matkul')
                                ->where('id_prodi', $value['id_prodi'])
                                ->countAllResults();
                        ?>
                            <tr>
                                <td><?= $no++; ?></td>
                                <td><b><?= $value['fakultas']  ?></b></td>
                                <td><?= $value['kode_prodi']  ?></td>
                                <td><?= $value['prodi']  ?></td>
                                <td class="text-center"><?= $value['jenjang']  ?></td>
                                <td class="text-center">
                                    <p class="label text-center bg-green"><?= $jml ?></p>
                                </td>
                                <td class="text-center">
                                    <a href="<?= base_url('matkul/detail/' . $value['id_prodi']) ?>" class="btn btn-warning btn-sm btn-flat"><i class="fa fa-th-list"> Mata Kuliah</i></a>
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