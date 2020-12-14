<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>E-Voting</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- CSS Libraries -->

    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ url('stisla/css/style.css') }}">
    <link rel="stylesheet" href="{{ url('stisla/css/components.css') }}">

    <!-- General JS Scripts -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="{{ url('stisla/js/stisla.js') }}"></script>

    <!-- JS Libraies -->

    <!-- Template JS File -->
    <script src="{{ url('stisla/js/scripts.js') }}"></script>
    <script src="{{ url('stisla/js/custom.js') }}"></script>

    <!-- Page Specific JS File -->
</head>

<body class="layout-3">
    <div id="app">
        <div class="main-wrapper container">
            <div class="navbar-bg"></div>
            <nav class="navbar navbar-expand-lg main-navbar">
                <h3 class="text-white">E-Voting</h3>
            </nav>

            <nav class="navbar navbar-secondary navbar-expand-lg">
                <div class="container">
                    <h5>Pemilihan Ketua BEM 2015</h5>
                </div>
            </nav>

            <!-- Main Content -->
            <div class="main-content">
                <section class="section">
                    <div class="section-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="text-center mt-4">
                                        <h5>Nomor 1</h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                Foto Ketua
                                                <h6>Nama Ketua</h6>
                                            </div>
                                            <div class="col-md-6">
                                                Foto Wakil
                                                <h6>Nama Wakil</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center bg-whitesmoke">
                                        <button class="btn btn-warning">Detail</button>
                                        <button class="btn btn-primary">Pilih</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="text-center mt-4">
                                        <h5>Nomor 2</h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                Foto Ketua
                                                <h6>Nama Ketua</h6>
                                            </div>
                                            <div class="col-md-6">
                                                Foto Wakil
                                                <h6>Nama Wakil</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center bg-whitesmoke">
                                        <button class="btn btn-warning">Detail</button>
                                        <button class="btn btn-primary">Pilih</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="text-center mt-4">
                                        <h5>Nomor 3</h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                Foto Ketua
                                                <h6>Nama Ketua</h6>
                                            </div>
                                            <div class="col-md-6">
                                                Foto Wakil
                                                <h6>Nama Wakil</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center bg-whitesmoke">
                                        <button class="btn btn-warning">Detail</button>
                                        <button class="btn btn-primary">Pilih</button>
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
        </div>
        </footer>
    </div>
    </div>
</body>

</html>