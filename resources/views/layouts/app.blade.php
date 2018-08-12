<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
        @include('inc.nav')
       <div id="app">
        
            <div class="container">
                    @include('inc.message')
                    @yield('content')
                </div>
                <div id="footer" class="text-center">
                    <p>Copyright &copy; Employee System 2018</p>
                </div>
    </div>

    <script type="text/javascript">
        function deleteUser(record)
        {
            axios.delete('api/emp/' + record).then(function(response){
                // Sifeel tu kufikiria so reload I'll just reload the page
                location.reload(true);
            }).catch(function(error){
                console.log(error);
            });
        }
    </script>
    
</body>
</html>
