{{-- @dd($post); --}}
@extends('layouts/main')

@section('container')
<h1>Ini Halaman Single Post</h1>
<article>
  <h2>{{$post["title"]}}</h2>
  <h5>{{$post["author"]}}</h5>
  <p>{{$post["body"]}}</p>
</article>
<a href="/blog">Kembali</a>

@endsection