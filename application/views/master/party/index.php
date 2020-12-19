<section class="section">
    <div class="section-header">
        <h1>Data Partai</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <a class="btn btn-primary" href="<?php echo base_url('party/create') ?>">Tambah</a>
            </div>
            <div class="card-body">
                <table width="100%" class="table table-sm table-striped" id="dataTables">
                    <thead>
                        <tr>
                            <th scope="col">Nama</th>
                            <th scope="col">Photo</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($items as $item) : ?>
                            <tr>
                                <td><?php echo $item->name ?></td>
                                <td><img width="100px" height="100px" src="<?php echo base_url(); ?>assets/photo/partai/<?php echo $item->photo ?>" alt=""></td>
                                <td>
                                    <a href="<?php echo base_url('party/' . $item->party_id . '/edit') ?>" class="btn btn-sm btn-warning">Edit</a>
                                    <a href="<?php echo base_url('party/' . $item->party_id . '/delete') ?>" class="btn btn-sm btn-danger">Delete</a>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>