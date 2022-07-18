<section class="content-header">
    <h1>
        <?= $title ?> TA : <?= $ta['ta'] ?>/<?= $ta['semester'] ?>
    </h1>
    <br>
</section>

<div class="row">
    <table class="table table-striped table-bordered table-responsive">
        <tr class="label-success">
            <th class="text-center">#</th>

            <th class="text-center">Kode</th>
            <th class="text-center">Mata Kuliah</th>
            <th class="text-center">SKS</th>
            <th class="text-center">Kelas</th>
            <th class="text-center">Nilai</th>
        </tr>
        <?php $no = 1;
        foreach ($absen as $key => $value) { ?>
            <tr>
                <td><?= $no++ ?></td>

                <td><?= $value['kode_matkul'] ?></td>
                <td><?= $value['matkul'] ?></td>
                <td><?= $value['sks'] ?></td>
                <td><?= $value['nama_kelas'] ?>-<?= $value['tahun_angkatan'] ?></td>
                <td class="text-center">
                    <a href="<?= base_url('dsn/DataNilai/' . $value['id_jadwal']) ?>" class="btn btn-success btn-sm btn-flat">
                        <i class="fa fa-calendar"></i> Nilai
                    </a>
                </td>
            </tr>
        <?php } ?>
    </table>
</div>