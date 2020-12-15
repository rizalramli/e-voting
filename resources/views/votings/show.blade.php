@extends('layouts.app')
@section('content')
<section class="section">
    <div class="section-header">
        <h1>Detail Acara</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <h4>Detail Acara</h4>
                <div class="card-header-action">
                    <a href="#" class="btn btn-warning">Edit</a>
                    <a href="{{ route('votings.index') }}" class="btn btn-danger">Kembali</a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h6>Nama</h6>
                        {{ $voting->name }}
                    </div>
                    <div class="col">
                        <h6>Keterangan</h6>
                        {{ $voting->description }}
                    </div>
                    <div class="col">
                        <h6>Tanggal</h6>
                        {{ $voting->date }}
                    </div>
                    <div class="col">
                        <h6>Jam Mulai</h6>
                        {{ $voting->start }}
                    </div>
                    <div class="col">
                        <h6>Jam Selesai</h6>
                        {{ $voting->end }}
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h4>Kandidat</h4>
                <div class="card-header-action">
                    <a class="btn btn-primary" href="#">Tambah</a>
                    <a data-collapse="#mycard-collapse" class="btn btn-icon btn-info" href="#">Show</a>
                </div>
            </div>
            <div class="collapse hidden" id="mycard-collapse">
                <div class="card-body">
                    You can show or hide this card.
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h4>Pemilih</h4>
                <div class="card-header-action">
                    <a class="btn btn-primary" href="#">Tambah</a>
                    <a data-collapse="#mycard-collapse2" class="btn btn-icon btn-info" href="#">Show</a>
                </div>
            </div>
            <div class="collapse hidden" id="mycard-collapse2">
                <div class="card-body">
                    You can show or hide this card.
                </div>
            </div>
        </div>
    </div>
</section>
@endsection