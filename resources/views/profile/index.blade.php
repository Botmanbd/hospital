@extends('layouts.app')

@section('content')
    <div class="container">
        @if(Session::has('message'))
            <div class="alert alert-success">{{Session::get('message')}}</div>
        @endif
        <div class="row">
            <div class="col-md-4">

                <div class="card">
                    <div class="card-header">Профиль пользователя</div>

                    <div class="card-body">
                        <p>ФИО: {{auth()->user()->name}}</p>
                        <p>Email: {{auth()->user()->email}}</p>
                        <p>Адрес: {{auth()->user()->address}}</p>
                        <p>Номер телефона: {{auth()->user()->phone_number}}</p>
                        <p>Пол: {{auth()->user()->gender}}</p>
                        <p>О себе: {{auth()->user()->description}}</p>
                    </div>
                </div>
            </div>

            <div class="col-md-5">
                <div class="card">
                    <div class="card-header">Обновить профиль</div>

                    <div class="card-body">
                        <form action="{{route('profile.store')}}" method="post">
                            @csrf
                            <div class="form-group">
                                <label>ФИО</label>
                                <input type="text" name="name"
                                       class="form-control @error('gender') is-invalid @enderror"
                                       value="{{auth()->user()->name}}">
                                @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{$message}}</strong>
                                </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>Адрес</label>
                                <input type="text" name="address" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Номер телефона</label>
                                <input type="text" name="phone_number" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Пол</label>
                                <select name="gender" class="form-control @error('gender') is-invalid @enderror">
                                    <option value="">Выберете пол</option>
                                    <option value="male" @if(auth()->user()->gender==='male')selected @endif >
                                        Мужской
                                    </option>
                                    <option value="female" @if(auth()->user()->gender==='female')selected @endif>
                                        Женский
                                    </option>
                                </select>
                                @error('gender')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{$message}}</strong>
                                </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>О себе:</label>
                                <textarea name="description"
                                          class="form-control">{{auth()->user()->description}}</textarea>
                            </div>

                            <div class="form-group">
                                <button class="btn btn-primary" type="submit">Обновить</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">Обновить изображение</div>
                    <form action="{{route('profile.pic')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="card-body">
                            @if(!auth()->user()->image)
                                <img src="/images/OlMCdj2JlrasdCvTMG6Or9gVNb2sYaXOS4sJ55VH.jpg" width="120">
                            @else
                                <img src="/profile/{{auth()->user()->image}}" width="120">
                            @endif
                            <br>
                            <input type="file" name="file" class="form-control" required>
                            <br>
                            @error('file')
                            <span class="invalid-feedback" role="alert">
                                    <strong>{{$message}}</strong>
                                </span>
                            @enderror
                            <button type="submit" class="btn btn-primary">Обновить</button>
                            <br>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
@endsection
