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
                <div class="table-responsive">
                    <table width="100%" class="table table-sm table-striped" id="dataTables">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Photo</th>
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
                                    <td class="align-middle"><img width="100px" height="100px" src="<?php echo base_url(); ?>assets/photo/partai/<?php echo $item->photo ?>" alt=""></td>
                                    <td class="align-middle">
                                        <a href="<?php echo base_url('party/' . $item->party_id . '/edit') ?>" class="btn btn-sm btn-warning">Edit</a>
                                        <a href="<?php echo base_url('party/' . $item->party_id . '/delete') ?>" class="btn btn-sm btn-danger">Delete</a>
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