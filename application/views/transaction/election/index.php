<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>E-Voting</title>

  <!-- General CSS Files -->
  <?php $this->load->view('layouts/css.php'); ?>
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

</head>


<body class="layout-3">
  <div id="app">
    <div class="main-wrapper container">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
        <h3 class="text-white">E-Voting</h3>
        <div class="div-inline mr-auto">
        </div>
        <ul class="navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
              <img alt="image" src="<?php echo base_url('assets/stisla/icons/avatar-1.png') ?>" class="rounded-circle mr-1">
              <div class="d-sm-none d-lg-inline-block">Hi, <?php echo $this->session->userdata('name'); ?></div>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
              <a class="dropdown-item has-icon text-danger" href="" data-toggle="modal" data-target="#exampleModal">
                <i class="fas fa-sign-out-alt"></i> Logout
              </a>
            </div>

          </li>
        </ul>
      </nav>

      <nav class="navbar navbar-secondary"></nav>

      <!-- Main Content -->
      <div class="main-content">
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
      </div>
      <footer class="main-footer">
        <div class="footer-left">
          @Xenopati
        </div>
      </footer>
    </div>
  </div>

  <!-- Modal Logout -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Konfirmasi</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <span>Apakah anda yakin ingin logout?</span>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
          <a href="<?php echo base_url('logout') ?>" class="btn btn-primary">Logout</a>
        </div>
      </div>
    </div>
  </div>
  <!-- end modal -->

  <!-- panggil assets js -->
  <?php $this->load->view('layouts/js.php'); ?>

</body>

</html>