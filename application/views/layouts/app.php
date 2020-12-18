<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Voting</title>
    <!-- panggil assets CSS -->
    <?php $this->load->view('layouts/css.php'); ?>
</head>

<body>
    <div id="app">
        <div class="main-wrapper">
            <div class="navbar-bg"></div>
            <nav class="navbar navbar-expand-lg main-navbar">
                <form class="form-inline mr-auto">
                    <ul class="navbar-nav mr-3">
                        <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
                        <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
                    </ul>
                </form>
                <ul class="navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                            <div class="d-sm-none d-lg-inline-block">Hi, Voters</div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a href="features-settings.html" class="dropdown-item has-icon">
                                <i class="fas fa-cog"></i> Settings
                            </a>
                            <a class="dropdown-item has-icon text-danger" href="">
                                <i class="fas fa-sign-out-alt"></i> Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>

            <?php $this->load->view('layouts/sidebar.php'); ?>

            <!-- Main Content -->
            <div class="main-content">
                <?php echo $contents; ?>
            </div>
            <footer class="main-footer">
                <div class="footer-center">
                    @Xenopati
                </div>
            </footer>
        </div>
    </div>
    <!-- panggil assets js -->
    <?php $this->load->view('layouts/js.php'); ?>
</body>

</html>