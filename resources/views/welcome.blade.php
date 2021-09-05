@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="/banner/online-medicine-concept_160901-152.jpg" alt="1" class="img-fluid"
                     style="border: 1px solid #ccc;">
            </div>
            <div class="col-md-6">
                <h2>Создайте учетную запись и запишитесь на прием</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                    culpa qui officia deserunt mollit anim id est laborum.</p>
                <div class="mt-5"></div>
                <a href="{{url('/register')}}"> <button class="btn btn-success">Зарегистрироваться</button> </a>
                <a href="{{url('/login')}}"><button class="btn btn-secondary">Войти</button></a>
            </div>
        </div>
        <hr>
        <!--date picker component-->
<find-doctor>

</find-doctor>
    </div>
@endsection
