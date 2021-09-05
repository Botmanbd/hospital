@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Your appointments ({{$appointments->count()}})</div>

                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Врач</th>
                                <th scope="col">Время</th>
                                <th scope="col">Время на</th>
                                <th scope="col">Дата записи</th>
                                <th scope="col">Статус</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse($appointments as $key=>$appointment)
                            <tr>
                                <th scope="row">{{$key+1}}</th>
                                <td>{{$appointment->doctor->name}}</td>
                                <td>{{$appointment->time}}</td>
                                <td>{{$appointment->date}}</td>
                                <td>{{$appointment->created_at}}</td>
                                <td>
                                    @if($appointment->status==0)
                                       <button class="btn btn-primary">Не были на приеме</button>
                                    @else
                                        <button class="btn btn-primary">Завершено</button>
                                    @endif
                                </td>
                            </tr>
                            @empty
                            <td>У вас нет записей</td>
                            @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
