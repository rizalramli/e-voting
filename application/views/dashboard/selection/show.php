<section class="section">
    <div class="section-header">
        <h1><?php echo $title ?></h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <a class="btn btn-danger" href="<?php echo base_url('selection') ?>">Kembali</a>
                <h4 class="ml-4">Total Pemilih : <?php echo $election_grand_total ?></h4>
                <h4 class="ml-4">Sah : <?php echo $election_sah ?></h4>
                <h4 class="ml-4">Tidak Sah : <?php echo $election_tidak_sah ?></h4>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table width="100%" class="table table-sm table-striped" id="dataTables">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <?php if ($this->session->userdata("role") == "KPU") { ?>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Email</th>
                                <?php } ?>
                                <th scope="col">Waktu</th>
                                <th scope="col">Status</th>
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
                                    <?php if ($this->session->userdata("role") == "KPU") { ?>
                                        <td class="align-middle"><?php echo $item->name ?></td>
                                        <td class="align-middle"><?php echo $item->email ?></td>
                                    <?php } ?>
                                    <td class="align-middle"><?php echo $item->create_at ?></td>
                                    <td class="align-middle">
                                        <?php if ($item->election_status == 0) {
                                            echo '<span class="badge badge-danger">Tidak Sah</span>';
                                        } else {
                                            echo '<span class="badge badge-success">Sah</span>';
                                        } ?>
                                    </td>
                                    <?php if ($this->session->userdata("role") == "KPU") { ?>
                                        <td class="align-middle">
                                            <button class="btn btn-warning viewDetail" id="<?php echo $item->election_id ?>">View</button>
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
<!-- Modal Detail -->
<div class="modal fade" tabindex="-1" role="dialog" id="detail-modal" data-backdrop="false">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Detail Foto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input type="hidden" id="election_id" name="election_id">
                <table>
                    <table width="100%" border="1">
                        <tr>
                            <td align="center">
                                <img width="300px" height="300px" alt="image" id="election_photo">
                            </td>
                        </tr>
                    </table>
                    <h4 class="text-center mt-2" id="name_voter"></h4>
                </table>
            </div>
            <div class="modal-footer bg-whitesmoke br">
                <button class="btn btn-success" id="ubahSah">Sah</button>
                <button class="btn btn-danger" id="ubahTidakSah">Tidak Sah</button>
            </div>
        </div>
    </div>
</div>
<!-- AKHIR MODAL -->
<script src="<?php echo base_url(); ?>assets/stisla/download_js/jquery-3.3.1.min.js"></script>
<script>
    $('.viewDetail').click(function() {
        data_id = $(this).attr('id');
        $.ajax({
            url: "<?php echo base_url('selection/edit_selection/') ?>" + data_id,
            type: "GET",
            dataType: "JSON",
            success: function(data) {
                $('#detail-modal').modal('show');
                $('#election_id').val(data.election_id);
                $('#election_photo').attr('src', '<?php echo base_url('assets/photo/attachment/') ?>' + data.election_photo);
                $('#name_voter').text(data.name_voter);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('Error get data from ajax');
            }
        });
    });

    $('#ubahTidakSah').click(function() {
        var election_id = $('#election_id').val()
        $.ajax({
            url: "<?php echo base_url() . 'selection/update_selection/tidak_sah'; ?>",
            type: 'post',
            data: {
                election_id: election_id
            },
            dataType: "JSON",
            success: function(data) {
                if (data.status) {
                    alert('Berhasil update tidak sah');
                    location.reload();
                } else {
                    alert(' Gagal Melakukan update');
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('Error adding / update data');
            }
        });

    });
    $('#ubahSah').click(function() {
        var election_id = $('#election_id').val()
        $.ajax({
            url: "<?php echo base_url() . 'selection/update_selection/sah'; ?>",
            type: 'post',
            data: {
                election_id: election_id
            },
            dataType: "JSON",
            success: function(data) {
                if (data.status) {
                    alert('Berhasil update sah');
                    location.reload();
                } else {
                    alert(' Gagal Melakukan update');
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('Error adding / update data');
            }
        });

    });
</script>