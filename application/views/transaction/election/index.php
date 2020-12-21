<style>
  .navbar-bg {
    height: 65px !important;
  }

  body.layout-3 .main-content {
    padding-top: 210px;
  }

  body.layout-3 .navbar.navbar-secondary {
    all: revert;
  }
</style>
<section class="section">
  <div class="section-body">
    <div class="row">

      <?php foreach ($items as $item) : ?>
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
                  ?>

                </div>
              </div>
            </div>
          </div>
        </div>
      <?php endforeach ?>

    </div>
  </div>
</section>