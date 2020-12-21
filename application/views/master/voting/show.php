<section class="section">
    <div class="section-header">
        <h1>Detail Acara</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <h4>Detail Acara</h4>
                <div class="card-header-action">
                    <a href="javascript:void(0)" class="btn btn-warning" onclick="editVoting(<?php echo $item->voting_id ?>)">Edit</a>
                    <a href="<?php echo base_url('voting') ?>" class="btn btn-danger">Kembali</a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h6>Nama</h6>
                        <?php echo $item->name ?>
                    </div>
                    <div class="col">
                        <h6>Tanggal</h6>
                        <?php echo date('d F Y', strtotime($item->date)) ?>
                    </div>
                    <div class="col">
                        <h6>Jam Mulai</h6>
                        <?php echo date('H:i', strtotime($item->start)) ?>
                    </div>
                    <div class="col">
                        <h6>Jam Selesai</h6>
                        <?php echo date('H:i', strtotime($item->end)) ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h4>Kandidat</h4>
                <div class="card-header-action">
                    <a class="btn btn-primary" href="<?php echo base_url('candidate/' . $item->voting_id . '/create') ?>">Tambah</a>
                    <a data-collapse="#mycard-collapse" class="btn btn-icon btn-info" href="#">Show</a>
                </div>
            </div>
            <div class="collapse hidden" id="mycard-collapse">
                <div class="card-body">
                    <div class="table-responsive">
                        <table width="100%" class="table table-sm table-striped dataTables">
                            <thead>
                                <tr>
                                    <th scope="col">Nomor Urut</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Foto</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($candidate_item as $item) : ?>
                                    <tr>
                                        <td class="align-middle"><?php echo $item->number ?></td>
                                        <td class="align-middle"><?php echo $item->name ?></td>
                                        <td class="align-middle">
                                            <img width="100px" height="100px" src="<?php echo base_url(); ?>assets/photo/kandidat/<?php echo $item->photo ?>" alt="">
                                        </td>
                                        <td class="align-middle">
                                            <a href="<?php echo base_url('candidate/' . $item->candidate_id . '/edit') ?>" class="btn btn-sm btn-warning">Edit</a>
                                            <a href="<?php echo base_url('candidate/' . $item->candidate_id . '/delete') ?>" class="btn btn-sm btn-danger">Hapus</a>
                                        </td>
                                    </tr>
                                <?php endforeach ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Modal Edit -->
<div class="modal fade" id="modal-form-voting" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Acara</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="form-voting">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="name">Nama</label>
                                <input type="hidden" name="voting_id">
                                <input type="text" name="name" class="form-control form-control-sm" id="name" value="<?php echo set_value('name') ?>">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="date">Tanggal</label>
                                <input type="text" name="date" class="form-control form-control-sm tanggal" id="date" value="<?php echo set_value('date') ?>">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="start">Jam Mulai</label>
                                <input type="text" name="start" class="form-control form-control-sm waktu" id="start" value="<?php echo set_value('start') ?>">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="end">Jam Selesai</label>
                                <input type="text" name="end" class="form-control form-control-sm waktu" id="end" value="<?php echo set_value('end') ?>">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                <button type="button" class="btn btn-primary" onclick="updateVoting()">Update</button>
            </div>
            </form>
        </div>
    </div>
</div>
<!-- end modal -->

<script>
    function editVoting(id) {
        $('.form-group').removeClass('has-error');
        $('.help-block').empty();

        $.ajax({
            url: "<?php echo base_url('voting/edit/') ?>" + id,
            type: "GET",
            dataType: "JSON",
            success: function(data) {
                $('[name="voting_id"]').val(data.voting_id);
                $('[name="name"]').val(data.name);
                $('[name="date"]').val(data.date);
                $('[name="start"]').val(data.start);
                $('[name="end"]').val(data.end);
                $('#modal-form-voting').modal('show');
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('Error get data from ajax');
            }
        });
    }

    function updateVoting() {
        $.ajax({
            url: "<?php echo base_url('voting/update') ?>",
            type: "POST",
            data: $('#form-voting').serialize(),
            dataType: "JSON",
            success: function(data) {

                if (data.status) {
                    location.reload();
                    $('#modal-form-voting').modal('hide');
                } else {
                    for (var i = 0; i < data.inputerror.length; i++) {
                        $('[name="' + data.inputerror[i] + '"]').parent().parent().addClass('has-error');
                        $('[name="' + data.inputerror[i] + '"]').next().text(data.error_string[i]);
                    }
                }

            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('Error adding / update data');

            }
        });
    }
</script>