<section class="section">
    <div class="section-header">
        <h1>Rekapitulasi</h1>
    </div>

    <div class="section-body">
        <div class="row">
            <?php foreach ($items as $item) : ?>
                <div class="col-md-4">
                    <div class="card card-hero">
                        <div class="card-header">
                            <div class="card-icon">
                                <i class="fas fa-box"></i>
                            </div>
                            <h5>
                                <?php echo $item->name ?>
                            </h5>
                        </div>
                        <div class="card-body p-0">
                            <div class="tickets-list">
                                <div class="ticket-item">
                                    <!-- jika belum memilih -->
                                    <a href="<?php echo base_url('recapitulation/' . $item->voting_id . '/show_recapitulation') ?>" class="ticket-item ticket-more">
                                        Lihat Hasil <i class="fas fa-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>
<!-- <section class="section">
    <div class="section-header">
        <h1>Rekapitulasi</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="container mt-3 mb-3">
                <div class="row">
                    <div class="col-md-3">
                        <select name="pilihan" id="pilihan" class="form-control" onchange="myFunction()">
                            <option value=""> -Pilih- </option>
                            <option value="bem">BEM</option>
                            <option value="blm">BLM</option>
                            <option value="dlm">DLM</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div id="bem" class="d-none">
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil BEM</h5>
                            <h6 class="text-center">Suara Masuk : <?php echo $election_grand_total_bem ?></h6>
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
                                    foreach ($result_data_bem as $item_data_bem) :
                                        $percentage_bem = ($item_data_bem->election_total * 100) / $election_grand_total_bem;
                                    ?>
                                        <tr>
                                            <td><?php echo $i ?></td>
                                            <td><?php echo $item_data_bem->candidate_name ?></td>
                                            <td><?php echo $item_data_bem->election_total ?></td>
                                            <td><?php echo $percentage_bem . "%" ?></td>
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
        </div>

        <div id="blm" class="d-none">
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil BLM</h5>
                            <h6 class="text-center">Suara Masuk : <?php echo $election_grand_total_blm ?></h6>
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
                                    foreach ($result_data_blm as $item_data_blm) :
                                        $percentage_blm = ($item_data_blm->election_total * 100) / $election_grand_total_blm;
                                    ?>
                                        <tr>
                                            <td><?php echo $i ?></td>
                                            <td><?php echo $item_data_blm->candidate_name ?></td>
                                            <td><?php echo $item_data_blm->election_total ?></td>
                                            <td><?php echo $percentage_blm . "%" ?></td>
                                        </tr>
                                    <?php
                                        $i++;
                                    endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil Partai</h5>
                            <h6 class="text-center">Suara Masuk : <?php echo $election_grand_total_blm ?></h6>
                            <?php foreach ($result_data_party_blm as $item_data_party_blm) :
                                $percentage_party_blm = ($item_data_party_blm->election_total * 100) / $election_grand_total_blm;
                            ?>
                                <div class="card">
                                    <div class="row no-gutters">
                                        <div class="col-sm-4" style="background: #868e96;">
                                            <img width="70px" height="70x" src="<?php echo base_url('assets/photo/partai/' . $item_data_party_blm->party_photo) ?>" class="card-img-top h-100" alt="...">
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="card-body">
                                                <h5 class="card-title"><?php echo $item_data_party_blm->party_name ?></h5>
                                                <p class="card-text"><?php echo $item_data_party_blm->election_total ?> Suara / <?php echo $percentage_party_blm ?> %</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="dlm" class="d-none">
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil DLM</h5>
                            <h6 class="text-center">Suara Masuk : <?php echo $election_grand_total_dlm ?></h6>
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
                                    foreach ($result_data_dlm as $item_data_dlm) :
                                        $percentage_dlm = ($item_data_dlm->election_total * 100) / $election_grand_total_dlm;
                                    ?>
                                        <tr>
                                            <td><?php echo $i ?></td>
                                            <td><?php echo $item_data_dlm->candidate_name ?></td>
                                            <td><?php echo $item_data_dlm->election_total ?></td>
                                            <td><?php echo $percentage_dlm . "%" ?></td>
                                        </tr>
                                    <?php
                                        $i++;
                                    endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil Partai</h5>
                            <h6 class="text-center">Suara Masuk : <?php echo $election_grand_total_dlm ?></h6>
                            <?php foreach ($result_data_party_dlm as $item_data_party_dlm) :
                                $percentage_party_dlm = ($item_data_party_dlm->election_total * 100) / $election_grand_total_dlm;
                            ?>
                                <div class="card">
                                    <div class="row no-gutters">
                                        <div class="col-sm-4" style="background: #868e96;">
                                            <img width="70px" height="70x" src="<?php echo base_url('assets/photo/partai/' . $item_data_party_dlm->party_photo) ?>" class="card-img-top h-100" alt="...">
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="card-body">
                                                <h5 class="card-title"><?php echo $item_data_party_dlm->party_name ?></h5>
                                                <p class="card-text"><?php echo $item_data_party_dlm->election_total ?> Suara / <?php echo $percentage_party_dlm ?> %</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    function myFunction() {
        var x = document.getElementById("pilihan").value;
        if (x == '') {
            $("#bem").addClass("d-none");
            $("#dlm").addClass("d-none");
            $("#blm").addClass("d-none");
        }
        if (x == 'bem') {
            $("#bem").removeClass("d-none");
            $("#dlm").addClass("d-none");
            $("#blm").addClass("d-none");
        }
        if (x == 'dlm') {
            $("#dlm").removeClass("d-none");
            $("#bem").addClass("d-none");
            $("#blm").addClass("d-none");
        }
        if (x == 'blm') {
            $("#blm").removeClass("d-none");
            $("#bem").addClass("d-none");
            $("#dlm").addClass("d-none");
        }
    }
</script> -->