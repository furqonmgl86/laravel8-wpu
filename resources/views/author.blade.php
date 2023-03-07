{{-- @dd($posts) --}}

@extends('layouts/main')

@section('container')

<h1>Postingan yang ditulis oleh  <a href="">{{ $post_name }}</a></h1>
<span>User namenya adalah {{ $post_user }}</span>
<hr>
@foreach ($posts as $post)
    <article class="mb-5 border-bottom pb-4">
      <h2>
        {{-- <a href="/posts/{{$post["id"]}}">{{$post["title"]}}</a> --}}
        <a href="/posts/{{$post->slug}}" class="text-decoration-none">{{$post->title}}</a>
      </h2>
      <p>By <a href="/authors/{{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/categories/{{$post->category->slug}}" class="text-decoration-none">{{ $post->category->name}}</a> </p>
      {{-- <h5>By : {{$post["author"]}}</h5> --}}
      <p>{{$post->excerpt}}</p>
      <a href="/posts/{{$post->slug}}" class="text-decoration-none">Read More.....</a>
    </article>
@endforeach
@endsection

