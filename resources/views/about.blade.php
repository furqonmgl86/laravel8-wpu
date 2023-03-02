
@extends('layouts/main')

@section('container')
<h1>Halaman About</h1>
<h2>About Me</h2>
<p>{{ $name }}</p>
<p>{{$email}}</p>
<img src="img/{{$image}}" alt="frq">
@endsection