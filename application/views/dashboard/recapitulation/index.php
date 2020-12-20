<section class="section">
    <div class="section-header">
        <h1>Rekapitulasi</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="container mt-3 mb-3">
                <div class="row">
                    <div class="col-md-3">
                        <select name="pilihan" id="pilihan" class="form-control" onchange="myFunction()">
                            <option value=""> -Pilih- </option>
                            <option value="bem">BEM</option>
                            <option value="dlm">DLM</option>
                            <option value="blm">BLM</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div id="bem" class="d-none">
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil</h5>
                            <table width="100%" class="table table-sm table-striped dataTables">
                                <thead>
                                    <tr>
                                        <th scope="col">Nama</th>
                                        <th scope="col">Jumlah Suara</th>
                                        <th scope="col">Persentase</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="bg-success text-white">
                                        <td>Paslon 1</td>
                                        <td>70</td>
                                        <td>70%</td>
                                    </tr>
                                    <tr>
                                        <td>Paslon 2</td>
                                        <td>30</td>
                                        <td>30%</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="dlm" class="d-none">
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil</h5>
                            <table width="100%" class="table table-sm table-striped dataTables">
                                <thead>
                                    <tr>
                                        <th scope="col">Nama</th>
                                        <th scope="col">Jumlah Suara</th>
                                        <th scope="col">Persentase</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="bg-success text-white">
                                        <td>Paslon 1</td>
                                        <td>70</td>
                                        <td>70%</td>
                                    </tr>
                                    <tr>
                                        <td>Paslon 2</td>
                                        <td>30</td>
                                        <td>30%</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil Partai</h5>
                            <div class="card">
                                <div class="row no-gutters">
                                    <div class="col-sm-4" style="background: #868e96;">
                                        <img width="70px" height="70x" src="<?php echo base_url('assets/photo/partai/nasdem.png') ?>" class="card-img-top h-100" alt="...">
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="card-body">
                                            <h5 class="card-title">Alice Liddel</h5>
                                            <p class="card-text">70 Suara / 70 %</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="blm" class="d-none">
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil</h5>
                            <table width="100%" class="table table-sm table-striped dataTables">
                                <thead>
                                    <tr>
                                        <th scope="col">Nama</th>
                                        <th scope="col">Jumlah Suara</th>
                                        <th scope="col">Persentase</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="bg-success text-white">
                                        <td>Paslon 1</td>
                                        <td>70</td>
                                        <td>70%</td>
                                    </tr>
                                    <tr>
                                        <td>Paslon 2</td>
                                        <td>30</td>
                                        <td>30%</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center">Hasil Partai</h5>
                            <div class="card">
                                <div class="row no-gutters">
                                    <div class="col-sm-4" style="background: #868e96;">
                                        <img width="70px" height="70x" src="<?php echo base_url('assets/photo/partai/pdip.jpeg') ?>" class="card-img-top h-100" alt="...">
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="card-body">
                                            <h5 class="card-title">Alice Liddel</h5>
                                            <p class="card-text">70 Suara / 70 %</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    function myFunction() {
        var x = document.getElementById("pilihan").value;
        if (x == '') {
            $("#bem").addClass("d-none");
            $("#dlm").addClass("d-none");
            $("#blm").addClass("d-none");
        }
        if (x == 'bem') {
            $("#bem").removeClass("d-none");
            $("#dlm").addClass("d-none");
            $("#blm").addClass("d-none");
        }
        if (x == 'dlm') {
            $("#dlm").removeClass("d-none");
            $("#bem").addClass("d-none");
            $("#blm").addClass("d-none");
        }
        if (x == 'blm') {
            $("#blm").removeClass("d-none");
            $("#bem").addClass("d-none");
            $("#dlm").addClass("d-none");
        }
    }
</script>