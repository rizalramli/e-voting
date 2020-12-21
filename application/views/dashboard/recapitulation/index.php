<section class="section">
    <div class="section-header">
        <h1>Rekapitulasi</h1>
    </div>

    <div class="section-body">
        <div class="row">
            <?php foreach ($items as $item) : ?>
                <div class="col-md-4">
                    <div class="card card-hero">
                        <div class="card-header">
                            <div class="card-icon">
                                <i class="fas fa-poll"></i>
                            </div>
                            <h5>
                                <?php echo $item->name ?>
                            </h5>
                        </div>
                        <div class="card-body p-0">
                            <div class="tickets-list">
                                <div class="ticket-item">
                                    <a href="<?php echo base_url('recapitulation/' . $item->voting_id . '/show_recapitulation') ?>" class="ticket-item ticket-more">
                                        Lihat Hasil <i class="fas fa-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>