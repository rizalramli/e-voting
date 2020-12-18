<section class="section">
    <div class="section-header">
        <h1>Acara</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <a class="btn btn-primary" href="<?php echo base_url('events/create') ?>">Tambah</a>
            </div>
            <div class="card-body">
                <table width="100%" class="table table-sm table-striped" id="dataTables">
                    <thead>
                        <tr>
                            <th scope="col">Nama</th>
                            <th scope="col">Keterangan</th>
                            <th scope="col">Tanggal</th>
                            <th scope="col">Jam Mulai</th>
                            <th scope="col">Jam Selesai</th>
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($items as $item) : ?>
                            <tr>
                                <td><?php echo $item->name ?></td>
                                <td><?php echo $item->description ?></td>
                                <td><?php echo date('d F Y', strtotime($item->date))  ?></td>
                                <td><?php echo date('H:i', strtotime($item->start)) ?></td>
                                <td><?php echo date('H:i', strtotime($item->end)) ?></td>
                                <td>
                                    <?php if ($item->is_active == 1) {
                                        echo '<span class="badge badge-success">Finished</span>';
                                    } else {
                                        echo '<span class="badge badge-danger">Unfinished</span>';
                                    } ?>
                                </td>
                                <td>
                                    <a href="<?php echo base_url('events/' . $item->id . '/show') ?>" class="btn btn-sm btn-warning">Detail</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>