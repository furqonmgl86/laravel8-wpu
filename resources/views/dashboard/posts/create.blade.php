@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Create New Post</h1>
</div>

<div class="col-lg-8">
  <form method="post" action="/dashboard/posts" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
      <label for="title" class="form-label">Title</label>
      <input type="text" class="form-control @error('title') is-invalid  @enderror" id="title"   name="title"  autofocus value="{{ old('title')}}">
      @error('title')
          <div class="invalid-feedback">
            {{$message}}
          </div>
      @enderror
    </div>
    <div class="mb-3">
      <label for="slug" class="form-label">Slug</label>
      <input type="text" class="form-control disabled @error('slug') is-invalid  @enderror" id="slug"  name="slug"  readonly  value="{{ old('slug')}}">
      @error('slug')
      <div class="invalid-feedback">
        {{$message}}
      </div>
  @enderror
    </div>
    <div class="mb-3">
      <label for="category" class="form-label">Category</label>
      <select class="form-select" id="category" name="category_id" aria-label="Floating label select example">
        @foreach ($categories as $item)
        @if (old('category_id') == $item->id)
        <option value="{{$item->id}}" selected>{{$item->name}}</option>
        @else
        <option value="{{$item->id}}" >{{$item->name}}</option>
        @endif
        @endforeach
      </select>
    </div>
    <div class="mb-3">
      <label for="image"  class="form-label @error('image') is-invalid  @enderror">Post Image</label>
      <img class="img-preview img-fluid mb-3 col-sm-5">
      <input class="form-control" type="file" id="image" name="image" onchange="previewImage()" >
      @error('image')
      <div class="invalid-feedback">
        {{$message}}
      </div>
      @enderror
    </div>
    <div class="mb-3">
      <label for="body" class="form-label">Body</label>
     
      <input id="body" type="hidden" name="body" value="{{old('body')}}" >
      <trix-editor input="body"></trix-editor>
      @error('body')
      <p class="text-danger">{{$message}}</p>
      @enderror
      
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

  function previewImage(){
    const image = document.querySelector("#image");
    const imgPreview = document.querySelector(".img-preview");
    imgPreview.style.display = 'block';

    const oFReader = new FileReader();
    oFReader.readAsDataURL(image.files[0]);

    oFReader.onload = function(oFREvent){
      imgPreview.src = oFREvent.target.result;
    }
  }

</script>
@endsection