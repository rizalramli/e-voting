<section class="section">
    <div class="section-header">
        <h1><?php echo $title ?></h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <a class="btn btn-danger" href="<?php echo base_url('recapitulation') ?>">Kembali</a>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="row">
                                    <h6 class="ml-4 text-primary">Total Pemilih : <?php echo $election_grand_total ?></h6>
                                    <h6 class="ml-4 text-primary">Sah : <?php echo $election_sah ?></h6>
                                    <h6 class="ml-4 text-primary">Tidak Sah : <?php echo $election_tidak_sah ?></h6>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table width="100%" class="table table-sm table-striped dataTables">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Jumlah Suara</th>
                                            <th scope="col">Persentase</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($result_data as $item_data) :
                                            $percentage = ($item_data->election_total * 100) / $election_grand_total;
                                        ?>
                                            <tr>
                                                <td><?php echo $i ?></td>
                                                <td><?php echo $item_data->candidate_name ?></td>
                                                <td><?php echo $item_data->election_total ?></td>
                                                <td><?php echo $percentage . "%" ?></td>
                                            </tr>
                                        <?php
                                            $i++;
                                        endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <?php if ($voting_id != 1) { ?>
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <h6 class="ml-4 text-primary">Total Pemilih : <?php echo $election_grand_total ?></h6>
                                    <h6 class="ml-4 text-primary">Sah : 999</h6>
                                    <h6 class="ml-4 text-primary">Tidak Sah : 999</h6>
                                </div>
                                <?php foreach ($result_data_party as $item_data_party) :
                                    $percentage_party = ($item_data_party->election_total * 100) / $election_grand_total;
                                ?>
                                    <div class="card">
                                        <div class="row no-gutters">
                                            <div class="col-sm-4">
                                                <table width="100%">
                                                    <tr>
                                                        <td align="center">
                                                            <img width="137px" height="137px" src="<?php echo base_url('assets/photo/partai/' . $item_data_party->party_photo) ?>" alt="...">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="card-body">
                                                    <h5 class="card-title"><?php echo $item_data_party->party_name ?></h5>
                                                    <p class="card-text"><?php echo $item_data_party->election_total ?> Suara / <?php echo $percentage_party ?> %</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>