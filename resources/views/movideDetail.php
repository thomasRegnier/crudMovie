<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{csrf_token()}}">

    <title>Crud movies</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
</head>
<body>
<!--{{--@if (Route::has('login'))--}}-->
<!--{{--<div class="top-right links">--}}-->
<!--    {{--@auth--}}-->
<!--    {{--<a href="{{ url('/home') }}">Home</a>--}}-->
<!--    {{--@else--}}-->
<!--    {{--<a href="{{ route('login') }}">Login</a>--}}-->
<!---->
<!--    {{--@if (Route::has('register'))--}}-->
<!--    {{--<a href="{{ route('register') }}">Register</a>--}}-->
<!--    {{--@endif--}}-->
<!--    {{--@endauth--}}-->
<!--    {{--</div>--}}-->
<!--{{--@endif--}}-->

<div id="app">
    <example-component></example-component>
</div>
</body>
<script src="/js/app.js"></script>

</html>