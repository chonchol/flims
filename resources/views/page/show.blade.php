@extends('layout.master')
@push('css')
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="{{url('css/datatables.min.css')}}" rel="stylesheet" type="text/css" />
    <style>
        .portlet-body{
            margin-bottom: 100px;
            margin-top: 50px;
        }
    </style>
@endpush
@section('content')
<div class="container">
    <div class="row flim-table-top">
        <div class="col-md-12">
            <div class="portlet-body">
                <table class="table table-striped table-bordered table-hover table-header-fixed" id="sample_1">
                    <thead>
                        <tr class="">
                            <th> No. </th>
                            <th> Name </th>
                            <th> Description </th>
                            <th> Release Date </th>
                            <th> Rating </th>
                            <th> Ticket Price </th>
                            <th> Country </th>
                            <th> Action </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i=1; ?>
                        @foreach($flims as $flim)
                            <tr>
                                <td> {{ $i++ }} </td>
                                <td> {{ $flim->name }} </td>
                                <td> {{ $flim->description }} </td>
                                <td> {{ $flim->release_date }} </td>
                                <td> {{ $flim->rating }} </td>
                                <td> ${{ $flim->ticket_price }} </td>
                                <td> {{ $flim->country }} </td>
                                <td> <a href="{{url('flims/show/').'/'.$flim->name}}">View</a> </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
@push('js')
<script>
    $(document).ready(function() {
        $('#sample_1').DataTable();
    } );
</script>
<script src="{{url('js/datatables.min.js')}}"></script>

@endpush
