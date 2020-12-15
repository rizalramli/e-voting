@extends('layouts.app')
@section('content')
<section class="section">
    <div class="section-header">
        <h1>Tambah Acara</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-body">
                {!! Form::open(['route' => 'votings.store']) !!}
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            {!! Form::label('name', 'Nama') !!}
                            {!! Form::text('name', null, ['class' => 'form-control form-control-sm']) !!}
                            @error('name')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            {!! Form::label('description', 'Keterangan') !!}
                            {!! Form::text('description', null, ['class' => 'form-control form-control-sm']) !!}
                            @error('description')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            {!! Form::label('date', 'Tanggal') !!}
                            {!! Form::text('date', null, ['class' => 'form-control form-control-sm']) !!}
                            @error('date')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            {!! Form::label('start', 'Jam Mulai') !!}
                            {!! Form::text('start', null, ['class' => 'form-control form-control-sm']) !!}
                            @error('start')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            {!! Form::label('end', 'Jam Selesai') !!}
                            {!! Form::text('end', null, ['class' => 'form-control form-control-sm']) !!}
                            @error('end')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
                            <a href="{{ route('votings.index') }}" class="btn btn-default">Batal</a>
                        </div>
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</section>
<script>
    $('#date').datetimepicker({
        format: 'YYYY-MM-DD'
    });
    $('#start').datetimepicker({
        format: 'HH:mm'
    });
    $('#end').datetimepicker({
        format: 'HH:mm'
    });
</script>
@endsection