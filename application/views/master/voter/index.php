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
                            <th scope="col">No</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Email</th>
                            <th scope="col">Status Verifikasi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $i = 1;
                        foreach ($items as $item) :
                        ?>
                            <tr>
                                <td><?php echo $i ?></td>
                                <td><?php echo $item->name ?></td>
                                <td><?php echo $item->email ?></td>
                                <td>
                                    <?php if ($item->password == null) {
                                        echo '<span class="badge badge-danger">Belum</span>';
                                    } else {
                                        echo '<span class="badge badge-success">Sudah</span>';
                                    } ?>
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
</section>