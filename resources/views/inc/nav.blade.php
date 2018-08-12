
      <nav class="navbar navbar-expand-md navbar-dark bg-dark">
          <div class="container">
              <a class="navbar-brand" href="{{ url('/') }}">
                  {{ config('app.name', 'Laravel') }}
              </a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <!-- Left Side Of Navbar -->
                  <ul class="navbar-nav mr-auto">

                  </ul>

                  <ul class="navbar-nav mr-auto">
                      <li class="{{Request::is('/') ? 'active' : ''}}">
                        <a class="nav-link" href="/">Home</a>
                      </li>
                      <li class="{{Request::is('/create') ? 'active' : ''}}">
                        <a class="nav-link" href="emp/create">Create Employee</a>
                      </li>
                      {{-- <li class="{{Request::is('/show') ? 'active' : ''}}">
                        <a class = "nav-link" href="/emp/show">Show Employee</a>
                      </li> --}}
                   
                    </ul>


                  <!-- Right Side Of Navbar -->
                  <ul class="navbar-nav ml-auto">
                      <!-- Authentication Links -->
                      @guest
                          <li><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></li>
                          <li><a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a></li>
                      @else
                          <li class="nav-item dropdown">
                              <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    <img src="/uploads/avatars/{{ Auth::user()->avatar }}" style="width:30px; height:30px; position:absolute; top:10px; right:80px; border-radius:50%;">
                                  {{ Auth::user()->name }} <span class="caret"></span>
                              </a>

                              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class = "dropdown-item" href="/dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
                                    <a class="dropdown-item" href="{{url('/profile') }}"><i class="fa fa-btn fa-user"></i> Profile </a>
                                  <a class="dropdown-item" href="{{ route('logout') }}"
                                     onclick="event.preventDefault();
                                                   document.getElementById('logout-form').submit();">
                                      {{ __('Logout') }}
                                  </a>

                                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                      @csrf
                                  </form>
                              </div>
                          </li>
                      @endguest
                  </ul>
              </div>
          </div>
      </nav>
