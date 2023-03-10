@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Create New Post</h1>
</div>

<div class="col-lg-8">
  <form method="post" action="/dashboard/posts">
    @csrf
    <div class="mb-3">
      <label for="title" class="form-label">Title</label>
      <input type="text" class="form-control" id="title"  name="title">
    </div>
    <div class="mb-3">
      <label for="slug" class="form-label">Slug</label>
      <input type="text" class="form-control disabled " id="slug"  name="slug"  readonly>
    </div>
    <div class="mb-3">
      <label for="category" class="form-label">Category</label>
      <select class="form-select" id="category" name="category_id" aria-label="Floating label select example">
        @foreach ($categories as $item)
        <option value="{{$item->id}}">{{$item->name}}</option>
        @endforeach
      </select>
    </div>
    <div class="mb-3">
      <label for="body" class="form-label">Category</label>
      <input id="body" type="hidden" name="body">
      <trix-editor input="body"></trix-editor>
      
    </div>
   <button type="submit" class="btn btn-primary">Create Post</button>
  </form>
</div>

<script>
  const title = document.querySelector("#title")
  const slug = document.querySelector("#slug")
  
  title.addEventListener('change', function(){
    fetch('/dashboard/posts/checkSlug?title=' + title.value)
    .then(response => response.json())
    .then(data => slug.value = data.slug)
  });


  // Untul yang trix
  document.addEventListener('trix-file-accept', function(e){
    e.preventDefault()
  })
</script>
@endsection