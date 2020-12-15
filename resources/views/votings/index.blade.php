@extends('layouts.app')
@section('content')
<section class="section">
    <div class="section-header">
        <h1>Acara</h1>
    </div>

    <div class="section-body">
        @include('votings.table')
    </div>
</section>
@endsection