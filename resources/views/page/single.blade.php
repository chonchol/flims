@extends('layout.master')
@push('css')
<style>
	img{
		height: 480px!important;
	}
	p, h3, h4{
		color: black;
	}
</style>
@endpush
@section('content')
<div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="card mt-4">
            <img class="card-img-top img-fluid" src="../../uploads/{{$singleFlim->photo}}" alt="">
            <div class="card-body">
              <h3 class="card-title">{{$singleFlim->name}}</h3>
              <h4>${{$singleFlim->ticket_price}}</h4>
              <p class="card-text">{{$singleFlim->description}}</p>
              <span class="text-warning">★ ★ ★ ★ ☆</span>
              {{$singleFlim->rating}} stars
            </div>
          </div>
          <div class="card card-outline-secondary my-4">
            <div class="card-header">
              Flim Reviews
            </div>
            <div class="card-body">
              @include('page.comment')
              <hr>
              <a href="#" class="btn btn-success">Leave a Comment</a>
            </div>
          </div>
        </div>
      </div>
    </div>
@endsection