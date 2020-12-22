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
                <?php
                if ($voting_id == 1) {
                    echo '<div class="col-md-12">';
                } else {
                    echo '<div class="col-md-7">';
                } ?>
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
                                        <th scope="col">Sah</th>
                                        <th scope="col">Tidak Sah</th>
                                        <th scope="col">Persentase</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($result_data as $item_data) :
                                        $sah = 0;
                                        foreach ($result_data_sah as $item_data2) :
                                            if ($item_data->candidate_id == $item_data2->candidate_id) {
                                                $sah = $item_data2->election_sah;
                                            }
                                        endforeach;
                                        $tidak_sah = 0;
                                        foreach ($result_data_tidak_sah as $item_data3) :
                                            if ($item_data->candidate_id == $item_data3->candidate_id) {
                                                $tidak_sah = $item_data3->election_tidak_sah;
                                            }
                                        endforeach;
                                        $percentage = 0;
                                        if ($election_sah > 0) {
                                            $percentage = ($sah * 100) / $election_sah;
                                        }
                                    ?>
                                        <tr>
                                            <td><?php echo $i ?></td>
                                            <td><?php echo $item_data->candidate_name ?></td>
                                            <td><?php echo $item_data->election_total ?></td>
                                            <td><?php echo $sah ?></td>
                                            <td><?php echo $tidak_sah ?></td>
                                            <td><b><?php echo $percentage . "%" ?></b></td>
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
                                <h6 class="ml-4 text-primary">Sah : <?php echo $election_sah ?></h6>
                                <h6 class="ml-4 text-primary">Tidak Sah : <?php echo $election_tidak_sah ?></h6>
                            </div>
                            <?php foreach ($result_data_party as $item_data_party) :
                                $sah = 0;
                                foreach ($result_data_party_sah as $item_data_party2) :
                                    if ($item_data_party->party_id == $item_data_party2->party_id) {
                                        $sah = $item_data_party2->election_sah;
                                    }
                                endforeach;
                                $tidak_sah = 0;
                                foreach ($result_data_party_tidak_sah as $item_data_party3) :
                                    if ($item_data_party->party_id == $item_data_party3->party_id) {
                                        $tidak_sah = $item_data_party3->election_tidak_sah;
                                    }
                                endforeach;
                                $percentage_party = 0;
                                if ($election_sah > 0) {
                                    $percentage_party = ($sah * 100) / $election_sah;
                                }
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
                                                <div class="card-text">Sah : <?php echo $sah ?> Tidak Sah :<?php echo $tidak_sah ?></div>
                                                <div class="card-text">Persentase : <b><?php echo $percentage_party ?> %</b></div>
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