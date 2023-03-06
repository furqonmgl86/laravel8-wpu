{{-- @dd($post); --}}
@extends('layouts/main')

@section('container')
<h1>Ini Halaman Single Post</h1>
<br>
<article>
  <h2>{{$post->title}}</h2>
  {{-- <h5>{{$post->author}}</h5> --}}
  {{-- <p>{{$post->body}}</p> --}}
  {{-- {{$post->body}} --}}

  <p>By Muhammad Furqon in <a href="/categories/{{$post->category->slug}}">{{ $post->category->name}}</a> </p>
  {!!$post->body!!}

</article>
<a href="/posts">Kembali</a>

@endsection