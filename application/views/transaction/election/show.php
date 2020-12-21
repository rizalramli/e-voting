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
        <h3 class="text-center">Pemilihan BEM 2020</h3>
        <div class="row justify-content-center">
            <?php foreach ($items as $item) : ?>
                <div class="col-md-6">
                    <div class="card">
                        <div class="row py-2 px-2">
                            <div class="col-3 col-sm-3 col-lg-3 mb-1">
                                <div class="avatar-item mb-0">
                                    <img width="50px" height="50px" alt="image" src="<?php echo base_url('assets/photo/partai/nasdem.png') ?>" class="img-fluid" data-toggle="tooltip" title="Alfa Zulkarnain">
                                </div>
                            </div>
                            <div class="col-3 col-sm-3 col-lg-3 mb-1">
                                <div class="avatar-item mb-0">
                                    <img width="50px" height="50px" alt="image" src="<?php echo base_url('assets/photo/partai/pdip.jpeg') ?>" class="img-fluid" data-toggle="tooltip" title="Alfa Zulkarnain">
                                </div>
                            </div>
                            <div class="col-3 col-sm-3 col-lg-3 mb-1">
                                <div class="avatar-item mb-0">
                                    <img width="50px" height="50px" alt="image" src="<?php echo base_url('assets/photo/partai/nasdem.png') ?>" class="img-fluid" data-toggle="tooltip" title="Alfa Zulkarnain">
                                </div>
                            </div>
                            <div class="col-3 col-sm-3 col-lg-3 mb-1">
                                <div class="avatar-item mb-0">
                                    <img width="50px" height="50px" alt="image" src="<?php echo base_url('assets/photo/partai/pdip.jpeg') ?>" class="img-fluid" data-toggle="tooltip" title="Alfa Zulkarnain">
                                </div>
                            </div>
                        </div>

                        <img src="<?php echo base_url(); ?>assets/photo/kandidat/<?php echo $item->photo ?>" class="card-img-top">
                        <div class="card-body text-center">
                            <h3 class="card-title"><?php echo $item->number ?></h3>
                            <h6 class="card-title"><?php echo $item->name ?></h6>

                            <button onclick="storeElection(<?php echo $item->candidate_id ?>, '<?php echo $item->name ?>')" class="btn btn-primary stretched-link mt-3">Pilih</button>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</section>

<script>
    function storeElection(candidate_id, name) {
        var result = confirm("Anda Ingin Memilih Kandidat " + name + " ?");
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
                        alert('Berhasil Memilih Kandidat');
                        window.history.back();
                    } else {
                        alert('Gagal Melakukan Pemilihan');
                    }

                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('Error adding / update data');
                }
            });
        }
    }
</script>