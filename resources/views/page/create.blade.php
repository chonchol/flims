@extends('layout.master')
@push('css')
<style>
    .form_area{
        margin-bottom: 100px;
    }
    #FormControlSelect1{
        height: 36px!important;
    }
</style>
@endpush
@section('content')
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="form_area">

                        @include('common.errors')
                        <div class="flash-message">
                            @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                              @if(Session::has('alert-' . $msg))

                              <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
                              @endif
                            @endforeach
                          </div> <!-- end .flash-message -->


                            <form action="{{url('/flims/save')}}" method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                              <div class="form-group">
                                <label for="InputName">Name*</label>
                                <input type="text" class="form-control" id="InputName" name="name" placeholder="Enter name">
                              </div>
                              <div class="form-group">
                                <label for="InputDescription">Description*</label>
                                <textarea name="description" id="description" cols="59" rows="5"></textarea>
                              </div>
                              <div class="form-group">
                                <label for="InputDate">Realease Date*</label>
                                <input type="date" class="form-control" id="InputDate" name="release_date" placeholder="Realease date">
                              </div>
                                <div class="form-group">
                                    <label for="FormControlSelect1">Rating*</label>
                                    <select class="form-control" id="FormControlSelect1" name="rating" >
                                      <option>1</option>
                                      <option>2</option>
                                      <option>3</option>
                                      <option>4</option>
                                      <option>5</option>
                                    </select>
                                  </div>
                                 <div class="form-group">
                                    <label for="InputPrice">Ticket Price*</label>
                                    <input type="number" class="form-control" id="InputPrice" name="ticket_price" placeholder="Ticket Price">
                                </div>   
                                <div class="form-group">
                                    <label for="InputCountry">Country*</label>
                                    <input type="text" class="form-control" id="InputCountry" name="country" placeholder="Country">
                                </div>                 
                                  <div class="form-group">
                                    <label for="FormControlSelect2">Genre*</label>
                                    <select multiple class="form-control" id="FormControlSelect2" name="genre">
                                      <option>Action</option>
                                      <option>Adventure</option>
                                      <option>Comedy</option>
                                      <option>Crime</option>
                                      <option>Drama</option>
                                      <option>Fantasy</option>
                                      <option>Historical</option>
                                      <option>Horror</option>
                                      <option>Mystery</option>
                                      <option>Political</option>
                                      <option>Romance</option>
                                      <option>Science Fiction</option>
                                      <option>Thrillar</option>
                                      <option>Western</option>
                                    </select>
                                  </div>                
                                <div class="form-group">
                                    <label for="InputPhoto">Photo*</label>
                                    <input type="file" class="form-control" id="InputPhoto" name="photo" placeholder="Photo">
                                </div>                 
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                    </div>
                </div>
            </div>
        </div>
@endsection