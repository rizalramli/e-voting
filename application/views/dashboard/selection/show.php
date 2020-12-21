<section class="section">
    <div class="section-header">
        <h1><?php echo $title ?></h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <a class="btn btn-danger" href="<?php echo base_url('selection') ?>">Kembali</a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table width="100%" class="table table-sm table-striped" id="dataTables">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Waktu</th>
                                <?php if ($this->session->userdata("role") == "KPU") { ?>
                                    <th scope="col">Action</th>
                                <?php } ?>
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
                                    <td class="align-middle">waktu</td>
                                    <?php if ($this->session->userdata("role") == "KPU") { ?>
                                        <td class="align-middle">
                                            <a href="" class="btn btn-warning">View</a>
                                        </td>
                                    <?php } ?>
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