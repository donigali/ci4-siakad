<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SIAKAD | Print Absensi</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?= base_url() ?>/template/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url() ?>/template/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<?= base_url() ?>/template/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url() ?>/template/dist/css/AdminLTE.min.css">

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body onload="window.print();">
    <div class="wrapper">
        <!-- Main content -->
        <section class="invoice">
            <!-- title row -->
            <div class="row">
                <div class="col-xs-12">
                    <h1 class="page-header">
                        <i class="fa fa-file-o"></i> <b>Nilai Mahasiswa TA : <?= $ta['ta'] ?>/<?= $ta['semester'] ?></b>
                        <small class="pull-right">Date: <?= date('d M Y') ?></small>
                    </h1>
                </div>
                <!-- /.col -->
            </div>
            <!-- info row -->
            <div class="row invoice-info">
                <div class="col-xs-6 table-responsive">
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
                <div class="col-xs-6 table-responsive">
                    <table class="table-striped table-responsive">
                        <tr>
                            <td>Mata Kuliah</td>
                            <td width="30px" class="text-center">:</td>
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
            </div>
            <!-- /.row -->
            <div class="row">
                <br>
                <div class="col-xs-12">
                    <table class="table table-striped table-bordered table-responsive text-sm">

                        <tr class="label-success">
                            <th rowspan="2" class="text-center">#</th>
                            <th rowspan="2" class="text-center">NIM</th>
                            <th rowspan="2" class="text-center">Mahasiswa</th>
                            <th colspan="6" class="text-center">Nilai</th>
                        </tr>
                        <tr class="label-success">
                            <th class="text-center">Absensi</th>
                            <th class="text-center" width="80px">Tugas</th>
                            <th class="text-center" width="80px">UTS</th>
                            <th class="text-center" width="80px">UAS</th>
                            <th class="text-center" width="80px">NA <br>(15%+15%+30%+40%)</th>
                            <th class="text-center" width="80px">Huruf</th>
                        </tr>
                        <?php $no = 1;
                        foreach ($mhs as $key => $value) {

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
                                    ?>
                                </td>
                                </td>
                                <td class="text-center"><?= $value['nilai_tugas'] ?></td>
                                <td class="text-center"><?= $value['nilai_uts'] ?></td>
                                <td class="text-center"><?= $value['nilai_uas'] ?></td>
                                <td class="text-center"><?= $value['nilai_akhir'] ?></td>
                                <td class="text-center"><?= $value['nilai_huruf'] ?></td>
                            </tr>
                        <?php } ?>
                    </table>

                </div>
            </div>
            <div class="row">
                <!-- accepted payments column -->
                <div class="col-xs-4">


                </div>
                <!-- /.col -->
                <div class="col-xs-4">

                </div>
                <div class="col-xs-4">
                    Padang, <?= date('d M Y') ?> <br>
                    Dosen Pengampuh<br>
                    <br>
                    <br>
                    dto.
                    <br>
                    <br>
                    <br>
                    <?= $jadwal['nama_dosen'] ?>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- ./wrapper -->
</body>

</html>