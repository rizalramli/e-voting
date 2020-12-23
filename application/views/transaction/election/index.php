<style>
  .navbar-bg {
    height: 65px !important;
  }

  body.layout-3 .main-content {
    padding-top: 120px;
  }

  body.layout-3 .navbar.navbar-secondary {
    all: revert;
  }
</style>
<section class="section">
  <div class="section-body">

    <?php
    if ($attachment == "") {
    ?>

      <div class="card">
        <div class="card-body">
          <form action="<?php echo base_url('transaction/ElectionController/sendImage') ?>" method="post" enctype="multipart/form-data">
            <div class="row">
              <div class="col-md-12 text-center">
                <label for="">Preview Image</label>
                <div class="form-group">
                  <img id="attachment_preview" alt="&nbsp;" width="150" height="150" />
                </div>
                <div class="form-group">
                  <label for="attachment">Foto Pemilih : </label>
                  <input required accept="image/*" type="file" name="attachment" class="form-control form-control-sm" id="attachment" onchange="document.getElementById('attachment_preview').src = window.URL.createObjectURL(this.files[0])">
                </div>
                <div class="form-group">
                  <button type="submit" class="btn btn-primary">Simpan Gambar</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>

    <?php
    }
    ?>

    <div class="row">

      <?php
      $j = 0;
      foreach ($items as $item) : ?>
        <div class="col-md-4">
          <div class="card card-hero">
            <div class="card-header">
              <div class="card-icon">
                <i class="far fa-user-circle"></i>
              </div>
              <h5><?php echo $item->name ?></h5>
            </div>
            <div class="card-body p-0">
              <div class="tickets-list">
                <div class="ticket-item">
                  <div class="ticket-title text-center">
                    <h4>
                      <?php echo date('d F Y', strtotime($item->date))  ?>
                    </h4>
                    <h4>
                      <?php echo date('H:i', strtotime($item->start)) . " - " . date('H:i', strtotime($item->end)) ?>
                    </h4>

                    <?php
                    $i = 0;
                    $election_validation = '<span class="badge badge-danger">Belum Memilih</span>';
                    $done = false;

                    foreach ($election_item as $item2) :

                      if ($item->voting_id == $item2->voting_id) {
                        $election_validation = '<span class="badge badge-success">Sudah Memilih</span>';
                        $done = true;
                      }

                      $i++;
                    endforeach;

                    if ($i == 0) {
                      $election_validation = '<span class="badge badge-danger">Belum Memilih</span>';
                    }

                    echo $election_validation;
                    ?>

                  </div>

                  <?php
                  if ($attachment != "") {
                    if (!$done) {
                  ?>
                      <!-- jika belum memilih -->
                      <a href="<?php echo base_url('election/' . $item->voting_id . '/show') ?>" class="ticket-item ticket-more">
                        Lihat Kandidat <i class="fas fa-chevron-right"></i>
                      </a>

                    <?php
                    } else {
                    ?>
                      <!-- jika sudah memilih -->
                      <div class="ticket-item ticket-more">
                        &nbsp;
                      </div>

                  <?php
                    }
                  }
                  ?>

                </div>
              </div>
            </div>
          </div>
        </div>

      <?php $j++;
      endforeach;
      if ($j == 0) {
        echo '<div class="col-md-12">
        <div class="text-center">
          <h3>Pemilihan Telah Berakhir !</h3>
        </div>
      </div>';
      }
      ?>

    </div>
  </div>
</section>