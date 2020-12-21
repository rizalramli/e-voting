<section class="section">
    <div class="section-header">
        <h1>Acara</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <a class="btn btn-primary" href="<?php echo base_url('voting/create') ?>">Tambah</a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table width="100%" class="table table-sm table-striped" id="dataTables">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Tanggal</th>
                                <th scope="col">Jam Mulai</th>
                                <th scope="col">Jam Selesai</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            foreach ($items as $item) :
                            ?>
                                <tr>
                                    <td class="align-middle"><?php echo $i ?></td>
                                    <td class="align-middle"><?php echo $item->name ?></td>
                                    <td class="align-middle"><?php echo date('d F Y', strtotime($item->date)) ?></td>
                                    <td class="align-middle"><?php echo date('H:i', strtotime($item->start)) ?></td>
                                    <td class="align-middle"><?php echo date('H:i', strtotime($item->end)) ?></td>
                                    <td class="align-middle">
                                        <a href="<?php echo base_url('voting/' . $item->voting_id . '/show') ?>" class="btn btn-sm btn-warning">Detail</a>
                                    </td>
                                </tr>
                            <?php
                                $i++;
                            endforeach
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>