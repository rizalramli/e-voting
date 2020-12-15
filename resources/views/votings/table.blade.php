@include('layouts.datatables_css')
@include('layouts.datatables_js')

<div class="card">
    <div class="card-header">
        <a class="btn btn-primary" href="{{ route('votings.create') }}">Tambah</a>
    </div>
    <div class="card-body">
        <table width="100%" class="table table-sm table-striped" id="voting-table">
            <thead>
                <tr>
                    <th scope="col">Nama</th>
                    <th scope="col">Keterangan</th>
                    <th scope="col">Tanggal</th>
                    <th scope="col">Jam Mulai</th>
                    <th scope="col">Jam Selesai</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
        </table>
    </div>
</div>

<script>
    $('#voting-table').DataTable({
        processing: true,
        serverSide: true,
        ordering: false,
        ajax: "{{ route('votings.index') }}",
        columns: [{
                data: 'name',
                name: 'name'
            },
            {
                data: 'description',
                name: 'description'
            },
            {
                data: 'date',
                name: 'date'
            },
            {
                data: 'start',
                name: 'start'
            },
            {
                data: 'end',
                name: 'end'
            },
            {
                data: 'action',
                name: 'action'
            }
        ]
    });
</script>