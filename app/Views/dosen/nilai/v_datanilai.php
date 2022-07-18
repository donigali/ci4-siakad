<section class="content-header">
    <h1>
        <?= $title ?> Kelas : <?= $jadwal['nama_kelas'] ?>-<?= $jadwal['tahun_angkatan'] ?> TA : <?= $ta['ta'] ?>/<?= $ta['semester'] ?>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('dsn/NilaiMahasiswa') ?>"><i class="fa fa-dashboard"></i> Nilai Kelas</a></li>
        <li class="active">Data Nilai</li>
    </ol>
    <br>
</section>

<div class="row">
    <div class="col-sm-6">
        <table class="table-striped table-responsive">
            <tr>
                <td>Program Studi</td>
                <td width="30px" class="text-center">:</td>
                <td><?= $jadwal['prodi'] ?></td>
            </tr>
            <tr>
                <td>Fakultas</td>
                <td class="text-center">:</td>
                <td><?= $jadwal['fakultas'] ?></td>
            </tr>
            <tr>
                <td>Kode</td>
                <td class="text-center">:</td>
                <td><?= $jadwal['kode_matkul'] ?></td>
            </tr>
        </table>
    </div>
    <div class="col-sm-6">
        <table class="table-striped table-responsive">
            <tr>
                <td>Mata Kuliah</td>
                <td class="text-center">:</td>
                <td><?= $jadwal['matkul'] ?></td>
            </tr>
            <tr>
                <td>Waktu</td>
                <td class="text-center">:</td>
                <td><?= $jadwal['hari'] ?>, <?= $jadwal['waktu'] ?></td>
            </tr>
            <tr>
                <td>Dosen</td>
                <td class="text-center">:</td>
                <td><?= $jadwal['nama_dosen'] ?></td>
            </tr>
        </table>
    </div>
    <div class="col-sm-12">
        <a href="<?= base_url('dsn/PrintNilai/' . $jadwal['id_jadwal']) ?>" target="_blank" class="btn btn-xs btn-flat btn-success"><i class="fa fa-print"></i> Print Nilai</a>
    </div>
    <div class="col-sm-12">
        <?php

        if (session()->getFlashdata('pesan')) {
            echo '<div class="alert alert-success" role="alert">';
            echo session()->getFlashdata('pesan');
            echo '</div>';
        }
        ?>
        <?php echo form_open('dsn/SimpanNilai/' . $jadwal['id_jadwal']) ?>
        <table class="table table-striped table-bordered table-responsive text-sm">

            <tr class="label-success">
                <th rowspan="2" class="text-center">#</th>
                <th rowspan="2" class="text-center">NIM</th>
                <th rowspan="2" class="text-center">Mahasiswa</th>
                <th colspan="7" class="text-center">Nilai</th>
            </tr>
            <tr class="label-success">
                <th class="text-center">Absensi</th>
                <th class="text-center" width="80px">Tugas</th>
                <th class="text-center" width="80px">UTS</th>
                <th class="text-center" width="80px">UAS</th>
                <th class="text-center" width="80px">NA <br>(15%+15%+30%+40%)</th>
                <th class="text-center" width="80px">Huruf</th>
                <th class="text-center" width="80px">Bobot</th>
            </tr>
            <?php $no = 1;
            foreach ($mhs as $key => $value) {
                echo form_hidden($value['id_krs'] . 'id_krs', $value['id_krs']);
            ?>
                <tr>
                    <td><?= $no++ ?></td>
                    <td class="text-center"><?= $value['nim'] ?></td>
                    <td><?= $value['nama_mhs'] ?></td>
                    <td class="text-center">
                        <?php
                        $absensi = ($value['p1'] +
                            $value['p2'] +
                            $value['p3'] +
                            $value['p4'] +
                            $value['p5'] +
                            $value['p6'] +
                            $value['p7'] +
                            $value['p8'] +
                            $value['p9'] +
                            $value['p10'] +
                            $value['p11'] +
                            $value['p12'] +
                            $value['p13'] +
                            $value['p14'] +
                            $value['p15'] +
                            $value['p16'] +
                            $value['p17'] +
                            $value['p18']) / 36 * 100;
                        echo number_format($absensi, 0);
                        echo form_hidden($value['id_krs'] . 'absen', number_format($absensi, 0));
                        ?>
                    </td>
                    </td>
                    <td class="text-center"><input name="<?= $value['id_krs'] ?>nilai_tugas" value="<?= $value['nilai_tugas'] ?>" class="form-control"></td>
                    <td class="text-center"><input name="<?= $value['id_krs'] ?>nilai_uts" value="<?= $value['nilai_uts'] ?>" type="text" class="form-control"></td>
                    <td class="text-center"><input name="<?= $value['id_krs'] ?>nilai_uas" value="<?= $value['nilai_uas'] ?>" class="form-control"></td>
                    <td class="text-center"><?= $value['nilai_akhir'] ?></td>
                    <td class="text-center"><?= $value['nilai_huruf'] ?></td>
                    <td class="text-center"><?= $value['bobot'] ?></td>
                </tr>
            <?php } ?>
        </table>

        <button class="btn btn-success btn-flat"><i class="fa fa-save"></i> Simpan Dan Proses</button>
        <?php echo form_close() ?>
    </div>
</div>