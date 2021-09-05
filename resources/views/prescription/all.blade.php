@extends('admin.layouts.master')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">

                    <div class="card-header" >
                        Прием ({{$patients->count()}})
                    </div>

                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Фото</th>
                                <th scope="col">Дата</th>
                                <th scope="col">Пользователь</th>
                                <th scope="col">Email</th>
                                <th scope="col">Телефон</th>
                                <th scope="col">Пол</th>
                                <th scope="col">Время</th>
                                <th scope="col">Врач</th>
                                <th scope="col">Статус</th>
                                <th scope="col">Рецепт</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse($patients as $key=>$patient)
                                <tr>
                                    <th scope="row">{{$key+1}}</th>
                                    <td><img src="/profile/{{$patient->user->image}}" width="80" style="border-radius: 50%;">
                                    </td>
                                    <td>

                                    </td>
                                    <td>{{$patient->user->name}}</td>
                                    <td>{{$patient->user->email}}</td>
                                    <td>{{$patient->user->phone_number}}</td>
                                    <td>{{$patient->user->gender}}</td>
                                    <td>{{$patient->time}}</td>
                                    <td>{{$patient->doctor->name}}</td>
                                    <td>
                                        @if($patient->status==1)
                                            Завершен
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{route('prescription.show',[$patient->user_id,$patient->date])}}" class="btn btn-secondary">Посмотреть рецепт</a>
                                    </td>
                                </tr>
                            @empty
                                <td>Записей не найдено!</td>
                            @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
