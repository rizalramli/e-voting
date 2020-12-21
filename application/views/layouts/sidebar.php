<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="index.html">E-Voting</a>
        </div>
        <ul class="sidebar-menu">
            <?php if ($this->session->userdata('role') == 'KPU' || $this->session->userdata('role') == 'Saksi') { ?>
                <li class="menu-header">Menu</li>
                <li class="<?php if ($this->uri->segment(1) == 'selection') {
                                echo 'active';
                            } ?>"><a class="nav-link" href="<?php echo base_url('selection') ?>"><i class="fas fa-box-open"></i> <span>Log Pemilihan</span></a></li>
            <?php } ?>
            <?php if ($this->session->userdata('role') == 'Admin') { ?>
                <li class="menu-header">Dashboard</li>
                <li class="<?php if ($this->uri->segment(1) == 'recapitulation') {
                                echo 'active';
                            } ?>"><a class="nav-link" href="<?php echo base_url('recapitulation') ?>"><i class="fas fa-poll"></i> <span>Rekapitulasi</span></a></li>
                <li class="menu-header">Master</li>
                <li class="<?php if ($this->uri->segment(1) == 'voting') {
                                echo 'active';
                            } ?>"><a class="nav-link" href="<?php echo base_url('voting') ?>"><i class="fas fa-calendar-alt"></i> <span>Data Acara</span></a></li>
                <li class="<?php if ($this->uri->segment(1) == 'party') {
                                echo 'active';
                            } ?>"><a class="nav-link" href="<?php echo base_url('party') ?>"><i class="fas fa-flag"></i> <span>Data Partai</span></a></li>
                <li class="<?php if ($this->uri->segment(1) == 'voter') {
                                echo 'active';
                            } ?>"><a class="nav-link" href="<?php echo base_url('voter') ?>"><i class="fas fa-users"></i> <span>Data Pemilih</span></a></li>
            <?php } ?>
        </ul>
    </aside>
</div>