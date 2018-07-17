<form action="{{url('/flims/comment/save')}}" method="post" enctype="multipart/form-data">
    {{ csrf_field() }}
  <div class="form-group">
    <label for="InputName">Name*</label>
    <input type="text" class="form-control" id="InputName" name="name" placeholder="Enter name">
  </div>
  <div class="form-group">
    <label for="InputComment">Comment*</label>
    <textarea name="comment" id="comment" cols="133" rows="5"></textarea>
  </div>                                               
  <button type="submit" class="btn btn-success">Leave a Comment</button>
</form>