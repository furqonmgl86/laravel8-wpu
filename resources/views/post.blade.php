{{-- @dd($post); --}}
@extends('layouts/main')

@section('container')
<h1 class="text-center">Ini Halaman Single Post</h1>
<br>
<div class="container">
  <div class="row justify-content-center mb-3">
    <div class="col-md-8">
      <h1>{{$post->title}}</h1>
      <p>By <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/posts?category={{$post->category->slug}}">{{ $post->category->name}}</a> </p>
      <img src="https://source.unsplash.com/1200x400?{{$post->category->name}}" class="img-fluid" alt="{{$post->category->name}}">

      <article class="my-3 fs-5">
        {!!$post->body!!}
      </article>

      <br>
      <br>
      <a href="/posts">Kembali</a>
    </div>
  </div>
</div>
@endsection