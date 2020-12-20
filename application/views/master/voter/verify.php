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
        <section class="section">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h4>Verifikasi Email</h4>
                            </div>

                            <div class="card-body">
                                <form action="<?php echo base_url('verify/submit/store') ?>" method="post">
                                    <div class="form-group">
                                        <div class="d-block">
                                            <label for="name">Nama</label>
                                        </div>
                                        <input type="text" name="email" value="<?php echo $email ?>">
                                        <input id="name" type="text" class="form-control form-control-sm" name="name" value="<?php echo set_value('name') ?>">
                                        <span class="text-danger"><?php echo form_error('name'); ?></span>
                                    </div>

                                    <div class="form-group">
                                        <div class="d-block">
                                            <label for="password">Password</label>
                                        </div>
                                        <input id="password" type="password" class="form-control form-control-sm" name="password">
                                        <div class="custom-control custom-checkbox mt-2">
                                            <input onclick="myFunction()" type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">
                                            <label class="custom-control-label" for="remember-me">Show Password</label>
                                        </div>
                                        <span class="text-danger"><?php echo form_error('password'); ?></span>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block" tabindex="4">
                                            Verify
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- panggil assets js -->
    <?php $this->load->view('layouts/js.php'); ?>
    <script>
        function myFunction() {
            var x = document.getElementById("password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</body>

</html>