<div class="row">
    <div class="col-md-3">
        <!-- Profile Image -->
        <div class="box box-success">
            <div class="box-body">
                <div class="text-center">
                    <img class="" src="<?= base_url('fotomhs/' . $mhs['foto_mhs']) ?>" width="80%" height="230px">
                </div>

                <h4 class="text-center"><?= $mhs['nim'] ?></h4>
                <h4 class="text-center"><?= $mhs['nama_mhs'] ?></h4>


            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>

    <div class="col-md-9">
        <div class="box box-success">

            <!-- /.box-header -->
            <div class="box-body">
                <table class="table table-responsive">
                    <tr>
                        <th>Tahun Akademik</th>
                        <th>:</th>
                        <th><?= $ta['ta'] ?>/<?= $ta['semester'] ?></th>
                    </tr>
                    <tr>
                        <th>Jurusan</th>
                        <th>:</th>
                        <td><?= $mhs['prodi'] ?></td>
                    </tr>
                    <!-- <tr>
                        <th>Fakultas</th>
                        <th>:</th>
                        <td><?= $mhs['fakultas'] ?></td>
                    </tr> -->
                    <tr>
                        <th>Kelas</th>
                        <th>:</th>
                        <td><?= $mhs['nama_kelas'] ?>-<?= $mhs['tahun_angkatan'] ?></td>
                    </tr>
                    <tr>
                        <th>Guru PA</th>
                        <th>:</th>
                        <td><?= $mhs['nama_dosen'] ?></td>
                    </tr>

                    <tr>
                        <th>Alamat</th>
                        <th>:</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>No HP</th>
                        <th>:</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>E-Mail</th>
                        <th>:</th>
                        <td></td>
                    </tr>
                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>