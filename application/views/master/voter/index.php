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
                <table width="100%" class="table table-sm table-striped" id="dataTables">
                    <thead>
                        <tr>
                            <th scope="col">Nama</th>
                            <th scope="col">Email</th>
                            <th scope="col">Status Verifikasi</th>
                            <th scope="col">Status Pilihan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($items as $item) : ?>
                            <tr>
                                <td><?php echo $item->name ?></td>
                                <td><?php echo $item->email ?></td>
                                <td>
                                    <?php if ($item->password == null) {
                                        echo '<span class="badge badge-danger">Belum</span>';
                                    } else {
                                        echo '<span class="badge badge-success">Sudah</span>';
                                    } ?>
                                </td>
                                <td>
                                <?php if ($item->voter_status == 1) {
                                        echo '<span class="badge badge-success">Sudah</span>';
                                    } else {
                                        echo '<span class="badge badge-danger">Belum</span>';
                                    } ?>
                                </td>
                                
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>