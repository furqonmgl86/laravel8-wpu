<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/bootstrap.css">
  <link rel="stylesheet" href="/css/bootstrap.css.map">
  {{-- <link rel="stylesheet" href="/css/style.css"> --}}
  <title>WPU BLOG || {{$title}}</title>
  {{-- Bootsrap Icon --}}
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

  {{-- My STYLE --}}
  <link rel="stylesheet" href="/css/style.css">
</head>
<body>
 @include('partials.navbar')

  <div class="container mt-4">
    @yield('container')
  </div>

  {{-- <script src="/js/bootstrap.js"></script>
  <script src="/js/script.js"></script> --}}
  
  

  {{-- <script src="{{url('js/script.js')}}"></script>
  <script src="{{url('js/bootstrap.js')}}"></script>
  <script src="{{url('js/bootstrap.js.map')}}"></script> --}}
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
