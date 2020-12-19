<section class="section">
    <div class="section-header">
        <h1>Tambah Acara</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-body">
                <form action="<?php echo base_url('voting/store') ?>" method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="name">Nama</label>
                                <input type="text" name="name" class="form-control form-control-sm" id="name" value="<?php echo set_value('name') ?>">
                                <span class="text-danger"><?php echo form_error('name'); ?></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="date">Tanggal</label>
                                <input type="text" name="date" class="form-control form-control-sm tanggal" id="date" value="<?php echo set_value('date') ?>">
                                <span class="text-danger"><?php echo form_error('date'); ?></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="start">Jam Mulai</label>
                                <input type="text" name="start" class="form-control form-control-sm waktu" id="start" value="<?php echo set_value('start') ?>">
                                <span class="text-danger"><?php echo form_error('start'); ?></span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="end">Jam Selesai</label>
                                <input type="text" name="end" class="form-control form-control-sm waktu" id="end" value="<?php echo set_value('end') ?>">
                                <span class="text-danger"><?php echo form_error('end'); ?></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                                <a href="<?php echo base_url('voting') ?>" class="btn btn-default">Batal</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>