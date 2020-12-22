<style>
    .navbar-bg {
        height: 65px !important;
    }

    body.layout-3 .main-content {
        padding-top: 100px;
    }

    body.layout-3 .navbar.navbar-secondary {
        all: revert;
    }
</style>

<section class="section">
    <div class="section-body">
        <div class="float-left">
            <button class="btn btn-danger" onclick="goBack()">Kembali</button>
        </div>
        <h3 class="text-center mb-4"><?php echo $title ?></h3>
        <div class="row">

            <?php foreach ($party_item as $item) : ?>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="avatar-item mb-0">
                                <table width="100%">
                                    <tr>
                                        <td align="center">
                                            <img onclick="storeElectionParty(<?php echo $item->party_id ?>, '<?php echo $item->party_name ?>', '<?php echo $item->voting_id ?>')" width="80px" height="80px" alt="image" src="<?php echo base_url('assets/photo/partai/' . $item->party_photo) ?>" title="<?php echo $item->party_name ?>">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <h6 class="card-title mt-2"><?php echo $item->party_name ?></h6>
                            <ul class="list-group">
                                <?php
                                foreach ($member_item as $item2) :
                                    if ($item->party_id == $item2->party_id) {
                                ?>
                                        <li class="list-group-item">
                                            <table width="100%">
                                                <tr>
                                                    <td align="left" width="2%"><?php echo $item2->number ?>.
                                                    </td>
                                                    <td align="left" width="13%">
                                                        <a href="" data-toggle="modal" data-target="#exampleModal<?php echo $item2->candidate_id ?>">
                                                            <img class="ml-3 mr-2 rounded px-0" width="30" height="30" src="<?php echo base_url('assets/photo/kandidat/' . $item2->candidate_photo) ?>" alt="">
                                                        </a>
                                                    </td>
                                                    <td align="left" width="75%"><?php echo $item2->candidate_name ?></td>
                                                    <td width="10%" align="right"><button onclick="storeElection(<?php echo $item2->candidate_id ?>, '<?php echo $item2->candidate_name ?>')" class="btn btn-primary">Pilih</button></td>
                                                </tr>
                                            </table>

                                        </li>
                                <?php
                                    }
                                endforeach
                                ?>
                            </ul>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>

        </div>
    </div>
</section>
<?php foreach ($party_item as $item) : ?>
    <?php
    foreach ($member_item as $item2) :
        if ($item->party_id == $item2->party_id) {
    ?>
            <div class="modal fade" id="exampleModal<?php echo $item2->candidate_id ?>" data-backdrop="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Detail Foto</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <table>
                                <table width="100%">
                                    <tr>
                                        <td align="center">
                                            <img width="300px" height="300px" src="<?php echo base_url('assets/photo/kandidat/' . $item2->candidate_photo) ?>" alt="image" id="election_photo">
                                        </td>
                                    </tr>
                                </table>
                                <h4 class="text-center mt-2"><?php echo $item2->candidate_name ?></h4>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
    <?php
        }
    endforeach; ?>

<?php endforeach ?>
<!-- Modal Logout -->

<!-- end modal -->
<script>
    function storeElection(candidate_id, name) {
        var result = confirm(" Anda Ingin Memilih Kandidat " + name + " ?");
        if (result) {
            $.ajax({
                url: "<?php echo base_url() . 'election/store'; ?>",
                type: 'post',
                data: {
                    candidate_id: candidate_id
                },
                dataType: "JSON",
                success: function(data) {
                    if (data.status) {
                        alert('Berhasil Memilih Kandidat ' + name);
                        window.history.back();
                    } else {
                        alert(' Gagal Melakukan Pemilihan');
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('Error adding / update data');
                }
            });
        }
    }

    function storeElectionParty(party_id, name, voting_id) {
        var result = confirm("Anda Ingin Memilih Partai " + name + " ?");
        if (result) {
            $.ajax({
                url: "<?php echo base_url() . 'transaction/ElectionController/storeOnPartyAjax'; ?>",
                type: 'post',
                data: {
                    party_id: party_id,
                    voting_id: voting_id
                },
                dataType: "JSON",
                success: function(data) {
                    if (data.status) {
                        alert('Berhasil Memilih Kandidat ' + data.candidate_name);
                        window.history.back();
                    } else {
                        alert(' Gagal Melakukan Pemilihan');
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('Error adding / update data');
                }
            });
        }
    }
</script>