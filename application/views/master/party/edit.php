<section class="section">
    <div class="section-header">
        <h1>Tambah Partai</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-body">
                <form action="<?php echo base_url('party/update') ?>" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <!-- hidden -->
                                        <input type="hidden" name="party_id" value="<?php echo $item->party_id ?>">
                                        <input type="hidden" name="old_photo" value="<?php echo $item->photo ?>">

                                        <label for="name">Nama</label>
                                        <input type="text" name="name" class="form-control form-control-sm" id="name" value="<?php echo $item->name ?>">
                                        <span class="text-danger"><?php echo form_error('name'); ?></span>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="photo">Photo</label>
                                        <input type="file" name="photo" class="form-control form-control-sm" id="photo" onchange="document.getElementById('photo_preview').src = window.URL.createObjectURL(this.files[0])">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 text-center">
                            <label for="">Preview Photo</label>
                            <div class="form-group">
                                <img id="photo_preview" alt="&nbsp;" width="150" height="150" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Update</button>
                                <a href="<?php echo base_url('party') ?>" class="btn btn-default">Batal</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>