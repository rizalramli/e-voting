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
                        <div class="row justify-content-center">
                            <?php foreach ($items as $item) : ?>
                                <div class="col-md-4">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4 class="text-center"><?php echo $item->name ?></h4>
                                        </div>
                                        <div class="card-body">
                                            <p>Card <code>.card-primary</code></p>
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

    <!-- panggil assets js -->
    <?php $this->load->view('layouts/js.php'); ?>
</body>

</html>