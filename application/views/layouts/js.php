<!-- General JS Scripts -->
<script src="<?php echo base_url(); ?>assets/stisla/download_js/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="<?php echo base_url(); ?>assets/stisla/download_js/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="<?php echo base_url(); ?>assets/stisla/download_js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="<?php echo base_url(); ?>assets/stisla/download_js/jquery.nicescroll.min.js"></script>
<script src="<?php echo base_url(); ?>assets/stisla/download_js/moment.min.js"></script>
<script src="<?php echo base_url(); ?>assets/stisla/download_js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/stisla/download_js/dataTables.bootstrap4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/stisla/js/stisla.js"></script>

<!-- JS Libraies -->

<!-- Template JS File -->
<script src="<?php echo base_url(); ?>assets/stisla/js/scripts.js"></script>
<script src="<?php echo base_url(); ?>assets/stisla/js/custom.js"></script>
<script src="<?php echo base_url(); ?>assets/stisla/js/bootstrap-datetimepicker.min.js"></script>
<script>
    $('#dataTables').DataTable({
        ordering: false
    });
    $('.tanggal').datetimepicker({
        format: 'YYYY-MM-DD'
    });
    $('.waktu').datetimepicker({
        format: 'HH:mm'
    });
    $('.dataTables').DataTable({
        ordering: false
    });

    function goBack() {
        window.history.back();
    }
</script>