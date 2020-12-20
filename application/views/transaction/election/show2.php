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
            padding-top: 100px;
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
                            <div class="d-sm-none d-lg-inline-block">Hi, <?php echo $this->session->userdata('username'); ?></div>
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
                        <div class="float-left">
                            <button class="btn btn-danger" onclick="goBack()">Kembali</button>
                        </div>
                        <h3 class="text-center">Pemilihan DPM 2020</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="avatar-item mb-0">
                                            <img width="100px" height="100px" alt="image" src="<?php echo base_url('assets/photo/partai/nasdem.png') ?>" class="img-fluid" data-toggle="tooltip" title="Alfa Zulkarnain">
                                        </div>
                                        <h6 class="card-title mt-2">Partai A</h6>
                                        <ul class="list-group">
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                1. Paslon No 1
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                2. Paslon No 2
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                3. Paslon No 3
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="avatar-item mb-0">
                                            <img width="100px" height="100px" alt="image" src="<?php echo base_url('assets/photo/partai/pdip.jpeg') ?>" class="img-fluid" data-toggle="tooltip" title="Alfa Zulkarnain">
                                        </div>
                                        <h6 class="card-title mt-2">Partai B</h6>
                                        <ul class="list-group">
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                1. Paslon No 1
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                2. Paslon No 2
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                3. Paslon No 3
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="avatar-item mb-0">
                                            <img width="100px" height="100px" alt="image" src="<?php echo base_url('assets/photo/partai/nasdem.png') ?>" class="img-fluid" data-toggle="tooltip" title="Partai C">
                                        </div>
                                        <h6 class="card-title mt-2">Partai C</h6>
                                        <ul class="list-group">
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                1. Paslon No 1
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                2. Paslon No 2
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                3. Paslon No 3
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="avatar-item mb-0">
                                            <img width="100px" height="100px" alt="image" src="<?php echo base_url('assets/photo/partai/pdip.jpeg') ?>" class="img-fluid" data-toggle="tooltip" title="Alfa Zulkarnain">
                                        </div>
                                        <h6 class="card-title mt-2">Partai D</h6>
                                        <ul class="list-group">
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                1. Paslon No 1
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                2. Paslon No 2
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                3. Paslon No 3
                                                <button onclick="" class="btn btn-primary">Pilih</button>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
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
                    <a href="<?php echo base_url('logout_voter') ?>" class="btn btn-primary">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- end modal -->

    <!-- panggil assets js -->
    <?php $this->load->view('layouts/js.php'); ?>

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
</body>

</html>