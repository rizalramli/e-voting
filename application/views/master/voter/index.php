<section class="section">
    <div class="section-header">
        <h1>Data Pemilih</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <form action="<?php echo base_url('voter/sendEmail') ?>" method="post">
                    <button type="submit" class="btn btn-primary">Send Email</button>
                </form>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table width="100%" class="table table-sm table-striped" id="dataTables">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Email</th>
                                <th scope="col">Status Verifikasi</th>
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
                                    <td class="align-middle"><?php echo $item->email ?></td>
                                    <td class="align-middle">
                                        <?php if ($item->password == null) {
                                            echo '<span class="badge badge-danger">Belum</span>';
                                        } else {
                                            echo '<span class="badge badge-success">Sudah</span>';
                                        } ?>
                                    </td>
                                    <td class="align-middle">
                                        <a href="<?php echo base_url('voter/' . $item->email . '/sendEmailByEmail') ?>" class="btn btn-sm btn-warning">Send</a>
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